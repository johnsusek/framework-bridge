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
    - Selector: NSCollectionLayoutSpacing
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSpacing) protocol NSCollectionLayoutSpacingExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: fixedSpacing:
  */
  @objc static func createWithFixedSpacing(_ p0: CGFloat) -> Self

  /**
    - Selector: flexibleSpacing:
  */
  @objc static func createWithFlexibleSpacing(_ p0: CGFloat) -> Self

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

  /**
    - Selector: fixedSpacing:
  */
  @objc public static func createWithFixedSpacing(_ p0: CGFloat) -> Self {
    return self.fixed(p0)
  }


  /**
    - Selector: flexibleSpacing:
  */
  @objc public static func createWithFlexibleSpacing(_ p0: CGFloat) -> Self {
    return self.flexible(p0)
  }

}
