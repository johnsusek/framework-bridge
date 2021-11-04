import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCountCommand
  */

@objc(NSCountCommand) protocol NSCountCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?
}

extension NSCountCommand: NSCountCommandExports {
}
