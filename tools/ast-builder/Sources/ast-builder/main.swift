import AppKit
import Foundation
import SwiftyJSON

let arguments: [String] = Array(CommandLine.arguments.dropFirst())

var frameworkFile = ""
var headersPath = ""
var outPath = ""

if arguments.count < 3 {
  print("ast-build <frameworks json> <headers path> <output path>")
  exit(EXIT_FAILURE)
} else {
  frameworkFile = arguments[0]
  headersPath = arguments[1]
  outPath = arguments[2]
}

let fileManager = FileManager.default

let frameworkFileUrl = URL(fileURLWithPath: frameworkFile)

guard let frameworkData = try? Data(contentsOf: frameworkFileUrl) else {
  print("Could not load data at \(frameworkFile)")
  exit(1)
}

guard let frameworks = try? JSON(data: frameworkData) else {
  print("Could not parse JSON")
  exit(1)
}

let docURL = URL(string: outPath)!

if !FileManager.default.fileExists(atPath: docURL.path) {
  do {
    try FileManager.default.createDirectory(atPath: docURL.path, withIntermediateDirectories: true, attributes: nil)
  } catch {
    print(error.localizedDescription)
  }
}

for (frameworkName, _): (String, JSON) in frameworks {
  let foutputName = "\(outPath)/\(frameworkName)+SwiftSyntax"
  let fsourcePath = "\(headersPath)/\(frameworkName).swift"
  let fsourcePathUrl = URL(fileURLWithPath: fsourcePath)

  guard let fsourceContents = try? String(contentsOf: fsourcePathUrl, encoding: .utf8) else {
    print("Skipping... could not read \(fsourcePathUrl).")
    continue;
  }

  do {
    let res = try Parser.parse(code: fsourceContents)
    try res.write(
      to: URL(fileURLWithPath: foutputName + ".json"), atomically: true,
      encoding: String.Encoding.utf8
    )
    print("Wrote \(foutputName).json")

  } catch {
    print("Unexpected error: \(error).")
  }

}
