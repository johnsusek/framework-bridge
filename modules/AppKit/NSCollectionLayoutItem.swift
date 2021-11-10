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
    - Selector: NSCollectionLayoutItem
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutItem) protocol NSCollectionLayoutItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: itemWithLayoutSize:
  */
  @objc static func createWithItemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize) -> Self

  /**
    - Selector: itemWithLayoutSize:supplementaryItems:
  */
  @objc static func createWithItemWithLayoutSizeWithSupplementaryItems(_ layoutSize: NSCollectionLayoutSize, _ supplementaryItems: [NSCollectionLayoutSupplementaryItem]) -> Self

  // Own Instance Properties

  /**
    - Selector: contentInsets
  */
  @objc var contentInsets: NSDirectionalEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - Selector: edgeSpacing
  */
  @objc var edgeSpacing: NSCollectionLayoutEdgeSpacing? { @objc get @objc (setEdgeSpacing:) set }

  /**
    - Selector: layoutSize
  */
  @objc var layoutSize: NSCollectionLayoutSize { @objc get }

  /**
    - Selector: supplementaryItems
  */
  @objc var supplementaryItems: [NSCollectionLayoutSupplementaryItem] { @objc get }
}

extension NSCollectionLayoutItem: NSCollectionLayoutItemExports {

  /**
    - Selector: itemWithLayoutSize:
  */
  @objc public static func createWithItemWithLayoutSize(_ layoutSize: NSCollectionLayoutSize) -> Self {
    return self.init(layoutSize: layoutSize)
  }


  /**
    - Selector: itemWithLayoutSize:supplementaryItems:
  */
  @objc public static func createWithItemWithLayoutSizeWithSupplementaryItems(_ layoutSize: NSCollectionLayoutSize, _ supplementaryItems: [NSCollectionLayoutSupplementaryItem]) -> Self {
    return self.init(layoutSize: layoutSize, supplementaryItems: supplementaryItems)
  }

}
