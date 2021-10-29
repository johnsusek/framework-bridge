# framework-bridge

Swift [JSExport](https://developer.apple.com/documentation/javascriptcore/jsexport) [extensions](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html) for system frameworks.

## Testing

`./test/bridge.js`

## Tools

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

### prune-jse

Tries to automatically fill types in bridge files using swift compiler messages

`node fillTypes.js`

Attempts to compile swift jsexport classes and copies those that do build successfully to a destination directory.

`node prune.js`

# Dev

* Edit metadata/frameworks.json if you are adding a new framework
* Run gen-header, ast-builder and attribute-list-builder to populate tmp/ folders
* Run macos-metadata-generator to populate swift/ folder
* (Optional) Run fillTypes or prune
* Add classes to test/classesToTest.js and testapp
