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
    - Selector: NSUserAutomatorTask
    - Introduced: 10.8
  */

@objc(NSUserAutomatorTask) protocol NSUserAutomatorTaskExports: JSExport, NSUserScriptTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: executeWithInput:completionHandler:
  */
  // jsvalue @objc func executeWithInputWithCallback(_ withInput: NSSecureCoding?, _ completionHandler: JSValue?)

  // Own Instance Properties

  /**
    - Selector: variables
  */
  @objc var variables: [String: Any]? { @objc get @objc (setVariables:) set }
}

extension NSUserAutomatorTask: NSUserAutomatorTaskExports {
}
