import AppKit
import JavaScriptCore
import SwiftyJSON

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationDidFinishLaunching(_: Notification) {
    let context = JSContext()!
    let polyfills = PolyFills(context: context)
    polyfills.install()

    let frameworkFile = "../../classesToRegister.json"
    let frameworkFileUrl = URL(fileURLWithPath: frameworkFile)

    print(frameworkFileUrl)

    guard let frameworkData = try? Data(contentsOf: frameworkFileUrl) else {
      print("Could not load data at \(frameworkFile)")
      exit(1)
    }

    guard let frameworks = try? JSON(data: frameworkData) else {
      print("Could not parse JSON")
      exit(1)
    }

    var numRegistered = 0;

    for (frameworkName, classes): (String, JSON) in frameworks {
      for (_, className) in classes {
        _ = context.bridgeClass("\(className)");
        print("☑️  \(className)")
        numRegistered += 1
      }
    }

    let fileManager = FileManager.default

    guard let bundleUrl = Bundle.main.url(forResource: "script", withExtension: "js") else {
      print("Could not find script js")
      exit(1)
    }

    do {
      let script = try String(contentsOf: bundleUrl, encoding: .utf8)
      _ = context.evaluateScript(script)
      print("\n✨ \(numRegistered) classes registered successfully.")
      exit(0);
    } catch {
      print(error)
      exit(1)
    }
  }
}
