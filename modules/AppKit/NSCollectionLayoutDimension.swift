import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutDimension
    - name: NSCollectionLayoutDimension
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutDimension) protocol NSCollectionLayoutDimensionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: absolute
    - name: absoluteDimension:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: absolute(_:)
  */
  @objc static func absolute(_: CGFloat) -> Self

  /**
    - jsName: estimated
    - name: estimatedDimension:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: estimated(_:)
  */
  @objc static func estimated(_: CGFloat) -> Self

  /**
    - jsName: fractionalHeight
    - name: fractionalHeightDimension:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fractionalHeight(_:)
  */
  @objc static func fractionalHeight(_: CGFloat) -> Self

  /**
    - jsName: fractionalWidth
    - name: fractionalWidthDimension:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fractionalWidth(_:)
  */
  @objc static func fractionalWidth(_: CGFloat) -> Self

  // Own Instance Properties

  /**
    - jsName: dimension
    - name: dimension
    - argLabels: 
  */
  @objc var dimension: CGFloat { @objc get }

  /**
    - jsName: isAbsolute
    - name: isAbsolute
    - argLabels: 
  */
  @objc var isAbsolute: Bool { @objc get }

  /**
    - jsName: isEstimated
    - name: isEstimated
    - argLabels: 
  */
  @objc var isEstimated: Bool { @objc get }

  /**
    - jsName: isFractionalHeight
    - name: isFractionalHeight
    - argLabels: 
  */
  @objc var isFractionalHeight: Bool { @objc get }

  /**
    - jsName: isFractionalWidth
    - name: isFractionalWidth
    - argLabels: 
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
