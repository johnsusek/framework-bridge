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
    - Selector: NSIndexSpecifier
  */

@objc(NSIndexSpecifier) protocol NSIndexSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: index
  */
  @objc var index: Int { @objc get @objc (setIndex:) set }
}

extension NSIndexSpecifier: NSIndexSpecifierExports {
}
