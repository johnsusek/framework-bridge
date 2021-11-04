import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScrubberFlowLayout
    - Introduced: 10.12.2
  */

@objc(NSScrubberFlowLayout) protocol NSScrubberFlowLayoutExports: JSExport, NSScrubberLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: invalidateLayoutForItemsAtIndexes:
  */
  @objc (invalidateLayoutForItemsAtIndexes:) func invalidateLayoutForItems(at: IndexSet)

  // Own Instance Properties

  /**
    - Selector: itemSize
  */
  @objc var itemSize: CGSize { @objc get @objc (setItemSize:) set }

  /**
    - Selector: itemSpacing
  */
  @objc var itemSpacing: CGFloat { @objc get @objc (setItemSpacing:) set }
}

extension NSScrubberFlowLayout: NSScrubberFlowLayoutExports {
}
