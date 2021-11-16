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
    - Selector: NSUserUnixTask
    - Introduced: 10.8
  */

@objc(NSUserUnixTask) protocol NSUserUnixTaskExports: JSExport, NSUserScriptTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: executeWithArguments:completionHandler:
  */
  // jsvalue @objc func executeWithArgumentsWithCompletionHandler(_ withArguments: [String]?, _ completionHandler: JSValue?)

  // Own Instance Properties

  /**
    - Selector: standardError
  */
  @objc var standardError: FileHandle? { @objc get @objc (setStandardError:) set }

  /**
    - Selector: standardInput
  */
  @objc var standardInput: FileHandle? { @objc get @objc (setStandardInput:) set }

  /**
    - Selector: standardOutput
  */
  @objc var standardOutput: FileHandle? { @objc get @objc (setStandardOutput:) set }
}

extension NSUserUnixTask: NSUserUnixTaskExports {
}
