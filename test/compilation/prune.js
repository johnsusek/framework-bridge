let fs = require('fs');
let classesToRegister = require('./classesToRegister.js');

const swiftPath = `${__dirname}/../../tmp/swift`;
const destPath = `${__dirname}/../registration/src`;

for (const [framework, classNames] of Object.entries(classesToRegister)) {
  if (!fs.existsSync(`${destPath}/${framework}`)) {
    fs.mkdirSync(`${destPath}/${framework}`);
  }

  for (const className of classNames) {
    fs.copyFileSync(`${swiftPath}/${framework}/${className}.swift`, `${destPath}/${framework}/${className}.swift`)
  }
}
