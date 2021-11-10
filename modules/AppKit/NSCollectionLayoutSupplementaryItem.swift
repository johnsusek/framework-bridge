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
    - Selector: NSCollectionLayoutSupplementaryItem
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSupplementaryItem) protocol NSCollectionLayoutSupplementaryItemExports: JSExport, NSCollectionLayoutItemExports {
  // Static Methods

  /**
    - Selector: supplementaryItemWithLayoutSize:elementKind:containerAnchor:
  */
  @objc static func createWithSupplementaryItemWithLayoutSizeWithElementKindWithContainerAnchor(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ containerAnchor: NSCollectionLayoutAnchor) -> Self

  /**
    - Selector: supplementaryItemWithLayoutSize:elementKind:containerAnchor:itemAnchor:
  */
  @objc static func createWithSupplementaryItemWithLayoutSizeWithElementKindWithContainerAnchorWithItemAnchor(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ containerAnchor: NSCollectionLayoutAnchor, _ itemAnchor: NSCollectionLayoutAnchor) -> Self

  // Own Instance Properties

  /**
    - Selector: containerAnchor
  */
  @objc var containerAnchor: NSCollectionLayoutAnchor { @objc get }

  /**
    - Selector: elementKind
  */
  @objc var elementKind: String { @objc get }

  /**
    - Selector: itemAnchor
  */
  @objc var itemAnchor: NSCollectionLayoutAnchor? { @objc get }

  /**
    - Selector: zIndex
  */
  @objc var zIndex: Int { @objc get @objc (setZIndex:) set }
}

extension NSCollectionLayoutSupplementaryItem: NSCollectionLayoutSupplementaryItemExports {

  /**
    - Selector: supplementaryItemWithLayoutSize:elementKind:containerAnchor:
  */
  @objc public static func createWithSupplementaryItemWithLayoutSizeWithElementKindWithContainerAnchor(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ containerAnchor: NSCollectionLayoutAnchor) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, containerAnchor: containerAnchor)
  }


  /**
    - Selector: supplementaryItemWithLayoutSize:elementKind:containerAnchor:itemAnchor:
  */
  @objc public static func createWithSupplementaryItemWithLayoutSizeWithElementKindWithContainerAnchorWithItemAnchor(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ containerAnchor: NSCollectionLayoutAnchor, _ itemAnchor: NSCollectionLayoutAnchor) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, containerAnchor: containerAnchor, itemAnchor: itemAnchor)
  }

}
