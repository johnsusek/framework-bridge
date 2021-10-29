import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewLayout
    - name: NSCollectionViewLayout
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSCollectionViewLayout) protocol NSCollectionViewLayoutExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: invalidationContextClass
    - name: invalidationContextClass
    - argLabels: 
  */
  @objc static var invalidationContextClass: AnyClass { @objc get }

  /**
    - jsName: layoutAttributesClass
    - name: layoutAttributesClass
    - argLabels: 
  */
  @objc static var layoutAttributesClass: AnyClass { @objc get }

  // Instance Methods

  /**
    - jsName: finalLayoutAttributesForDisappearingDecorationElement
    - name: finalLayoutAttributesForDisappearingDecorationElementOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: finalLayoutAttributesForDisappearingDecorationElement(ofKind:at:)
  */
  @objc (finalLayoutAttributesForDisappearingDecorationElementOfKind:atIndexPath:) func finalLayoutAttributesForDisappearingDecorationElement(ofKind: NSCollectionView.DecorationElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: finalLayoutAttributesForDisappearingItem
    - name: finalLayoutAttributesForDisappearingItemAtIndexPath:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: finalLayoutAttributesForDisappearingItem(at:)
  */
  @objc (finalLayoutAttributesForDisappearingItemAtIndexPath:) func finalLayoutAttributesForDisappearingItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: finalLayoutAttributesForDisappearingSupplementaryElement
    - name: finalLayoutAttributesForDisappearingSupplementaryElementOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: finalLayoutAttributesForDisappearingSupplementaryElement(ofKind:at:)
  */
  @objc (finalLayoutAttributesForDisappearingSupplementaryElementOfKind:atIndexPath:) func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: finalizeAnimatedBoundsChange
    - name: finalizeAnimatedBoundsChange
    - argLabels: 
    - constructorTokens: 
  */
  @objc func finalizeAnimatedBoundsChange()

  /**
    - jsName: finalizeCollectionViewUpdates
    - name: finalizeCollectionViewUpdates
    - argLabels: 
    - constructorTokens: 
  */
  @objc func finalizeCollectionViewUpdates()

  /**
    - jsName: finalizeLayoutTransition
    - name: finalizeLayoutTransition
    - argLabels: 
    - constructorTokens: 
  */
  @objc func finalizeLayoutTransition()

  /**
    - jsName: indexPathsToDeleteForDecorationView
    - name: indexPathsToDeleteForDecorationViewOfKind:
    - argLabels: ofKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexPathsToDeleteForDecorationView(ofKind:)
  */
  @objc (indexPathsToDeleteForDecorationViewOfKind:) func indexPathsToDeleteForDecorationView(ofKind: NSCollectionView.DecorationElementKind) -> Set<IndexPath>

  /**
    - jsName: indexPathsToDeleteForSupplementaryView
    - name: indexPathsToDeleteForSupplementaryViewOfKind:
    - argLabels: ofKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexPathsToDeleteForSupplementaryView(ofKind:)
  */
  @objc (indexPathsToDeleteForSupplementaryViewOfKind:) func indexPathsToDeleteForSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>

  /**
    - jsName: indexPathsToInsertForDecorationView
    - name: indexPathsToInsertForDecorationViewOfKind:
    - argLabels: ofKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexPathsToInsertForDecorationView(ofKind:)
  */
  @objc (indexPathsToInsertForDecorationViewOfKind:) func indexPathsToInsertForDecorationView(ofKind: NSCollectionView.DecorationElementKind) -> Set<IndexPath>

  /**
    - jsName: indexPathsToInsertForSupplementaryView
    - name: indexPathsToInsertForSupplementaryViewOfKind:
    - argLabels: ofKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexPathsToInsertForSupplementaryView(ofKind:)
  */
  @objc (indexPathsToInsertForSupplementaryViewOfKind:) func indexPathsToInsertForSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>

  /**
    - jsName: initialLayoutAttributesForAppearingDecorationElement
    - name: initialLayoutAttributesForAppearingDecorationElementOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: initialLayoutAttributesForAppearingDecorationElement(ofKind:at:)
  */
  @objc (initialLayoutAttributesForAppearingDecorationElementOfKind:atIndexPath:) func initialLayoutAttributesForAppearingDecorationElement(ofKind: NSCollectionView.DecorationElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: initialLayoutAttributesForAppearingItem
    - name: initialLayoutAttributesForAppearingItemAtIndexPath:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: initialLayoutAttributesForAppearingItem(at:)
  */
  @objc (initialLayoutAttributesForAppearingItemAtIndexPath:) func initialLayoutAttributesForAppearingItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: initialLayoutAttributesForAppearingSupplementaryElement
    - name: initialLayoutAttributesForAppearingSupplementaryElementOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: initialLayoutAttributesForAppearingSupplementaryElement(ofKind:at:)
  */
  @objc (initialLayoutAttributesForAppearingSupplementaryElementOfKind:atIndexPath:) func initialLayoutAttributesForAppearingSupplementaryElement(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: invalidateLayout
    - name: invalidateLayout
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateLayout()

  /**
    - jsName: invalidateLayout
    - name: invalidateLayoutWithContext:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateLayout(with:)
  */
  @objc (invalidateLayoutWithContext:) func invalidateLayout(with: NSCollectionViewLayoutInvalidationContext)

  /**
    - jsName: invalidationContext
    - name: invalidationContextForBoundsChange:
    - argLabels: forBoundsChange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidationContext(forBoundsChange:)
  */
  @objc (invalidationContextForBoundsChange:) func invalidationContext(forBoundsChange: CGRect) -> NSCollectionViewLayoutInvalidationContext

  /**
    - jsName: invalidationContext
    - name: invalidationContextForPreferredLayoutAttributes:withOriginalAttributes:
    - argLabels: forPreferredLayoutAttributes, withOriginalAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidationContext(forPreferredLayoutAttributes:withOriginalAttributes:)
  */
  @objc (invalidationContextForPreferredLayoutAttributes:withOriginalAttributes:) func invalidationContext(forPreferredLayoutAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext

  /**
    - jsName: layoutAttributesForDecorationView
    - name: layoutAttributesForDecorationViewOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForDecorationView(ofKind:at:)
  */
  @objc (layoutAttributesForDecorationViewOfKind:atIndexPath:) func layoutAttributesForDecorationView(ofKind: NSCollectionView.DecorationElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: layoutAttributesForDropTarget
    - name: layoutAttributesForDropTargetAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForDropTarget(at:)
  */
  @objc (layoutAttributesForDropTargetAtPoint:) func layoutAttributesForDropTarget(at: CGPoint) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: layoutAttributesForElements
    - name: layoutAttributesForElementsInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForElements(in:)
  */
  @objc (layoutAttributesForElementsInRect:) func layoutAttributesForElements(in: CGRect) -> [NSCollectionViewLayoutAttributes]

  /**
    - jsName: layoutAttributesForInterItemGap
    - name: layoutAttributesForInterItemGapBeforeIndexPath:
    - argLabels: before
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForInterItemGap(before:)
  */
  @objc (layoutAttributesForInterItemGapBeforeIndexPath:) func layoutAttributesForInterItemGap(before: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: layoutAttributesForItem
    - name: layoutAttributesForItemAtIndexPath:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForItem(at:)
  */
  @objc (layoutAttributesForItemAtIndexPath:) func layoutAttributesForItem(at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: layoutAttributesForSupplementaryView
    - name: layoutAttributesForSupplementaryViewOfKind:atIndexPath:
    - argLabels: ofKind, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForSupplementaryView(ofKind:at:)
  */
  @objc (layoutAttributesForSupplementaryViewOfKind:atIndexPath:) func layoutAttributesForSupplementaryView(ofKind: NSCollectionView.SupplementaryElementKind, at: IndexPath) -> NSCollectionViewLayoutAttributes?

  /**
    - jsName: prepare
    - name: prepareForAnimatedBoundsChange:
    - argLabels: forAnimatedBoundsChange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepare(forAnimatedBoundsChange:)
  */
  @objc (prepareForAnimatedBoundsChange:) func prepare(forAnimatedBoundsChange: CGRect)

  /**
    - jsName: prepare
    - name: prepareForCollectionViewUpdates:
    - argLabels: forCollectionViewUpdates
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepare(forCollectionViewUpdates:)
  */
  @objc (prepareForCollectionViewUpdates:) func prepare(forCollectionViewUpdates: [NSCollectionViewUpdateItem])

  /**
    - jsName: prepareForTransition
    - name: prepareForTransitionFromLayout:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepareForTransition(from:)
  */
  @objc (prepareForTransitionFromLayout:) func prepareForTransition(from: NSCollectionViewLayout)

  /**
    - jsName: prepareForTransition
    - name: prepareForTransitionToLayout:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepareForTransition(to:)
  */
  @objc (prepareForTransitionToLayout:) func prepareForTransition(to: NSCollectionViewLayout)

  /**
    - jsName: prepare
    - name: prepareLayout
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepare()
  */
  @objc (prepareLayout) func prepare()

  /**
    - jsName: register
    - name: registerClass:forDecorationViewOfKind:
    - argLabels: _, forDecorationViewOfKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:forDecorationViewOfKind:)
  */
  @objc (registerClass:forDecorationViewOfKind:) func register(_: AnyClass?, forDecorationViewOfKind: NSCollectionView.DecorationElementKind)

  /**
    - jsName: register
    - name: registerNib:forDecorationViewOfKind:
    - argLabels: _, forDecorationViewOfKind
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:forDecorationViewOfKind:)
  */
  @objc (registerNib:forDecorationViewOfKind:) func register(_: NSNib?, forDecorationViewOfKind: NSCollectionView.DecorationElementKind)

  /**
    - jsName: shouldInvalidateLayout
    - name: shouldInvalidateLayoutForBoundsChange:
    - argLabels: forBoundsChange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldInvalidateLayout(forBoundsChange:)
  */
  @objc (shouldInvalidateLayoutForBoundsChange:) func shouldInvalidateLayout(forBoundsChange: CGRect) -> Bool

  /**
    - jsName: shouldInvalidateLayout
    - name: shouldInvalidateLayoutForPreferredLayoutAttributes:withOriginalAttributes:
    - argLabels: forPreferredLayoutAttributes, withOriginalAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldInvalidateLayout(forPreferredLayoutAttributes:withOriginalAttributes:)
  */
  @objc (shouldInvalidateLayoutForPreferredLayoutAttributes:withOriginalAttributes:) func shouldInvalidateLayout(forPreferredLayoutAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes: NSCollectionViewLayoutAttributes) -> Bool

  /**
    - jsName: targetContentOffset
    - name: targetContentOffsetForProposedContentOffset:
    - argLabels: forProposedContentOffset
    - constructorTokens: 
    - obsoleted: 3
    - renamed: targetContentOffset(forProposedContentOffset:)
  */
  @objc (targetContentOffsetForProposedContentOffset:) func targetContentOffset(forProposedContentOffset: CGPoint) -> CGPoint

  /**
    - jsName: targetContentOffset
    - name: targetContentOffsetForProposedContentOffset:withScrollingVelocity:
    - argLabels: forProposedContentOffset, withScrollingVelocity
    - constructorTokens: 
    - obsoleted: 3
    - renamed: targetContentOffset(forProposedContentOffset:withScrollingVelocity:)
  */
  @objc (targetContentOffsetForProposedContentOffset:withScrollingVelocity:) func targetContentOffset(forProposedContentOffset: CGPoint, withScrollingVelocity: CGPoint) -> CGPoint

  // Own Instance Properties

  /**
    - jsName: collectionView
    - name: collectionView
    - argLabels: 
  */
  @objc var collectionView: NSCollectionView? { @objc get }

  /**
    - jsName: collectionViewContentSize
    - name: collectionViewContentSize
    - argLabels: 
  */
  @objc var collectionViewContentSize: CGSize { @objc get }
}

extension NSCollectionViewLayout: NSCollectionViewLayoutExports {
}
