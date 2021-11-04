import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCreateCommand
  */

@objc(NSCreateCommand) protocol NSCreateCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?

  // Own Instance Properties

  /**
    - Selector: createClassDescription
  */
  @objc var createClassDescription: NSScriptClassDescription { @objc get }

  /**
    - Selector: resolvedKeyDictionary
  */
  @objc var resolvedKeyDictionary: [String: Any] { @objc get }
}

extension NSCreateCommand: NSCreateCommandExports {
}
