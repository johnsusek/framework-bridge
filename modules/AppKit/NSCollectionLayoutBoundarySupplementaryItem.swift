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
    - Selector: NSCollectionLayoutBoundarySupplementaryItem
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutBoundarySupplementaryItem) protocol NSCollectionLayoutBoundarySupplementaryItemExports: JSExport, NSCollectionLayoutSupplementaryItemExports {
  // Static Methods

  /**
    - Selector: boundarySupplementaryItemWithLayoutSize:elementKind:alignment:
  */
  @objc static func createWithBoundarySupplementaryItemWithLayoutSizeWithElementKindWithAlignment(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ alignment: NSRectAlignment) -> Self

  /**
    - Selector: boundarySupplementaryItemWithLayoutSize:elementKind:alignment:absoluteOffset:
  */
  @objc static func createWithBoundarySupplementaryItemWithLayoutSizeWithElementKindWithAlignmentWithAbsoluteOffset(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ alignment: NSRectAlignment, _ absoluteOffset: CGPoint) -> Self

  // Own Instance Properties

  /**
    - Selector: alignment
  */
  @objc var alignment: NSRectAlignment { @objc get }

  /**
    - Selector: extendsBoundary
  */
  @objc var extendsBoundary: Bool { @objc get @objc (setExtendsBoundary:) set }

  /**
    - Selector: offset
  */
  @objc var offset: CGPoint { @objc get }

  /**
    - Selector: pinToVisibleBounds
  */
  @objc var pinToVisibleBounds: Bool { @objc get @objc (setPinToVisibleBounds:) set }
}

extension NSCollectionLayoutBoundarySupplementaryItem: NSCollectionLayoutBoundarySupplementaryItemExports {

  /**
    - Selector: boundarySupplementaryItemWithLayoutSize:elementKind:alignment:
  */
  @objc public static func createWithBoundarySupplementaryItemWithLayoutSizeWithElementKindWithAlignment(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ alignment: NSRectAlignment) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, alignment: alignment)
  }


  /**
    - Selector: boundarySupplementaryItemWithLayoutSize:elementKind:alignment:absoluteOffset:
  */
  @objc public static func createWithBoundarySupplementaryItemWithLayoutSizeWithElementKindWithAlignmentWithAbsoluteOffset(_ layoutSize: NSCollectionLayoutSize, _ elementKind: String, _ alignment: NSRectAlignment, _ absoluteOffset: CGPoint) -> Self {
    return self.init(layoutSize: layoutSize, elementKind: elementKind, alignment: alignment, absoluteOffset: absoluteOffset)
  }

}
