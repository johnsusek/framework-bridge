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
    - Selector: NSUniqueIDSpecifier
  */

@objc(NSUniqueIDSpecifier) protocol NSUniqueIDSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: uniqueID
  */
  @objc var uniqueID: Any { @objc get @objc (setUniqueID:) set }
}

extension NSUniqueIDSpecifier: NSUniqueIDSpecifierExports {
}
