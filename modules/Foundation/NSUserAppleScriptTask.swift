import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserAppleScriptTask
    - name: NSUserAppleScriptTask
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSUserAppleScriptTask) protocol NSUserAppleScriptTaskExports: JSExport, NSUserScriptTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: execute
    - name: executeWithAppleEvent:completionHandler:
    - argLabels: withAppleEvent, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: execute(withAppleEvent:completionHandler:)
  */
  // jsvalue - @objc (executeWithAppleEvent:completionHandler:) func execute(withAppleEvent: NSAppleEventDescriptor?, completionHandler: JSValue?)
}

extension NSUserAppleScriptTask: NSUserAppleScriptTaskExports {
}
