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
    - Selector: NSMoveCommand
  */

@objc(NSMoveCommand) protocol NSMoveCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?

  // Instance Methods

  /**
    - Selector: setReceiversSpecifier:
  */
  @objc func setReceiversSpecifier(_ p0: NSScriptObjectSpecifier?)

  // Own Instance Properties

  /**
    - Selector: keySpecifier
  */
  @objc var keySpecifier: NSScriptObjectSpecifier { @objc get }
}

extension NSMoveCommand: NSMoveCommandExports {
}
