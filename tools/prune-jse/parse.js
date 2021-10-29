let path = require('path');
let fs = require('fs');
let { spawn } = require('child_process');
let fsPromise = require('fs').promises;
let inheritence = require('../../metadata/inheritence.json');

let jsePath = path.join(__dirname, '../../modules');
// let libPath = path.join(__dirname, '../../framework/Sources/vuekit/*.swift');
let libPath2 = path.join(__dirname, '../../framework/Sources/vuekit/**/*.swift');

let allFixes = {};

function getFixes(file) {
  return allFixes[file];
}

function clearFixes(file) {
  delete allFixes[file];
}

function parseRequirementLine(reqLine) {
  let reqLineParts = reqLine.split('requirement specified as ');
  let reqParts = reqLineParts[1].match(/'(\w+)' : '(\w+)' \[with (\w+) = (\w+)\]/);
  let oldType = reqParts[4];
  let newType = reqParts[2];
  return { oldType, newType };
}

function parseVarLine(varLine) {
  let lineParts = varLine.split('var ');
  let varParts = lineParts[1].split(':');
  let key = varParts[0];
  let lineEnd = lineParts[1];

  return { key, lineEnd };
}

function parseFuncLine(funcLine) {
  let lineParts = funcLine.split('func ');
  let lineEnd = lineParts[1];
  let fnParts = lineEnd.match(/([\w>.`<?,@\s=:]+)\(((.*( .*)?:\s.*)*)\)( -> ([\w>.`<?,@\s=:]+))?/);
  let argsLine;

  try {
    // eslint-disable-next-line prefer-destructuring
    argsLine = fnParts[2];
  } catch (error) {
    console.log(funcLine);
  }

  let argParts = argsLine.split(': ').map((a) => {
    let aParts = a.split(', ');
    let aPart = aParts[0];
    if (aPart.startsWith('(')) {
      let nextAPart = aParts[1] || '';
      return [aPart + nextAPart];
    }
    return aParts;
  }).flat();

  let args = [];

  for (let idx = 0; idx < argParts.length - 1; idx += 2) {
    let thisArgPart = argParts[idx];
    let nextArgPart = argParts[idx + 1];

    if (!thisArgPart || !nextArgPart) {
      continue;
    }

    if (nextArgPart.startsWith('[')) {
      if (!nextArgPart.endsWith(' ')) {
        nextArgPart += ' ';
      }

      nextArgPart += argParts[idx + 2];

      idx += 1;
    }
    let numLeftParens = nextArgPart.split('(').length;
    let numRightParens = nextArgPart.split(')').length;
    let j = 1;

    while (numRightParens < numLeftParens) {
      let nag = argParts[idx + 2 + j];
      j += 1;
      idx += j;
      if (nag) {
        nextArgPart += nag;
        numLeftParens += nag.split('(').length;
        numRightParens += nag.split(')').length;
      } else {
        break;
      }
    }
    args.push([thisArgPart, nextArgPart]);
  }

  let fnName = fnParts[1];
  let argsKey = args.map(ap => ap[0].split(' ')[0].replace(/`/g, '')).join('__');
  let returnType = fnParts[6] || '';
  let key = `${fnName}++${argsKey}++${returnType}`;

  lineEnd = lineEnd.replace(/ = nil/g, '').replace(/ = .*?([),])/g, '$1').trim();

  return { key, lineEnd };
}

function parseFixes({ lines, file }) {
  if (!allFixes[file]) {
    allFixes[file] = {
      nonMatching: {},
      requirementSpec: {},
      protoRequiredFn: {},
      unavailableProp: {}
    };
  }

  for (let idx = 0; idx < lines.length; idx++) {
    let line = lines[idx];
    let hasNonMatchingType = line.includes('candidate has non-matching type');
    let requirementSpec = line.includes('requirement specified as');
    let protoRequiredFn = line.includes('protocol requires function');
    let unavailableProp = line.includes('unavailable property');
    let nextLine = lines[idx + 1];
    let nextNextLine = lines[idx + 2];
    let isFunc = nextLine && nextLine.includes(' func ');
    let isVar = nextLine && nextLine.includes(' var ');

    if (!isFunc && !isVar && !unavailableProp) { continue; }
    if (isFunc && nextLine.endsWith('{')) { continue; }

    if (hasNonMatchingType) {
      if (isFunc) {
        if (nextNextLine && !nextNextLine.includes('^')) { nextLine += nextNextLine; }

        let { key, lineEnd } = parseFuncLine(nextLine);
        allFixes[file].nonMatching[key] = lineEnd;
      } else if (isVar) {
        let { key, lineEnd } = parseVarLine(nextLine);
        allFixes[file].nonMatching[key] = lineEnd;
      }
    } else if (requirementSpec) {
      if (isFunc) {
        let { key, lineEnd } = parseFuncLine(nextLine);
        allFixes[file].requirementSpec[key] = lineEnd;
      } else if (isVar) {
        let { oldType, newType } = parseRequirementLine(line);
        let { key } = parseVarLine(nextLine);
        let newVarLine = nextLine.replace(`<${oldType}>`, `<${newType}>`).trim();
        allFixes[file].requirementSpec[key] = newVarLine;
      }
    } else if (protoRequiredFn) {
      if (isFunc) {
        if (nextNextLine && !nextNextLine.includes('^')) { nextLine += nextNextLine; }
        let { key } = parseFuncLine(nextLine);
        allFixes[file].protoRequiredFn[key] = true;
      }
    } else if (unavailableProp) {
      let key = line.split('unavailable property')[1].split('\'')[1];
      allFixes[file].unavailableProp[key] = true;
    }
  }
}

function applyFixes(file, originalLines, applyComments) {
  let newFileContents = '';

  for (let originalLine of originalLines) {
    let lineToWrite = '';
    let isFunc = originalLine && originalLine.includes(' func ');
    let isVar = originalLine && originalLine.includes(' var ');
    let keyword = isFunc ? 'func' : 'var';
    let [lineStart] = originalLine.split(keyword);
    let lookupKey;
    let parsed;

    if (isFunc) {
      parsed = parseFuncLine(originalLine);
    } else if (isVar) {
      parsed = parseVarLine(originalLine);
    }

    if (parsed) {
      lookupKey = parsed.key;

      let startOfLine = `\t${lineStart.trim()}`;

      for (let fixType of ['nonMatching', 'requirementSpec']) {
        let endOfLineFixed = allFixes[file][fixType][lookupKey];
        if (endOfLineFixed) {
          lineToWrite = `${startOfLine} ${keyword} ${endOfLineFixed}`;
          delete allFixes[file][fixType][lookupKey];
        }
      }
    }

    if (applyComments) {
      for (let fixType of ['protoRequiredFn', 'unavailableProp']) {
        let shouldComment = allFixes[file][fixType][lookupKey];
        if (shouldComment) {
          lineToWrite = `// ${originalLine}`;
          delete allFixes[file][fixType][lookupKey];
        }
      }
    }

    if (!lineToWrite) {
      newFileContents += `${originalLine}\n`;
    } else {
      newFileContents += `\t${lineToWrite.replace(/^\s*/, '')}\n`;
    }
  }

  return newFileContents;
}

