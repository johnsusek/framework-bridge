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
    - Selector: NSCollectionLayoutDimension
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutDimension) protocol NSCollectionLayoutDimensionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: absoluteDimension:
  */
  @objc static func createWithAbsoluteDimension(_ p0: CGFloat) -> Self

  /**
    - Selector: estimatedDimension:
  */
  @objc static func createWithEstimatedDimension(_ p0: CGFloat) -> Self

  /**
    - Selector: fractionalHeightDimension:
  */
  @objc static func createWithFractionalHeightDimension(_ p0: CGFloat) -> Self

  /**
    - Selector: fractionalWidthDimension:
  */
  @objc static func createWithFractionalWidthDimension(_ p0: CGFloat) -> Self

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

  /**
    - Selector: absoluteDimension:
  */
  @objc public static func createWithAbsoluteDimension(_ p0: CGFloat) -> Self {
    return self.absolute(p0)
  }


  /**
    - Selector: estimatedDimension:
  */
  @objc public static func createWithEstimatedDimension(_ p0: CGFloat) -> Self {
    return self.estimated(p0)
  }


  /**
    - Selector: fractionalHeightDimension:
  */
  @objc public static func createWithFractionalHeightDimension(_ p0: CGFloat) -> Self {
    return self.fractionalHeight(p0)
  }


  /**
    - Selector: fractionalWidthDimension:
  */
  @objc public static func createWithFractionalWidthDimension(_ p0: CGFloat) -> Self {
    return self.fractionalWidth(p0)
  }

}
