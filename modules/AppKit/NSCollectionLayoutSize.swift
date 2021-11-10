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
    - Selector: NSCollectionLayoutSize
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSize) protocol NSCollectionLayoutSizeExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sizeWithWidthDimension:heightDimension:
  */
  @objc static func createWithSizeWithWidthDimensionWithHeightDimension(_ widthDimension: NSCollectionLayoutDimension, _ heightDimension: NSCollectionLayoutDimension) -> Self

  // Own Instance Properties

  /**
    - Selector: heightDimension
  */
  @objc var heightDimension: NSCollectionLayoutDimension { @objc get }

  /**
    - Selector: widthDimension
  */
  @objc var widthDimension: NSCollectionLayoutDimension { @objc get }
}

extension NSCollectionLayoutSize: NSCollectionLayoutSizeExports {

  /**
    - Selector: sizeWithWidthDimension:heightDimension:
  */
  @objc public static func createWithSizeWithWidthDimensionWithHeightDimension(_ widthDimension: NSCollectionLayoutDimension, _ heightDimension: NSCollectionLayoutDimension) -> Self {
    return self.init(widthDimension: widthDimension, heightDimension: heightDimension)
  }

}