function runTypecheck({ framework, file }, cb) {
  let filePath = path.join(jsePath, framework, file);
  let cmd = [
    '-continue-building-after-errors',
    '-typecheck',
    '-suppress-warnings',
    // libPath,
    libPath2
  ];

  let className = file.replace('.swift', '');
  let inh = [filePath];

  while (inheritence[className]) {
    if (inheritence[className] && !['NSObject'].includes(inheritence[className])) {
      // TODO: add module names to inheritence.json so we don't have to do this
      if (inheritence[className].startsWith('NS')) {
        let iPath = path.join(jsePath, 'AppKit', `${inheritence[className]}.swift`);
        if (fs.existsSync(iPath)) inh.unshift(iPath);
        let iPath2 = path.join(jsePath, 'Foundation', `${inheritence[className]}.swift`);
        if (fs.existsSync(iPath2)) inh.unshift(iPath2);
      } else {
        let iPath = path.join(jsePath, framework, `${inheritence[className]}.swift`);
        if (fs.existsSync(iPath)) inh.unshift(iPath);
      }
    }

    className = inheritence[className];
  }

  cmd = cmd.concat(inh);

  if (process.argv.length === 3) {
    console.log('swiftc', ...cmd);
  }

  let swift = spawn('swiftc', cmd, { shell: true });
  let lines = [];

  swift.stderr.on('data', (data) => {
    lines = lines.concat(data.toString().split('\n').filter(l => l));
  });

  swift.on('close', () => cb(null, {
    file, framework, lines, filePath
  }));
}

async function fixFile({ filePath, file }, applyComments) {
  let fileHandle = await fsPromise.readFile(filePath, { encoding: 'utf-8' });
  let newFileContents = `${applyFixes(file, fileHandle.split('\n'), applyComments).trim()}\n`;
  await fsPromise.writeFile(filePath, newFileContents);
}

module.exports = {
  fixFile,
  parseFixes,
  runTypecheck,
  getFixes,
  clearFixes
};
