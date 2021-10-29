import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutBoundarySupplementaryItem
    - name: NSCollectionLayoutBoundarySupplementaryItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutBoundarySupplementaryItem) protocol NSCollectionLayoutBoundarySupplementaryItemExports: JSExport, NSCollectionLayoutSupplementaryItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: boundarySupplementaryItemWithLayoutSize:elementKind:alignment:
    - argLabels: layoutSize, elementKind, alignment
    - constructorTokens: 
    - unavailable: true
    - renamed: init(layoutSize:elementKind:alignment:)
    - message: Not available in Swift
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment) -> Self

  /**
    - jsName: create
    - name: boundarySupplementaryItemWithLayoutSize:elementKind:alignment:absoluteOffset:
    - argLabels: layoutSize, elementKind, alignment, absoluteOffset
    - constructorTokens: 
    - unavailable: true
    - renamed: init(layoutSize:elementKind:alignment:absoluteOffset:)
    - message: Not available in Swift
  */
  @objc static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment, absoluteOffset: CGPoint) -> Self

  // Own Instance Properties

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSRectAlignment { @objc get }

  /**
    - jsName: extendsBoundary
    - name: extendsBoundary
    - argLabels: 
  */
  @objc var extendsBoundary: Bool { @objc get @objc (setExtendsBoundary:) set }

  /**
    - jsName: offset
    - name: offset
    - argLabels: 
  */
  @objc var offset: CGPoint { @objc get }

  /**
    - jsName: pinToVisibleBounds
    - name: pinToVisibleBounds
    - argLabels: 
  */
  @objc var pinToVisibleBounds: Bool { @objc get @objc (setPinToVisibleBounds:) set }
}

extension NSCollectionLayoutBoundarySupplementaryItem: NSCollectionLayoutBoundarySupplementaryItemExports {
  @objc public static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, alignment: alignment)
  }

  @objc public static func create(layoutSize: NSCollectionLayoutSize, elementKind: String, alignment: NSRectAlignment, absoluteOffset: CGPoint) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, alignment: alignment, absoluteOffset: absoluteOffset)
  }

}
