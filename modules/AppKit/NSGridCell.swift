import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSGridCell
    - Introduced: 10.12
  */

@objc(NSGridCell) protocol NSGridCellExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: emptyContentView
  */
  @objc static var emptyContentView: NSView { @objc get }

  // Own Instance Properties

  /**
    - Selector: column
  */
  @objc var column: NSGridColumn? { @objc get }

  /**
    - Selector: contentView
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - Selector: customPlacementConstraints
  */
  @objc var customPlacementConstraints: [NSLayoutConstraint] { @objc get @objc (setCustomPlacementConstraints:) set }

  /**
    - Selector: row
  */
  @objc var row: NSGridRow? { @objc get }

  /**
    - Selector: rowAlignment
  */
  @objc var rowAlignment: NSGridRow.Alignment { @objc get @objc (setRowAlignment:) set }

  /**
    - Selector: xPlacement
  */
  @objc var xPlacement: NSGridCell.Placement { @objc get @objc (setXPlacement:) set }

  /**
    - Selector: yPlacement
  */
  @objc var yPlacement: NSGridCell.Placement { @objc get @objc (setYPlacement:) set }
}

extension NSGridCell: NSGridCellExports {
}
