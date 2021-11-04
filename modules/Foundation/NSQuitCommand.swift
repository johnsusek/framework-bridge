import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSQuitCommand
  */

@objc(NSQuitCommand) protocol NSQuitCommandExports: JSExport, NSScriptCommandExports {
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

extension NSQuitCommand: NSQuitCommandExports {
}
