import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserAutomatorTask
    - name: NSUserAutomatorTask
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSUserAutomatorTask) protocol NSUserAutomatorTaskExports: JSExport, NSUserScriptTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: execute
    - name: executeWithInput:completionHandler:
    - argLabels: withInput, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: execute(withInput:completionHandler:)
  */
  // jsvalue - @objc (executeWithInput:completionHandler:) func execute(withInput: NSSecureCoding?, completionHandler: JSValue?)

  // Own Instance Properties

  /**
    - jsName: variables
    - name: variables
    - argLabels: 
  */
  @objc var variables: [String: Any]? { @objc get @objc (setVariables:) set }
}

extension NSUserAutomatorTask: NSUserAutomatorTaskExports {
}
