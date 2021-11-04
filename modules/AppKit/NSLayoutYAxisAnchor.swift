import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSLayoutYAxisAnchor
    - Introduced: 10.11
  */

@objc(NSLayoutYAxisAnchor) protocol NSLayoutYAxisAnchorExports: JSExport, NSLayoutAnchorExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: anchorWithOffsetToAnchor:
    - Introduced: 10.12
  */
  @objc (anchorWithOffsetToAnchor:) @available(OSX 10.12, *) func anchorWithOffset(to: NSLayoutYAxisAnchor) -> NSLayoutDimension
}

extension NSLayoutYAxisAnchor: NSLayoutYAxisAnchorExports {
}
