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
    - Selector: NSCloseCommand
  */

@objc(NSCloseCommand) protocol NSCloseCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?

  // Own Instance Properties

  /**
    - Selector: saveOptions
  */
  @objc var saveOptions: NSSaveOptions { @objc get }
}

extension NSCloseCommand: NSCloseCommandExports {
}
