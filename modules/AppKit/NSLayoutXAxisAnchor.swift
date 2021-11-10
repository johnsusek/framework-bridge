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
    - Selector: NSLayoutXAxisAnchor
    - Introduced: 10.11
  */

@objc(NSLayoutXAxisAnchor) protocol NSLayoutXAxisAnchorExports: JSExport, NSLayoutAnchorExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: anchorWithOffsetToAnchor:
    - Introduced: 10.12
  */
  @objc (anchorWithOffsetToAnchor:) @available(OSX 10.12, *) func anchorWithOffset(to: NSLayoutXAxisAnchor) -> NSLayoutDimension
}

extension NSLayoutXAxisAnchor: NSLayoutXAxisAnchorExports {
}
