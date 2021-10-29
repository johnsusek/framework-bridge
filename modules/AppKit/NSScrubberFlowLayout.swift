import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberFlowLayout
    - name: NSScrubberFlowLayout
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberFlowLayout) protocol NSScrubberFlowLayoutExports: JSExport, NSScrubberLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: invalidateLayoutForItems
    - name: invalidateLayoutForItemsAtIndexes:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateLayoutForItems(at:)
  */
  @objc (invalidateLayoutForItemsAtIndexes:) func invalidateLayoutForItems(at: IndexSet)

  // Own Instance Properties

  /**
    - jsName: itemSize
    - name: itemSize
    - argLabels: 
  */
  @objc var itemSize: CGSize { @objc get @objc (setItemSize:) set }

  /**
    - jsName: itemSpacing
    - name: itemSpacing
    - argLabels: 
  */
  @objc var itemSpacing: CGFloat { @objc get @objc (setItemSpacing:) set }
}

extension NSScrubberFlowLayout: NSScrubberFlowLayoutExports {
}
