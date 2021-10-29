let os = require('os');
let fs = require('fs');
let path = require('path');
let cq = require('concurrent-queue');
let {
  runTypecheck, parseFixes, fixFile, getFixes, clearFixes
} = require('./parse');

let args = process.argv.slice(2);
let fileName = args[0];
let jsePath = path.join(__dirname, '../../modules');
let queue = cq().limit({ concurrency: os.cpus().length - 1 }).process(runTypecheck);
let frameworks = fs.readdirSync(jsePath).filter((framework) => {
  let frameworkPath = path.join(jsePath, framework);
  let stat = fs.lstatSync(frameworkPath);
  return stat.isDirectory();
});

let fixesLeft = file => Object.values(getFixes(file)).map(c => Object.keys(c)).flat();

let processFile = (file, requeue) => async (__, res) => {
  parseFixes(res);
  await fixFile(res);

  let msg;
  let hasFixesLeft = fixesLeft(file).length;

  if (hasFixesLeft) {
    msg = `⚠️  ${file}, ${hasFixesLeft} unfixed.`;
  } else {
    msg = `☑️  ${file}`;
  }

  if (hasFixesLeft) {
    if (requeue) msg += ' (first run)';
    else msg += ' (second run)';
  }

  console.log(msg);

  clearFixes(file);

  if (requeue && hasFixesLeft) {
    queue(res, processFile(file, false));
  }
};

for (let framework of frameworks) {
  let frameworkPath = path.join(jsePath, framework);
  let files = fs.readdirSync(frameworkPath);

  for (let file of files) {
    if (!file.endsWith('.swift')) continue;
    let filePath = path.join(jsePath, framework, file);
    if (fileName && !filePath.includes(fileName)) continue;
    let fstat = fs.lstatSync(filePath);
    if (!fstat.isFile()) continue;

    queue({ framework, file }, processFile(file, true));
  }
}
