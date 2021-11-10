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
    - Selector: NSRelativeSpecifier
  */

@objc(NSRelativeSpecifier) protocol NSRelativeSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: baseSpecifier
  */
  @objc var baseSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setBaseSpecifier:) set }

  /**
    - Selector: relativePosition
  */
  @objc var relativePosition: NSRelativeSpecifier.RelativePosition { @objc get @objc (setRelativePosition:) set }
}

extension NSRelativeSpecifier: NSRelativeSpecifierExports {
}
