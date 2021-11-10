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
    - Selector: NSTableHeaderCell
  */

@objc(NSTableHeaderCell) protocol NSTableHeaderCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: drawSortIndicatorWithFrame:inView:ascending:priority:
  */
  @objc (drawSortIndicatorWithFrame:inView:ascending:priority:) func drawSortIndicator(withFrame: CGRect, in: NSView, ascending: Bool, priority: Int)

  /**
    - Selector: sortIndicatorRectForBounds:
  */
  @objc (sortIndicatorRectForBounds:) func sortIndicatorRect(forBounds: CGRect) -> CGRect
}

extension NSTableHeaderCell: NSTableHeaderCellExports {
}
