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
    - Selector: NSExistsCommand
  */

@objc(NSExistsCommand) protocol NSExistsCommandExports: JSExport, NSScriptCommandExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?
}

extension NSExistsCommand: NSExistsCommandExports {
}
