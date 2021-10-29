#!/usr/bin/env node

let { spawn } = require('child_process');
let fs = require('fs');
let fsPromise = require('fs').promises;
let path = require('path');
let cq = require('concurrent-queue');
let cores = require('os').cpus().length;
let inheritence = require('../../metadata/inheritence.json');

let rpath = path.join(__dirname, '../../tmp');
let bridgePath = path.join(__dirname, '../../framework/Sources/vuekit');
let jsePath = path.join(rpath, 'swift');
let dstPath = path.join(bridgePath, '../../modules');
if (!fs.existsSync(dstPath)) fs.mkdirSync(dstPath);

let args = process.argv.slice(2);
let fileName = args[0];

function run(framework, file, cb) {
  let bridgeFiles = path.join(bridgePath, '/*.swift');
  let bridgeFiles2 = path.join(bridgePath, '/**/*.swift');
  let filePath = path.join(jsePath, framework, file);
  let cmd = ['"import Quartz\nimport AVFoundation"', '|', 'cat', '-'];

  cmd.push(bridgeFiles);
  cmd.push(bridgeFiles2);

  let protoFiles = path.join(jsePath, framework, '/protocols/*.swift');

  cmd.push(protoFiles);

  let inh = [filePath];

  let className = file.replace('.swift', '');

  while (inheritence[className]) {
    if (inheritence[className] && inheritence[className] !== 'NSObject') {
      // TODO: add module names to inheritence.json so we don't have to do this
      if (inheritence[className].startsWith('NS')) {
        let iPath = path.join(jsePath, 'AppKit', `${inheritence[className]}.swift`);
        if (fs.existsSync(iPath)) inh.unshift(iPath);
        let iPath2 = path.join(jsePath, 'Foundation', `${inheritence[className]}.swift`);
        if (fs.existsSync(iPath2)) inh.unshift(iPath2);
      }
      else {
        let iPath = path.join(jsePath, framework, `${inheritence[className]}.swift`);
        if (fs.existsSync(iPath)) inh.unshift(iPath);
      }
    }

    className = inheritence[className];
  }

  cmd = cmd.concat([...inh, '|', 'swiftc', '-']);

  if (fileName) {
    console.log('echo', ...cmd);
  }

  let swift = spawn('echo', cmd, { shell: true });

  let errs = '';

  swift.stderr.on('data', data => {
    let lines = data.toString().split('\n').filter(l => l.includes('error: '));
    if (lines.length) {
      let lineParts = lines.map(line => `\t${line.split(' error: ')[1]}`);
      errs += lineParts.join('\n');
    }
  });

  swift.on('close', code => {
    if (code > 0) {
      console.log(`\n⚠️  ${file}`);
      console.log(errs, '\n');
    }
    else {
      console.log(`☑️  ${file}`);
      let frameworkDstPath = path.join(dstPath, framework);
      if (!fs.existsSync(frameworkDstPath)) fs.mkdirSync(frameworkDstPath);
      fs.copyFileSync(filePath, path.join(frameworkDstPath, file));
    }

    cb(null, { framework, file });
  });
}

let queue = cq().limit({ concurrency: cores - 1 }).process(({ framework, file }, cb) => {
  // console.log(file + ' started')
  run(framework, file, cb);
});

let frameworks = fs.readdirSync(jsePath);

(async () => {
  for (let framework of frameworks) {
    let frameworkPath = path.join(jsePath, framework);
    let stat = await fsPromise.lstat(frameworkPath);

    if (!stat.isDirectory()) continue;

    let files = await fsPromise.readdir(frameworkPath);

    for (let file of files) {
      if (!file.endsWith('.swift')) continue;
      let filePath = path.join(jsePath, framework, file);
      if (fileName && !filePath.includes(fileName)) continue;
      let fstat = await fsPromise.lstat(filePath);
      if (!fstat.isFile()) continue;
      queue({ framework, file });
    }
  }
})();
