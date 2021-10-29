import path from 'path';
import os from 'os';
import fs from 'fs';
import { spawn, execSync } from 'child_process';
import PQueue from 'p-queue';

let args = process.argv.slice(2);

if (args.length < 2) {
  console.log('gen-headers <frameworks json> <out path>');
  process.exit(1);
}

let frameworksPath = args[0];
let outPath = args[1];

if (!fs.existsSync(frameworksPath)) {
  console.log(frameworksPath + ' does not exist.');
  process.exit(1);
}

let frameworks = JSON.parse(fs.readFileSync(frameworksPath));
let tmpDir = `./build`;
let queue = new PQueue({ concurrency: os.cpus().length });

if (!fs.existsSync(tmpDir)) {
  fs.mkdirSync(tmpDir, { recursive: true });
}

let handleData = data => {
  let line = data.toString();
  let hasUnknownTypes = /\n?<could not resolve type>\n?/gm;
  let matches = line.match(hasUnknownTypes, '\n');

  if (matches && matches.length) {
    line = line.replace(hasUnknownTypes, '\n');
  }

  return line;
};

let handleError = err => err && console.error(err);

async function enqueue(framework) {
  let output = await queue.add(async () => {
    let swift = spawn('swift');
    let out = '';

    swift.stdin.write(`import AppKit\n`, handleError);

    if (framework !== "AppKit") {
      swift.stdin.write(`import ${framework}\n`, handleError);
    }

    await new Promise(r => {
      return swift.stdout.once('data', r)
    });

    swift.stderr.on('data', (data) => console.error(data));

    return new Promise((resolve, reject) => {
      swift.on('close', (code) => {
        if (code !== 0) {
          console.log(`swift process exited with code ${code}`);
          reject();
        }
        else {
          resolve(out);
        }
      });

      swift.stdout.on('data', (d) => { out += handleData(d) });
      swift.stdin.write(`:type lookup ${framework}\n`, handleError);
      swift.stdin.end();
    })
  });

  let outFile = `${tmpDir}/${framework}.swift`;

  if (!fs.existsSync(path.dirname(outFile))) {
    fs.mkdirSync(path.dirname(outFile), { recursive: true });
  }

  fs.writeFileSync(outFile, output);

  console.log(`${framework} done`);
}

(async () => {
  await Promise.all(Object.keys(frameworks).map(f => enqueue(f)))

  await queue.onEmpty();

  if (!fs.existsSync(outPath)) {
    fs.mkdirSync(outPath, { recursive: true });
  }

  execSync(`cp -R "${tmpDir}/" "${outPath}/"`);

  console.log('Done.');
  process.exit(0);
})();
