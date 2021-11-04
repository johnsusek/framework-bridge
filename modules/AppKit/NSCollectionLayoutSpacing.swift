import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutSpacing
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSpacing) protocol NSCollectionLayoutSpacingExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: fixedSpacing:
  */
  @objc static func fixed(_: CGFloat) -> Self

  /**
    - Selector: flexibleSpacing:
  */
  @objc static func flexible(_: CGFloat) -> Self

  // Own Instance Properties

  /**
    - Selector: isFixedSpacing
  */
  @objc var isFixed: Bool { @objc (isFixedSpacing) get }

  /**
    - Selector: isFlexibleSpacing
  */
  @objc var isFlexible: Bool { @objc (isFlexibleSpacing) get }

  /**
    - Selector: spacing
  */
  @objc var spacing: CGFloat { @objc get }
}

extension NSCollectionLayoutSpacing: NSCollectionLayoutSpacingExports {
  @objc public static func fixed(_ p0: CGFloat) -> Self {
    return self.fixed(p0)
  }

  @objc public static func flexible(_ p0: CGFloat) -> Self {
    return self.flexible(p0)
  }

}
