import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func create(widthDimension: NSCollectionLayoutDimension, heightDimension: NSCollectionLayoutDimension) -> Self

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
  @objc public static func create(widthDimension: NSCollectionLayoutDimension, heightDimension: NSCollectionLayoutDimension) -> Self {
    return self.init(widthDimension: widthDimension, heightDimension: heightDimension)
  }

}
