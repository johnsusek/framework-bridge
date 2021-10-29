let fs = require('fs');
let path = require('path');
let jsonata = require('jsonata');

let args = process.argv.slice(2);

if (args.length < 3) {
  console.log('createAttributeLookuptable <frameworks JSON> <ast path> <attr out path>');
  process.exit(1);
}

let frameworksPath = args[0];
let astPath = args[1];
let outPath = args[2];
let lastNamespace = '';

if (!fs.existsSync(frameworksPath)) {
  console.log(frameworksPath + ' does not exist.');
  process.exit(1);
}

let frameworks = JSON.parse(fs.readFileSync(frameworksPath));
let vlist = {};
let structs = {};
let globalStructs = {};
let goodStructs = {};
let typeAliases = {};

let values;
let moduleName;
let className;
let enumName;
let enumType;

function doAddStruct(type, framework) {
  let kIdx = type.children.findIndex(c => c.text === 'struct');
  containerName = type.children[kIdx + 1]?.text;

  let isTypeInheritenceClause = type.children[kIdx + 2]?.text == "TypeInheritanceClause";

  if (!isTypeInheritenceClause) {
    lastNamespace = containerName;
    return;
  }

  let memberDeclBlock = type.children.find(c => c.text === 'MemberDeclBlock')
  let memberDeclList = memberDeclBlock.children.find(c => c.text === 'MemberDeclList')
  let memberDeclListItems = memberDeclList.children.map(c => c.children[0])

  function doNextStruct() {
    if (className && enumName) {
      // New struct, set the one we've been building...
      if (!moduleName) moduleName = "_global";
      if (!goodStructs[moduleName]) goodStructs[moduleName] = {};
      if (!goodStructs[moduleName][className]) goodStructs[moduleName][className] = {};
      goodStructs[moduleName][className][enumName] = { values, type: enumType };

      // console.log('Resetting after ', className, enumName);

      // ...and then reset for the next one
      values = null;
      moduleName = '';
      className = '';
      enumName = '';
      enumType = {};
    }
  }

  for (const decl of memberDeclListItems) {
    switch (decl.text) {
      case "InitializerDecl":
        doNextStruct();
        break;
      case "VariableDecl":
        let patternBindingList = decl.children.find(c => c.text === "PatternBindingList");
        let id = jsonata(`**[text="IdentifierPattern"]`).evaluate(patternBindingList.children);
        let name = id?.children?.[0].text

        let attributeList = decl.children.find(c => c.text === "AttributeList");

        if (attributeList) {
          let attrs = buildFromAttributeListParent(decl);

          if (attrs) {
            if (attrs.obsoleted || attrs.unavailable) {
              // console.log(`Skipping obsolete/unavailable var ${name} in class: ${className}, enum: ${enumName}`);
              break;
            }
          }

        }

        if (!name) {
          // console.log('Could not find name to push!', flatString(decl));
          break;
        }

        if (!values) values = [];

        if (!name.startsWith('_') && name !== "rawValue") {
          // console.log('Pushing value for ', name, className, enumName);
          let cleanName = name.replace(/`/g, '');
          // let escape = ["delete"];
          // if (escape.includes(cleanName)) {
          //   cleanName = "`" + cleanName + "`";
          // }
          if (!values.includes(cleanName)) {
            values.push(cleanName);
          }
        }

        break;
      case "TypealiasDecl":
        let simpleTypeIdentifier = jsonata("**[text='SimpleTypeIdentifier'].children").evaluate(decl.children).map(c => c.text);
        let memberTypeIdentifiers = jsonata("**[text='MemberTypeIdentifier']").evaluate(decl.children);

        if (decl.children[1].text === "RawValue") {
          let simpleType = memberTypeIdentifiers.children.find(c => c.text !== '.' && c.text !== 'SimpleTypeIdentifier');
          if (simpleType.text == "String") {
            enumType = "string";
          }
          else {
            enumType = "number";
          }
        }

        if (decl.children[1].text !== "Element") break;

        moduleName = simpleTypeIdentifier[0];

        if (memberTypeIdentifiers?.length) {
          let memberTypeIdentifier = memberTypeIdentifiers.map(c => c.children[2].text);
          enumName = memberTypeIdentifier[0];
          className = memberTypeIdentifier[1];
        }
        else if (memberTypeIdentifiers?.children?.length) {
          let simpleTypeIdentifier2 = memberTypeIdentifiers.children[2].text;
          enumName = simpleTypeIdentifier2;
          className = "_global"
        }
        else {
          enumName = "unknown";
          className = "_global (" + simpleTypeIdentifier + ")";
        }

        break;
      case "FunctionDecl":
        break;
      case "StructDecl":
        doAddStruct(decl, framework);
        break;
      default:
        break;
    }
  }
  if (lastNamespace) {
    if (!structs[lastNamespace]) structs[lastNamespace] = {};
    structs[lastNamespace][containerName] = type;
  }
  else {
    globalStructs[containerName] = type;
  }

  lastNamespace = '';
}

function doAddContainer(containerType, type, framework) {
  let containerName = type.children.find(v => v.text === 'SimpleTypeIdentifier')?.children[0].text;

  if (!containerName) {
    let typeParts = jsonata("**[text]").evaluate(type?.children.find(v => v.text === 'MemberTypeIdentifier')?.children);
    if (typeParts && typeParts.length) {
      containerName = typeParts.reduce((acc, curr) => {
        if (!curr.text) return acc;
        if (curr.text === "SimpleTypeIdentifier") return acc;
        acc += curr.text;
        return acc;
      }, "");
    }
  }

  if (!containerName) {
    let kIdx = type.children.findIndex(c => c.text === containerType);
    containerName = type.children[kIdx + 1]?.text;
  }

  if (!containerName) {
    // console.log("Skipping, could not find container name.");
    return;
  }

  let memberDeclBlock = type.children.find(v => v.text === 'MemberDeclBlock');
  let memberDeclListItems = memberDeclBlock.children.find(v => v.text === 'MemberDeclList').children
  let declTypes = memberDeclListItems?.map(c => c.children)?.map(c => c[0]);

  if (!declTypes || !declTypes.length) {
    return;
  }

  for (let declType of declTypes) {
    decideAdd(declType, containerName, framework);
  }
}

function textFromAv(availabilityText, availabilityArgument) {
  let text;
  let addl = "";

  switch (availabilityText.text) {
    case "OSX":
      if (availabilityArgument.text === "AvailabilityVersionRestriction") {
        text = "available";
      }
      break;
    case "unavailable":
      text = availabilityText.text;
      break;
    case "introduced":
    case "renamed":
    case "deprecated":
    case "obsoleted":
    case "message":
      text = availabilityText.text;
      break;
    case "VersionTuple":
      addl = availabilityText.children.map(c => c.text).join('');
      break;
    case ":":
      break;
    default:
      if (text == "renamed") {
        if (availabilityText.text) {
          addl += availabilityText.text.substring(1, availabilityText.text.length - 1);
        }
      }
      else {
        if (availabilityText.text) addl += availabilityText.text.replace(/(^"|"$)/g, '');
      }
      break;
  }

  return { text, addl };
}

function buildFromAttributeListParent(type) {
  let outerAttrs = type.children.find(v => v.text === 'AttributeList')?.children;

  if (!outerAttrs) return;

  let attributesDraft = {};

  for (let outerAttr of outerAttrs) {
    for (let outerAttrChild of outerAttr.children) {
      if (outerAttrChild["text"] === "AvailabilitySpecList") {
        for (let availabilitySpecs of outerAttrChild["children"]) {
          if (availabilitySpecs["text"] === "AvailabilityArgument") {
            for (let availabilityArgument of availabilitySpecs["children"]) {
              if (!availabilityArgument.children) {
                if (availabilityArgument.text) {
                  let { text, addl } = textFromAv(availabilityArgument, availabilityArgument);
                  if (text) {
                    attributesDraft[text] = addl || true;
                  }
                }
              }
              else {
                let text;
                let addl = "";
                for (let availabilityText of availabilityArgument["children"]) {
                  switch (availabilityText.text) {
                    case "OSX":
                      if (availabilityArgument.text === "AvailabilityVersionRestriction") {
                        text = "available";
                      }
                      break;
                    case "unavailable":
                      text = availabilityText.text;
                      break;
                    case "introduced":
                    case "renamed":
                    case "deprecated":
                    case "obsoleted":
                    case "message":
                      text = availabilityText.text;
                      break;
                    case "VersionTuple":
                      addl = availabilityText.children.map(c => c.text).join('');
                      break;
                    case ":":
                      break;
                    default:
                      if (text == "renamed") {
                        if (availabilityText.text) {
                          addl += availabilityText.text.substring(1, availabilityText.text.length - 1);
                        }
                      }
                      else {
                        if (availabilityText.text) addl += availabilityText.text.replace(/(^"|"$)/g, '');
                      }
                      break;
                  }
                }
                if (text) {
                  // TODO append if message
                  attributesDraft[text] = addl || true;
                }
              }
            }
          }
        }
      }
    }
  }

  return attributesDraft;
}

function addToVlist(framework, name, prefix, attributesDraft) {
  if (!attributesDraft) {
    return;
  }

  if (Object.keys(attributesDraft).length === 0) return;

  let key = name;

  if (prefix) key = prefix + "." + name;
  if (!vlist[framework]) vlist[framework] = {};

  vlist[framework][key] = attributesDraft;
}

function nameFromType(type, isFunc) {
  let id = jsonata(`**[text="IdentifierPattern"]`).evaluate(type);
  let name = id?.children?.[0].text

  if (!name) {
    let kIdx = type.children.findIndex(c => c.text === 'func');
    name = type.children[kIdx + 1]?.text;
  }

  if (isFunc) {
    let functionParams = jsonata(`**[text="FunctionParameterList"]`).evaluate(type);

    if (functionParams?.children) {
      let children = functionParams?.children.filter(c => c.children[0].text !== "_").map(c => c.children[0].text);
      name += ":" + children.join(':');
      if (children.length > 0) {
        name += ":";
      }
    }
  }

  return name;
}

function decideAdd(type, prefix, framework) {
  switch (type.text) {
    case "ClassDecl":
      doAddContainer('class', type, framework);
      break;
    case "ProtocolDecl":
      doAddContainer('protocol', type, framework);
      break;
    case "ExtensionDecl":
      doAddContainer('extension', type, framework);
      break;
    case "ImportDecl":
    case "SubscriptDecl":
    case "SequenceExpr":
      break;
    case "StructDecl":
      doAddStruct(type, framework);
    case "TypealiasDecl":
      if (type.children[0].text != 'typealias') break;

      let name = type.children[1].text;

      if (name.startsWith('_')) break;

      let typeInit = type.children.find(c => c.text === "TypeInitializerClause");
      let memberType = typeInit.children.find(c => c.text === "MemberTypeIdentifier");

      if (!typeAliases[prefix]) typeAliases[prefix] = {};

      if (memberType) {
        let memberTypeInner = memberType.children.find(c => c.text === "MemberTypeIdentifier") || memberType;
        let simpleTypeInnerIdx = memberTypeInner.children.findIndex(c => c.text === ".");
        let simpleTypeInner = memberTypeInner.children[simpleTypeInnerIdx + 1];

        typeAliases[prefix][name] = simpleTypeInner.text;
      }
      else {
        let name = type.children[1].text;
        let alias = type.children[2].children[1];
        if (alias) {
          typeAliases[prefix][name] = flatString(alias)
            .replace(/ \. /g, '.')
            .replace(/ , /g, ', ')
            .replace(/ \?/g, '?');
        }
      }
      break;
    case "InitializerDecl":
      break;
    case "UnknownDecl": {
      addToVlist(framework, nameFromType(type), prefix, buildFromAttributeListParent(type));
      break;
    }
    case "VariableDecl":
    case "FunctionDecl":
      addToVlist(framework, nameFromType(type, true), prefix, buildFromAttributeListParent(type));
      break;
    case "UnknownExpr":
    case "EnumDecl":
    default:
      break;
  }
}

for (let framework of Object.keys(frameworks)) {
  let swiftSyntaxFile = path.join(astPath, `${framework}+SwiftSyntax.json`);

  if (!fs.existsSync(swiftSyntaxFile)) {
    console.log(swiftSyntaxFile + ' does not exist.');
    continue;
  }

  let swiftSyntaxContext = fs.readFileSync(swiftSyntaxFile);
  let swiftSyntax = JSON.parse(swiftSyntaxContext);

  for (let codeBlockItem of swiftSyntax[0].children[0].children) {
    let type = codeBlockItem.children[0];
    if (!type) continue;
    decideAdd(type, null, framework);
  }

  if (vlist[framework]) {
    let yamlFilename = `${framework}-AttributeList.yaml`
    fs.writeFileSync(outPath + "/" + yamlFilename, JSON.stringify(vlist[framework], null, 2));
    console.log('Wrote', yamlFilename)
  }
}

if (!fs.existsSync(outPath)) {
  fs.mkdirSync(outPath);
}

fs.writeFileSync(outPath + "/../structs.json", JSON.stringify(goodStructs, null, 2));
console.log('Wrote', outPath + "/../structs.json")
fs.writeFileSync(outPath + "/../aliases.json", JSON.stringify(typeAliases, null, 2));
console.log('Wrote', outPath + "/../aliases.json")


function flatString(nodeWithChildren) {
  return jsonata("**[text]").evaluate(nodeWithChildren).filter(t => !t.children).map(t => t.text).join(' ');
}