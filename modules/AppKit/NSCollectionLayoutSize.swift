import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutSize
    - name: NSCollectionLayoutSize
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSize) protocol NSCollectionLayoutSizeExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: sizeWithWidthDimension:heightDimension:
    - argLabels: widthDimension, heightDimension
    - constructorTokens: 
    - unavailable: true
    - renamed: init(widthDimension:heightDimension:)
    - message: Not available in Swift
  */
  @objc static func create(widthDimension: NSCollectionLayoutDimension, heightDimension: NSCollectionLayoutDimension) -> Self

  // Own Instance Properties

  /**
    - jsName: heightDimension
    - name: heightDimension
    - argLabels: 
  */
  @objc var heightDimension: NSCollectionLayoutDimension { @objc get }

  /**
    - jsName: widthDimension
    - name: widthDimension
    - argLabels: 
  */
  @objc var widthDimension: NSCollectionLayoutDimension { @objc get }
}

extension NSCollectionLayoutSize: NSCollectionLayoutSizeExports {
  @objc public static func create(widthDimension: NSCollectionLayoutDimension, heightDimension: NSCollectionLayoutDimension) -> Self {
    return self.init(widthDimension: widthDimension, heightDimension: heightDimension)
  }

}
