import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func create(layoutSize: NSCollectionLayoutSize) -> Self

  /**
    - Selector: itemWithLayoutSize:supplementaryItems:
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem]) -> Self

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
  @objc public static func create(layoutSize: NSCollectionLayoutSize) -> Self {
    return self.init(layoutSize: layoutSize)
  }

  @objc public static func create(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem]) -> Self {
    return self.init(layoutSize: layoutSize, supplementaryItems: supplementaryItems)
  }

}
