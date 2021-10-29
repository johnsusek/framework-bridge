import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutItem
    - name: NSCollectionLayoutItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutItem) protocol NSCollectionLayoutItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: itemWithLayoutSize:
    - argLabels: layoutSize
    - constructorTokens: 
    - unavailable: true
    - renamed: init(layoutSize:)
    - message: Not available in Swift
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize) -> Self

  /**
    - jsName: create
    - name: itemWithLayoutSize:supplementaryItems:
    - argLabels: layoutSize, supplementaryItems
    - constructorTokens: 
    - unavailable: true
    - renamed: init(layoutSize:supplementaryItems:)
    - message: Not available in Swift
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize, supplementaryItems: [NSCollectionLayoutSupplementaryItem]) -> Self

  // Own Instance Properties

  /**
    - jsName: contentInsets
    - name: contentInsets
    - argLabels: 
  */
  @objc var contentInsets: NSDirectionalEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - jsName: edgeSpacing
    - name: edgeSpacing
    - argLabels: 
  */
  @objc var edgeSpacing: NSCollectionLayoutEdgeSpacing? { @objc get @objc (setEdgeSpacing:) set }

  /**
    - jsName: layoutSize
    - name: layoutSize
    - argLabels: 
  */
  @objc var layoutSize: NSCollectionLayoutSize { @objc get }

  /**
    - jsName: supplementaryItems
    - name: supplementaryItems
    - argLabels: 
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
