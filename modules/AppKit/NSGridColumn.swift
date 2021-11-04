import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSGridColumn
    - Introduced: 10.12
  */

@objc(NSGridColumn) protocol NSGridColumnExports: JSExport, NSObjectExports {
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
    - Selector: gridView
  */
  @objc var gridView: NSGridView? { @objc get }

  /**
    - Selector: hidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: leadingPadding
  */
  @objc var leadingPadding: CGFloat { @objc get @objc (setLeadingPadding:) set }

  /**
    - Selector: numberOfCells
  */
  @objc var numberOfCells: Int { @objc get }

  /**
    - Selector: trailingPadding
  */
  @objc var trailingPadding: CGFloat { @objc get @objc (setTrailingPadding:) set }

  /**
    - Selector: width
  */
  @objc var width: CGFloat { @objc get @objc (setWidth:) set }

  /**
    - Selector: xPlacement
  */
  @objc var xPlacement: NSGridCell.Placement { @objc get @objc (setXPlacement:) set }
}

extension NSGridColumn: NSGridColumnExports {
}
