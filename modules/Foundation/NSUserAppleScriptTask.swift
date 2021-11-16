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
    - Selector: NSUserAppleScriptTask
    - Introduced: 10.8
  */

@objc(NSUserAppleScriptTask) protocol NSUserAppleScriptTaskExports: JSExport, NSUserScriptTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: executeWithAppleEvent:completionHandler:
  */
  // jsvalue @objc func executeWithAppleEventWithCallback(_ withAppleEvent: NSAppleEventDescriptor?, _ completionHandler: JSValue?)
}

extension NSUserAppleScriptTask: NSUserAppleScriptTaskExports {
}
