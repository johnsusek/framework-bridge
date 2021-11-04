import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCloneCommand
  */

@objc(NSCloneCommand) protocol NSCloneCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?

  // Instance Methods

  /**
    - Selector: setReceiversSpecifier:
  */
  @objc func setReceiversSpecifier(_: NSScriptObjectSpecifier?)

  // Own Instance Properties

  /**
    - Selector: keySpecifier
  */
  @objc var keySpecifier: NSScriptObjectSpecifier { @objc get }
}

extension NSCloneCommand: NSCloneCommandExports {
}
