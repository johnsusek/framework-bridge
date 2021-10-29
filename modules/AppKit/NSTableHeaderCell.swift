import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableHeaderCell
    - name: NSTableHeaderCell
    - argLabels: 
  */

@objc(NSTableHeaderCell) protocol NSTableHeaderCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: drawSortIndicator
    - name: drawSortIndicatorWithFrame:inView:ascending:priority:
    - argLabels: withFrame, in, ascending, priority
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawSortIndicator(withFrame:in:ascending:priority:)
  */
  @objc (drawSortIndicatorWithFrame:inView:ascending:priority:) func drawSortIndicator(withFrame: CGRect, in: NSView, ascending: Bool, priority: Int)

  /**
    - jsName: sortIndicatorRect
    - name: sortIndicatorRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sortIndicatorRect(forBounds:)
  */
  @objc (sortIndicatorRectForBounds:) func sortIndicatorRect(forBounds: CGRect) -> CGRect
}

extension NSTableHeaderCell: NSTableHeaderCellExports {
}
