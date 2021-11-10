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
    - Selector: NSRangeSpecifier
  */

@objc(NSRangeSpecifier) protocol NSRangeSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: endSpecifier
  */
  @objc var endSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setEndSpecifier:) set }

  /**
    - Selector: startSpecifier
  */
  @objc var startSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setStartSpecifier:) set }
}

extension NSRangeSpecifier: NSRangeSpecifierExports {
}
