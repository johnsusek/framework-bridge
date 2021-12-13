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
    - Selector: NSCollectionViewLayout
    - Introduced: 10.11
  */

@objc(NSCollectionViewLayout) protocol NSCollectionViewLayoutExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: invalidationContextClass
  */
  @objc static var invalidationContextClass: AnyClass { @objc get }

  /**
    - Selector: layoutAttributesClass
  */
  @objc static var layoutAttributesClass: AnyClass { @objc get }

  // Instance Methods

  /**
    - Selector: finalLayoutAttributesForDisappearingDecorationElementOfKind:atIndexPath:
  */
  @objc (finalLayoutAttributesForDisappearingDecorationElementOfKind:atIndexPath:) func finalLayoutAttributesForDisappearingDecorationElement(ofKind: NSCollectionView.DecorationElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: finalLayoutAttributesForDisappearingItemAtIndexPath:
  */
  @objc (finalLayoutAttributesForDisappearingItemAtIndexPath:) func finalLayoutAttributesForDisappearingItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: finalLayoutAttributesForDisappearingSupplementaryElementOfKind:atIndexPath:
  */
  @objc (finalLayoutAttributesForDisappearingSupplementaryElementOfKind:atIndexPath:) func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: finalizeAnimatedBoundsChange
  */
  @objc func finalizeAnimatedBoundsChange()

  /**
    - Selector: finalizeCollectionViewUpdates
  */
  @objc func finalizeCollectionViewUpdates()

  /**
    - Selector: finalizeLayoutTransition
  */
  @objc func finalizeLayoutTransition()

  /**
    - Selector: indexPathsToDeleteForDecorationViewOfKind:
  */
  @objc (indexPathsToDeleteForDecorationViewOfKind:) func indexPathsToDeleteForDecorationView(ofKind: NSCollectionView.DecorationElementKind) -> Set<IndexPath>

  /**
    - Selector: indexPathsToDeleteForSupplementaryViewOfKind:
  */
  @objc (indexPathsToDeleteForSupplementaryViewOfKind:) func indexPathsToDeleteForSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>

  /**
    - Selector: indexPathsToInsertForDecorationViewOfKind:
  */
  @objc (indexPathsToInsertForDecorationViewOfKind:) func indexPathsToInsertForDecorationView(ofKind: NSCollectionView.DecorationElementKind) -> Set<IndexPath>

  /**
    - Selector: indexPathsToInsertForSupplementaryViewOfKind:
  */
  @objc (indexPathsToInsertForSupplementaryViewOfKind:) func indexPathsToInsertForSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>

  /**
    - Selector: initialLayoutAttributesForAppearingDecorationElementOfKind:atIndexPath:
  */
  @objc (initialLayoutAttributesForAppearingDecorationElementOfKind:atIndexPath:) func initialLayoutAttributesForAppearingDecorationElement(ofKind: NSCollectionView.DecorationElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: initialLayoutAttributesForAppearingItemAtIndexPath:
  */
  @objc (initialLayoutAttributesForAppearingItemAtIndexPath:) func initialLayoutAttributesForAppearingItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: initialLayoutAttributesForAppearingSupplementaryElementOfKind:atIndexPath:
  */
  @objc (initialLayoutAttributesForAppearingSupplementaryElementOfKind:atIndexPath:) func initialLayoutAttributesForAppearingSupplementaryElement(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: invalidateLayout
  */
  @objc func invalidateLayout()

  /**
    - Selector: invalidateLayoutWithContext:
  */
  @objc (invalidateLayoutWithContext:) func invalidateLayout(with: NSCollectionViewLayoutInvalidationContext)

  /**
    - Selector: invalidationContextForBoundsChange:
  */
  @objc (invalidationContextForBoundsChange:) func invalidationContext(forBoundsChange: CGRect) -> NSCollectionViewLayoutInvalidationContext

  /**
    - Selector: invalidationContextForPreferredLayoutAttributes:withOriginalAttributes:
  */
  @objc (invalidationContextForPreferredLayoutAttributes:withOriginalAttributes:) func invalidationContext(forPreferredLayoutAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext

  /**
    - Selector: layoutAttributesForDecorationViewOfKind:atIndexPath:
  */
  @objc (layoutAttributesForDecorationViewOfKind:atIndexPath:) func layoutAttributesForDecorationView(ofKind: NSCollectionView.DecorationElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: layoutAttributesForDropTargetAtPoint:
  */
  @objc (layoutAttributesForDropTargetAtPoint:) func layoutAttributesForDropTarget(at: CGPoint) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: layoutAttributesForElementsInRect:
  */
  @objc (layoutAttributesForElementsInRect:) func layoutAttributesForElements(in: CGRect) -> [NSCollectionViewLayoutAttributes]

  /**
    - Selector: layoutAttributesForInterItemGapBeforeIndexPath:
  */
  @objc (layoutAttributesForInterItemGapBeforeIndexPath:) func layoutAttributesForInterItemGap(before: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: layoutAttributesForItemAtIndexPath:
  */
  @objc (layoutAttributesForItemAtIndexPath:) func layoutAttributesForItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: layoutAttributesForSupplementaryViewOfKind:atIndexPath:
  */
  @objc (layoutAttributesForSupplementaryViewOfKind:atIndexPath:) func layoutAttributesForSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - Selector: prepareForAnimatedBoundsChange:
  */
  @objc (prepareForAnimatedBoundsChange:) func prepare(forAnimatedBoundsChange: CGRect)

  /**
    - Selector: prepareForCollectionViewUpdates:
  */
  @objc (prepareForCollectionViewUpdates:) func prepare(forCollectionViewUpdates: [NSCollectionViewUpdateItem])

  /**
    - Selector: prepareForTransitionFromLayout:
  */
  @objc (prepareForTransitionFromLayout:) func prepareForTransition(from: NSCollectionViewLayout)

  /**
    - Selector: prepareForTransitionToLayout:
  */
  @objc (prepareForTransitionToLayout:) func prepareForTransition(to: NSCollectionViewLayout)

  /**
    - Selector: prepareLayout
  */
  @objc (prepareLayout) func prepare()

  /**
    - Selector: registerClass:forDecorationViewOfKind:
  */
  @objc (registerClass:forDecorationViewOfKind:) func register(_ p0: AnyClass?, forDecorationViewOfKind: NSCollectionView.DecorationElementKind)

  /**
    - Selector: registerNib:forDecorationViewOfKind:
  */
  @objc (registerNib:forDecorationViewOfKind:) func register(_ p0: NSNib?, forDecorationViewOfKind: NSCollectionView.DecorationElementKind)

  /**
    - Selector: shouldInvalidateLayoutForBoundsChange:
  */
  @objc (shouldInvalidateLayoutForBoundsChange:) func shouldInvalidateLayout(forBoundsChange: CGRect) -> Bool

  /**
    - Selector: shouldInvalidateLayoutForPreferredLayoutAttributes:withOriginalAttributes:
  */
  @objc (shouldInvalidateLayoutForPreferredLayoutAttributes:withOriginalAttributes:) func shouldInvalidateLayout(forPreferredLayoutAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes: NSCollectionViewLayoutAttributes) -> Bool

  /**
    - Selector: targetContentOffsetForProposedContentOffset:
  */
  @objc (targetContentOffsetForProposedContentOffset:) func targetContentOffset(forProposedContentOffset: CGPoint) -> CGPoint

  /**
    - Selector: targetContentOffsetForProposedContentOffset:withScrollingVelocity:
  */
  @objc (targetContentOffsetForProposedContentOffset:withScrollingVelocity:) func targetContentOffset(forProposedContentOffset: CGPoint, withScrollingVelocity: CGPoint) -> CGPoint

  // Own Instance Properties

  /**
    - Selector: collectionView
  */
  @objc var collectionView: NSCollectionView? { @objc get }

  /**
    - Selector: collectionViewContentSize
  */
  @objc var collectionViewContentSize: CGSize { @objc get }
}

extension NSCollectionViewLayout: NSCollectionViewLayoutExports {
}
