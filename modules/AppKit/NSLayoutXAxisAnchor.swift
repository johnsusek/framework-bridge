import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLayoutXAxisAnchor
    - name: NSLayoutXAxisAnchor
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSLayoutXAxisAnchor) protocol NSLayoutXAxisAnchorExports: JSExport, NSLayoutAnchorExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: anchorWithOffset
    - name: anchorWithOffsetToAnchor:
    - argLabels: to
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: anchorWithOffset(to:)
    - Introduced: 10.12
  */
  @objc (anchorWithOffsetToAnchor:) @available(OSX 10.12, *) func anchorWithOffset(to: NSLayoutXAxisAnchor) -> NSLayoutDimension
}

extension NSLayoutXAxisAnchor: NSLayoutXAxisAnchorExports {
}
