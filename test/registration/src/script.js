let levels = ['error', 'warn', 'log', 'info', 'debug'];

for (const level of levels) {
  let original = console[level];
  console[level] = (...args) => {
    original(...args);
    let argString = args.reduce((prev, curr) => {
      if (typeof curr === 'object') {
        let currs = JSON.stringify(curr);
        if (currs === '{}') currs = `{${getTypeAsString(curr)}}`;
        prev += currs.substring(0, 80);
        if (currs.length > 80) prev += ' [...]';
      }
      else {
        prev += curr.toString();
      }
      prev += ' ';

      return prev;
    }, '');

    globalThis.VueKitLog(level, argString);
  };
}

let defaultContentRect = {
  x: 10,
  y: 10,
  width: 320,
  height: 240
};

let StyleMask = {
  Borderless: 0,
  Titled: 1,
  Closable: 2,
  Miniaturizable: 4,
  Resizable: 8,
  TexturedBackground: 256,
  UnifiedTitleAndToolbar: 4096,
  FullScreen: 16384,
  FullSizeContentView: 32768,
  UtilityWindow: 16,
  DocModalWindow: 64,
  NonactivatingPanel: 128,
  HUDWindow: 8192
}

let defaultStyleMask = StyleMask.Resizable | StyleMask.Titled | StyleMask.Closable | StyleMask.Miniaturizable;

let win = NSWindow.createWithContentRect_StyleMask_Backing_Defer(
  defaultContentRect,
  defaultStyleMask,
  0,
  true
)

win.makeKeyAndOrderFront(null);
win.center();

let url = NSURL.createWithString('https://archive.org/download/gov.uspto.patents.application.10719857/10719857-2003-11-20-00001-WFEE.pdf')
let typeId = url.pathIdentifier()

console.log('typeID', typeId);

console.dir(NSMenuItem);

Formatters.stringFromByteCountCountStyle(1025, 0);

console.log("Registration script complete.");
