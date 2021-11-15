#!/usr/bin/env node

let { spawn } = require('child_process');
let fs = require('fs');
let fsPromise = require('fs').promises;
let path = require('path');
let cq = require('concurrent-queue');
let cores = require('os').cpus().length;
let inheritence = require('../../metadata/inheritence.json');
let classesToRegister = require('../classesToRegister.json');
let bridgePath = path.join(__dirname, '../../Sources/FrameworkBridge');
let sourcePath = path.join(__dirname, '../../tmp/swift');
let successPath = path.join(__dirname, '../../modules');
let args = process.argv.slice(2);
let fileName = args[0];
let failed = [];

function run(framework, file, cb) {
  let bridgeFiles = path.join(bridgePath, '/*.swift');
  let bridgeFiles2 = path.join(bridgePath, '/**/*.swift');
  let filePath = path.join(sourcePath, framework, file);
  let cmd = ['"import Quartz\nimport AVFoundation"', '|', 'cat', '-'];

  cmd.push(bridgeFiles);
  cmd.push(bridgeFiles2);

  let protoFiles = path.join(sourcePath, 'AppKit/protocols/NSUserInterfaceItemIdentification.swift');
  cmd.push(protoFiles);

  let inh = [filePath];

  let className = file.replace('.swift', '');

  if (!inheritence[className]) {
    if (inheritence["NS" + className]) {
      className = "NS" + className;
    }
    else if (className != "Error") {
      console.warn('⚠️ Could not find inheritence for ' + className);
    }
  }

  if (inheritence[className]) {
    while (inheritence[className]) {
      if (inheritence[className] && inheritence[className] !== 'NSObject') {
        // TODO: add module names to inheritence.json so we dont have to do this
        if (inheritence[className].startsWith('NS')) {
          let iPath0 = path.join(sourcePath, 'AppKit', `${inheritence[className].replace(/^NS/, '')}.swift`);
          if (fs.existsSync(iPath0)) inh.unshift(iPath0);
          let iPath = path.join(sourcePath, 'AppKit', `${inheritence[className]}.swift`);
          if (fs.existsSync(iPath)) inh.unshift(iPath);
          let iPath2 = path.join(sourcePath, 'Foundation', `${inheritence[className]}.swift`);
          if (fs.existsSync(iPath2)) inh.unshift(iPath2);
        } else {
          let iPath = path.join(sourcePath, framework, `${inheritence[className]}.swift`);
          if (fs.existsSync(iPath)) inh.unshift(iPath);
        }

      }

      className = inheritence[className];
    }
  }

  cmd = cmd.concat([
    ...inh,
    '|',
    'swiftc',
    '-',
    '-continue-building-after-errors',
    '-typecheck',
    '-suppress-warnings',
  ]);

  // console.log(...cmd);

  let swift = spawn('echo', cmd, { shell: true });
  let errs = '';

  swift.stderr.on('data', (data) => {
    let lines = data.toString().split('\n').filter(l => l.includes('error: '));
    if (lines.length) {
      let lineParts = lines.map(line => `\t${line.split(' error: ')[1]}`);
      errs += lineParts.join('\n');
    }
  });

  swift.on('close', (code) => {
    let className = file.replace('.swift', '');
    if (code > 0) {
      console.log(`❌  ${className}`, errs);
      failed.push(className);
      cb(errs);
    } else {
      if (!fs.existsSync(path.join(successPath, framework))) {
        fs.mkdirSync(path.join(successPath, framework))
      }
      fs.copyFileSync(filePath, path.join(successPath, framework, file));
      console.log(`☑️  ${className}`);
      cb(null);
    }
  });
}

let queue = cq().limit({ concurrency: cores - 1 }).process(({ framework, file }, cb) => {
  run(framework, file, cb);
});

queue.drained(() => {
  if (failed.length) {
    console.log('\n❌ ' + failed.length + ' test(s) failed:', failed.join(', ') + '\n');
    process.exit(1);
  }
  else {
    console.log('\n✨ All tests passed.\n')
    process.exit(0);
  }
})

let frameworks = fs.readdirSync(sourcePath);

classesToRegister = Object.values(classesToRegister).flat();

(async () => {
  for (let framework of frameworks) {
    let frameworkPath = path.join(sourcePath, framework);
    let stat = await fsPromise.lstat(frameworkPath);

    if (!stat.isDirectory()) continue;

    let files = await fsPromise.readdir(frameworkPath);

    for (let file of files) {
      if (!file.endsWith('.swift')) continue;
      let filePath = path.join(sourcePath, framework, file);
      if (fileName && !file.startsWith(fileName)) continue;
      if (!fileName && !classesToRegister.some(c => c + ".swift" === file)) {
        continue;
      }

      let fstat = await fsPromise.lstat(filePath);
      if (!fstat.isFile()) continue;

      queue({ framework, file }, () => {
      });
    }
  }
})();
