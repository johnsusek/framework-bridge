import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutEdgeSpacing
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutEdgeSpacing) protocol NSCollectionLayoutEdgeSpacingExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: spacingForLeading:top:trailing:bottom:
  */
  @objc static func create(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?) -> Self

  // Own Instance Properties

  /**
    - Selector: bottom
  */
  @objc var bottom: NSCollectionLayoutSpacing? { @objc get }

  /**
    - Selector: leading
  */
  @objc var leading: NSCollectionLayoutSpacing? { @objc get }

  /**
    - Selector: top
  */
  @objc var top: NSCollectionLayoutSpacing? { @objc get }

  /**
    - Selector: trailing
  */
  @objc var trailing: NSCollectionLayoutSpacing? { @objc get }
}

extension NSCollectionLayoutEdgeSpacing: NSCollectionLayoutEdgeSpacingExports {
  @objc public static func create(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?) -> Self {
    return self.init(leading: leading, top: top, trailing: trailing, bottom: bottom)
  }

}
