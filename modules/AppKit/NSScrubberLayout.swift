import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScrubberLayout
    - Introduced: 10.12.2
  */

@objc(NSScrubberLayout) protocol NSScrubberLayoutExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: layoutAttributesClass
  */
  @objc static var layoutAttributesClass: AnyClass { @objc get }

  // Instance Methods

  /**
    - Selector: invalidateLayout
  */
  @objc func invalidateLayout()

  /**
    - Selector: layoutAttributesForItemAtIndex:
  */
  @objc (layoutAttributesForItemAtIndex:) func layoutAttributesForItem(at: Int) -> NSScrubberLayoutAttributes?

  /**
    - Selector: layoutAttributesForItemsInRect:
  */
  @objc (layoutAttributesForItemsInRect:) func layoutAttributesForItems(in: CGRect) -> Set<NSScrubberLayoutAttributes>

  /**
    - Selector: prepareLayout
  */
  @objc (prepareLayout) func prepare()

  /**
    - Selector: shouldInvalidateLayoutForChangeFromVisibleRect:toVisibleRect:
  */
  @objc (shouldInvalidateLayoutForChangeFromVisibleRect:toVisibleRect:) func shouldInvalidateLayoutForChange(fromVisibleRect: CGRect, toVisibleRect: CGRect) -> Bool

  // Own Instance Properties

  /**
    - Selector: automaticallyMirrorsInRightToLeftLayout
  */
  @objc var automaticallyMirrorsInRightToLeftLayout: Bool { @objc get }

  /**
    - Selector: scrubber
  */
  @objc var scrubber: NSScrubber? { @objc get }

  /**
    - Selector: scrubberContentSize
  */
  @objc var scrubberContentSize: CGSize { @objc get }

  /**
    - Selector: shouldInvalidateLayoutForHighlightChange
  */
  @objc var shouldInvalidateLayoutForHighlightChange: Bool { @objc get }

  /**
    - Selector: shouldInvalidateLayoutForSelectionChange
  */
  @objc var shouldInvalidateLayoutForSelectionChange: Bool { @objc get }

  /**
    - Selector: visibleRect
  */
  @objc var visibleRect: CGRect { @objc get }
}

extension NSScrubberLayout: NSScrubberLayoutExports {
}
