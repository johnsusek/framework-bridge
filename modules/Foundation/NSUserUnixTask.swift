import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserUnixTask
    - name: NSUserUnixTask
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSUserUnixTask) protocol NSUserUnixTaskExports: JSExport, NSUserScriptTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: execute
    - name: executeWithArguments:completionHandler:
    - argLabels: withArguments, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: execute(withArguments:completionHandler:)
  */
  // jsvalue - @objc (executeWithArguments:completionHandler:) func execute(withArguments: [String]?, completionHandler: JSValue?)

  // Own Instance Properties

  /**
    - jsName: standardError
    - name: standardError
    - argLabels: 
  */
  @objc var standardError: FileHandle? { @objc get @objc (setStandardError:) set }

  /**
    - jsName: standardInput
    - name: standardInput
    - argLabels: 
  */
  @objc var standardInput: FileHandle? { @objc get @objc (setStandardInput:) set }

  /**
    - jsName: standardOutput
    - name: standardOutput
    - argLabels: 
  */
  @objc var standardOutput: FileHandle? { @objc get @objc (setStandardOutput:) set }
}

extension NSUserUnixTask: NSUserUnixTaskExports {
}
