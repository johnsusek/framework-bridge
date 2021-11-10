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
    - Selector: NSGridRow
    - Introduced: 10.12
  */

@objc(NSGridRow) protocol NSGridRowExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cellAtIndex:
  */
  @objc (cellAtIndex:) func cell(at: Int) -> NSGridCell

  /**
    - Selector: mergeCellsInRange:
  */
  @objc (mergeCellsInRange:) func mergeCells(in: NSRange)

  // Own Instance Properties

  /**
    - Selector: bottomPadding
  */
  @objc var bottomPadding: CGFloat { @objc get @objc (setBottomPadding:) set }

  /**
    - Selector: gridView
  */
  @objc var gridView: NSGridView? { @objc get }

  /**
    - Selector: height
  */
  @objc var height: CGFloat { @objc get @objc (setHeight:) set }

  /**
    - Selector: hidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: numberOfCells
  */
  @objc var numberOfCells: Int { @objc get }

  /**
    - Selector: rowAlignment
  */
  @objc var rowAlignment: NSGridRow.Alignment { @objc get @objc (setRowAlignment:) set }

  /**
    - Selector: topPadding
  */
  @objc var topPadding: CGFloat { @objc get @objc (setTopPadding:) set }

  /**
    - Selector: yPlacement
  */
  @objc var yPlacement: NSGridCell.Placement { @objc get @objc (setYPlacement:) set }
}

extension NSGridRow: NSGridRowExports {
}
