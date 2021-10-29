import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewLayoutAttributes
    - name: NSCollectionViewLayoutAttributes
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSCollectionViewLayoutAttributes) protocol NSCollectionViewLayoutAttributesExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: layoutAttributesForDecorationViewOfKind:withIndexPath:
    - argLabels: forDecorationViewOfKind, with
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forDecorationViewOfKind:with:)
    - message: Not available in Swift
  */
  @objc static func create(forDecorationViewOfKind: NSCollectionView.DecorationElementKind, with: IndexPath) -> Self

  /**
    - jsName: create
    - name: layoutAttributesForInterItemGapBeforeIndexPath:
    - argLabels: forInterItemGapBefore
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forInterItemGapBefore:)
    - message: Not available in Swift
  */
  @objc static func create(forInterItemGapBefore: IndexPath) -> Self

  /**
    - jsName: create
    - name: layoutAttributesForItemWithIndexPath:
    - argLabels: forItemWith
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forItemWith:)
    - message: Not available in Swift
  */
  @objc static func create(forItemWith: IndexPath) -> Self

  /**
    - jsName: create
    - name: layoutAttributesForSupplementaryViewOfKind:withIndexPath:
    - argLabels: forSupplementaryViewOfKind, with
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forSupplementaryViewOfKind:with:)
    - message: Not available in Swift
  */
  @objc static func create(forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, with: IndexPath) -> Self

  // Own Instance Properties

  /**
    - jsName: alpha
    - name: alpha
    - argLabels: 
  */
  @objc var alpha: CGFloat { @objc get @objc (setAlpha:) set }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isHidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: indexPath
    - name: indexPath
    - argLabels: 
  */
  @objc var indexPath: IndexPath? { @objc get @objc (setIndexPath:) set }

  /**
    - jsName: representedElementCategory
    - name: representedElementCategory
    - argLabels: 
  */
  @objc var representedElementCategory: NSCollectionElementCategory { @objc get }

  /**
    - jsName: representedElementKind
    - name: representedElementKind
    - argLabels: 
  */
  @objc var representedElementKind: String? { @objc get }

  /**
    - jsName: size
    - name: size
    - argLabels: 
  */
  @objc var size: CGSize { @objc get @objc (setSize:) set }

  /**
    - jsName: zIndex
    - name: zIndex
    - argLabels: 
  */
  @objc var zIndex: Int { @objc get @objc (setZIndex:) set }
}

extension NSCollectionViewLayoutAttributes: NSCollectionViewLayoutAttributesExports {
  @objc public static func create(forDecorationViewOfKind: NSCollectionView.DecorationElementKind, with: IndexPath) -> Self {
    return self.init(forDecorationViewOfKind: forDecorationViewOfKind, with: with)
  }

  @objc public static func create(forInterItemGapBefore: IndexPath) -> Self {
    return self.init(forInterItemGapBefore: forInterItemGapBefore)
  }

  @objc public static func create(forItemWith: IndexPath) -> Self {
    return self.init(forItemWith: forItemWith)
  }

  @objc public static func create(forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, with: IndexPath) -> Self {
    return self.init(forSupplementaryViewOfKind: forSupplementaryViewOfKind, with: with)
  }

}
