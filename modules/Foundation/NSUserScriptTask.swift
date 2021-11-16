import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
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

  // Own Instance Properties

  /**
    - Selector: scriptURL
  */
  @objc var scriptURL: URL { @objc get }
}

extension NSUserScriptTask: NSUserScriptTaskExports {
}
