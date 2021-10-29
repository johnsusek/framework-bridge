import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutSupplementaryItem
    - name: NSCollectionLayoutSupplementaryItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSupplementaryItem) protocol NSCollectionLayoutSupplementaryItemExports: JSExport, NSCollectionLayoutItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: supplementaryItemWithLayoutSize:elementKind:containerAnchor:
    - argLabels: layoutSize, elementKind, containerAnchor
    - constructorTokens: 
    - unavailable: true
    - renamed: init(layoutSize:elementKind:containerAnchor:)
    - message: Not available in Swift
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor) -> Self

  /**
    - jsName: create
    - name: supplementaryItemWithLayoutSize:elementKind:containerAnchor:itemAnchor:
    - argLabels: layoutSize, elementKind, containerAnchor, itemAnchor
    - constructorTokens: 
    - unavailable: true
    - renamed: init(layoutSize:elementKind:containerAnchor:itemAnchor:)
    - message: Not available in Swift
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor) -> Self

  // Own Instance Properties

  /**
    - jsName: containerAnchor
    - name: containerAnchor
    - argLabels: 
  */
  @objc var containerAnchor: NSCollectionLayoutAnchor { @objc get }

  /**
    - jsName: elementKind
    - name: elementKind
    - argLabels: 
  */
  @objc var elementKind: String { @objc get }

  /**
    - jsName: itemAnchor
    - name: itemAnchor
    - argLabels: 
  */
  @objc var itemAnchor: NSCollectionLayoutAnchor? { @objc get }

  /**
    - jsName: zIndex
    - name: zIndex
    - argLabels: 
  */
  @objc var zIndex: Int { @objc get @objc (setZIndex:) set }
}

extension NSCollectionLayoutSupplementaryItem: NSCollectionLayoutSupplementaryItemExports {
  @objc public static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, containerAnchor: containerAnchor)
  }

  @objc public static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, containerAnchor: NSCollectionLayoutAnchor, itemAnchor: NSCollectionLayoutAnchor) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, containerAnchor: containerAnchor, itemAnchor: itemAnchor)
  }

}
