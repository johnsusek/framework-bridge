# framework-bridge

Swift [JSExport](https://developer.apple.com/documentation/javascriptcore/jsexport) [extensions](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html) for macOS system frameworks.

## Progress
[Foundation](https://github.com/johnsusek/framework-bridge/tree/master/modules/Foundation)<br>
![155/259 classes](https://progress-bar.dev/155?&suffix=/259%20classes&scale=259&width=320)
<br>
[AppKit](https://github.com/johnsusek/framework-bridge/tree/master/modules/AppKit)<br>
![232/269 classes](https://progress-bar.dev/232?&suffix=/259%20classes&scale=269&width=320)

## Usage

Swift
```swift
import JavaScriptCore
import FrameworkBridge
let context = JSContext()!
context.bridgeClass("NSSound")
```

Javascript
```javascript
NSSound({ named: "Chirp" }).play();
```

## Tests

Test compilation of JSExport classes:

`./test/compilation/compilation.sh`

Test runtime registration of classes:

`./test/registration/registration.sh`

## Dev Tools

### gen-headers

Generates swift headers for AppKit classes. This data is used by ast-builder

`node index.js ../../metadata/frameworks.json ../../tmp/headers`

### ast-builder

Parses swift headers into an ast and store is json.

`swift run ast-builder ../../metadata/frameworks.json ../../tmp/headers ../../tmp/ast`

### attribute-list-builder

Parses swift headers into a list of attributes (i.e. unavailable, renamed, etc).

This data is used by macos-metadata-builder to build the swift jsexport
classes (specifically to hide unavailable or obsoleted decls).

This also generates aliases.json and structs.json.

`node index.js ../../metadata/frameworks.json ../../tmp/ast ../../tmp/attributes`

### macos-metadata-generator

Generates swift jsexport classes; uses data generated from the above tools.

See README in [macos-metadata-generator](https://github.com/johnsusek/macos-metadata-generator) repo for more details.

# Dev

* Edit metadata/frameworks.json if you are adding a new framework
* Run gen-header, ast-builder and attribute-list-builder to populate tmp/ folders
* Run macos-metadata-generator to populate swift/ folder
* Add classes to classesToRegister.json and registration test app
