import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberLayout
    - name: NSScrubberLayout
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberLayout) protocol NSScrubberLayoutExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: layoutAttributesClass
    - name: layoutAttributesClass
    - argLabels: 
  */
  @objc static var layoutAttributesClass: AnyClass { @objc get }

  // Instance Methods

  /**
    - jsName: invalidateLayout
    - name: invalidateLayout
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateLayout()

  /**
    - jsName: layoutAttributesForItem
    - name: layoutAttributesForItemAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForItem(at:)
  */
  @objc (layoutAttributesForItemAtIndex:) func layoutAttributesForItem(at: Int) -> NSScrubberLayoutAttributes?

  /**
    - jsName: layoutAttributesForItems
    - name: layoutAttributesForItemsInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: layoutAttributesForItems(in:)
  */
  @objc (layoutAttributesForItemsInRect:) func layoutAttributesForItems(in: CGRect) -> Set<NSScrubberLayoutAttributes>

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
    - jsName: shouldInvalidateLayoutForChange
    - name: shouldInvalidateLayoutForChangeFromVisibleRect:toVisibleRect:
    - argLabels: fromVisibleRect, toVisibleRect
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldInvalidateLayoutForChange(fromVisibleRect:toVisibleRect:)
  */
  @objc (shouldInvalidateLayoutForChangeFromVisibleRect:toVisibleRect:) func shouldInvalidateLayoutForChange(fromVisibleRect: CGRect, toVisibleRect: CGRect) -> Bool

  // Own Instance Properties

  /**
    - jsName: automaticallyMirrorsInRightToLeftLayout
    - name: automaticallyMirrorsInRightToLeftLayout
    - argLabels: 
  */
  @objc var automaticallyMirrorsInRightToLeftLayout: Bool { @objc get }

  /**
    - jsName: scrubber
    - name: scrubber
    - argLabels: 
  */
  @objc var scrubber: NSScrubber? { @objc get }

  /**
    - jsName: scrubberContentSize
    - name: scrubberContentSize
    - argLabels: 
  */
  @objc var scrubberContentSize: CGSize { @objc get }

  /**
    - jsName: shouldInvalidateLayoutForHighlightChange
    - name: shouldInvalidateLayoutForHighlightChange
    - argLabels: 
  */
  @objc var shouldInvalidateLayoutForHighlightChange: Bool { @objc get }

  /**
    - jsName: shouldInvalidateLayoutForSelectionChange
    - name: shouldInvalidateLayoutForSelectionChange
    - argLabels: 
  */
  @objc var shouldInvalidateLayoutForSelectionChange: Bool { @objc get }

  /**
    - jsName: visibleRect
    - name: visibleRect
    - argLabels: 
  */
  @objc var visibleRect: CGRect { @objc get }
}

extension NSScrubberLayout: NSScrubberLayoutExports {
}
