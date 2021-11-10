import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSNib
  */

@objc(NSNib) protocol NSNibExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: instantiateWithOwner:topLevelObjects:
    - Introduced: 10.8
  */
  @objc (instantiateWithOwner:topLevelObjects:) @available(OSX 10.8, *) func instantiate(withOwner: Any?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool
}

extension NSNib: NSNibExports {
}
