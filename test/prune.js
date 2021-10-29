let classesToTest = require('./classesToTest.json');

const swiftPath = `${__dirname}/../modules`;
const destPath = `${__dirname}/../testapp/src`;

for (const [framework, classNames] of Object.entries(classesToTest)) {
  if (!fs.existsSync(`${destPath}/${framework}`)) {
    fs.mkdirSync(`${destPath}/${framework}`);
  }

  for (const className of classNames) {
    fs.copyFileSync(`${swiftPath}/${framework}/${className}.swift`, `${destPath}/${framework}/${className}.swift`)
  }
}
