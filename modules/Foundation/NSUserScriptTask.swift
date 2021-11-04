import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUserScriptTask
    - Introduced: 10.8
  */

@objc(NSUserScriptTask) protocol NSUserScriptTaskExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: executeWithCompletionHandler:
  */
  // jsvalue @objc func execute(completionHandler: JSValue?)

  /**
    - Selector: initWithURL:error:
  */
  @objc static func createWithURL(url: URL) -> Self?

  // Own Instance Properties

  /**
    - Selector: scriptURL
  */
  @objc var scriptURL: URL { @objc get }
}

extension NSUserScriptTask: NSUserScriptTaskExports {
  @objc public static func createWithURL(url: URL) -> Self? {
    return try? self.init(url: url)
  }

}
