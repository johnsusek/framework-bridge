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
    - Selector: NSNameSpecifier
  */

@objc(NSNameSpecifier) protocol NSNameSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: name
  */
  @objc var name: String { @objc get @objc (setName:) set }
}

extension NSNameSpecifier: NSNameSpecifierExports {
}
