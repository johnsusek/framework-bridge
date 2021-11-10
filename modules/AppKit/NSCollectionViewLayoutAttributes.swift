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
    - Selector: NSCollectionViewLayoutAttributes
    - Introduced: 10.11
  */

@objc(NSCollectionViewLayoutAttributes) protocol NSCollectionViewLayoutAttributesExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: layoutAttributesForDecorationViewOfKind:withIndexPath:
  */
  @objc static func createWithLayoutAttributesForDecorationViewOfKindWithIndexPath(_ forDecorationViewOfKind: NSCollectionView.DecorationElementKind, _ with: IndexPath) -> Self

  /**
    - Selector: layoutAttributesForInterItemGapBeforeIndexPath:
  */
  @objc static func createWithLayoutAttributesForInterItemGapBeforeIndexPath(_ forInterItemGapBefore: IndexPath) -> Self

  /**
    - Selector: layoutAttributesForItemWithIndexPath:
  */
  @objc static func createWithLayoutAttributesForItemWithIndexPath(_ forItemWith: IndexPath) -> Self

  /**
    - Selector: layoutAttributesForSupplementaryViewOfKind:withIndexPath:
  */
  @objc static func createWithLayoutAttributesForSupplementaryViewOfKindWithIndexPath(_ forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, _ with: IndexPath) -> Self

  // Own Instance Properties

  /**
    - Selector: alpha
  */
  @objc var alpha: CGFloat { @objc get @objc (setAlpha:) set }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - Selector: hidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: indexPath
  */
  @objc var indexPath: IndexPath? { @objc get @objc (setIndexPath:) set }

  /**
    - Selector: representedElementCategory
  */
  @objc var representedElementCategory: NSCollectionElementCategory { @objc get }

  /**
    - Selector: representedElementKind
  */
  @objc var representedElementKind: String? { @objc get }

  /**
    - Selector: size
  */
  @objc var size: CGSize { @objc get @objc (setSize:) set }

  /**
    - Selector: zIndex
  */
  @objc var zIndex: Int { @objc get @objc (setZIndex:) set }
}

extension NSCollectionViewLayoutAttributes: NSCollectionViewLayoutAttributesExports {

  /**
    - Selector: layoutAttributesForDecorationViewOfKind:withIndexPath:
  */
  @objc public static func createWithLayoutAttributesForDecorationViewOfKindWithIndexPath(_ forDecorationViewOfKind: NSCollectionView.DecorationElementKind, _ with: IndexPath) -> Self {
    return self.init(forDecorationViewOfKind: forDecorationViewOfKind, with: with)
  }


  /**
    - Selector: layoutAttributesForInterItemGapBeforeIndexPath:
  */
  @objc public static func createWithLayoutAttributesForInterItemGapBeforeIndexPath(_ forInterItemGapBefore: IndexPath) -> Self {
    return self.init(forInterItemGapBefore: forInterItemGapBefore)
  }


  /**
    - Selector: layoutAttributesForItemWithIndexPath:
  */
  @objc public static func createWithLayoutAttributesForItemWithIndexPath(_ forItemWith: IndexPath) -> Self {
    return self.init(forItemWith: forItemWith)
  }


  /**
    - Selector: layoutAttributesForSupplementaryViewOfKind:withIndexPath:
  */
  @objc public static func createWithLayoutAttributesForSupplementaryViewOfKindWithIndexPath(_ forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, _ with: IndexPath) -> Self {
    return self.init(forSupplementaryViewOfKind: forSupplementaryViewOfKind, with: with)
  }

}
