import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutDimension
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutDimension) protocol NSCollectionLayoutDimensionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: absoluteDimension:
  */
  @objc static func absolute(_: CGFloat) -> Self

  /**
    - Selector: estimatedDimension:
  */
  @objc static func estimated(_: CGFloat) -> Self

  /**
    - Selector: fractionalHeightDimension:
  */
  @objc static func fractionalHeight(_: CGFloat) -> Self

  /**
    - Selector: fractionalWidthDimension:
  */
  @objc static func fractionalWidth(_: CGFloat) -> Self

  // Own Instance Properties

  /**
    - Selector: dimension
  */
  @objc var dimension: CGFloat { @objc get }

  /**
    - Selector: isAbsolute
  */
  @objc var isAbsolute: Bool { @objc get }

  /**
    - Selector: isEstimated
  */
  @objc var isEstimated: Bool { @objc get }

  /**
    - Selector: isFractionalHeight
  */
  @objc var isFractionalHeight: Bool { @objc get }

  /**
    - Selector: isFractionalWidth
  */
  @objc var isFractionalWidth: Bool { @objc get }
}

extension NSCollectionLayoutDimension: NSCollectionLayoutDimensionExports {
  @objc public static func absolute(_ p0: CGFloat) -> Self {
    return self.absolute(p0)
  }

  @objc public static func estimated(_ p0: CGFloat) -> Self {
    return self.estimated(p0)
  }

  @objc public static func fractionalHeight(_ p0: CGFloat) -> Self {
    return self.fractionalHeight(p0)
  }

  @objc public static func fractionalWidth(_ p0: CGFloat) -> Self {
    return self.fractionalWidth(p0)
  }

}
