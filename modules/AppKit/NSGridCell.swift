import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGridCell
    - name: NSGridCell
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSGridCell) protocol NSGridCellExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: emptyContentView
    - name: emptyContentView
    - argLabels: 
  */
  @objc static var emptyContentView: NSView { @objc get }

  // Own Instance Properties

  /**
    - jsName: column
    - name: column
    - argLabels: 
  */
  @objc var column: NSGridColumn? { @objc get }

  /**
    - jsName: contentView
    - name: contentView
    - argLabels: 
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - jsName: customPlacementConstraints
    - name: customPlacementConstraints
    - argLabels: 
  */
  @objc var customPlacementConstraints: [NSLayoutConstraint] { @objc get @objc (setCustomPlacementConstraints:) set }

  /**
    - jsName: row
    - name: row
    - argLabels: 
  */
  @objc var row: NSGridRow? { @objc get }

  /**
    - jsName: rowAlignment
    - name: rowAlignment
    - argLabels: 
  */
  @objc var rowAlignment: NSGridRow.Alignment { @objc get @objc (setRowAlignment:) set }

  /**
    - jsName: xPlacement
    - name: xPlacement
    - argLabels: 
  */
  @objc var xPlacement: NSGridCell.Placement { @objc get @objc (setXPlacement:) set }

  /**
    - jsName: yPlacement
    - name: yPlacement
    - argLabels: 
  */
  @objc var yPlacement: NSGridCell.Placement { @objc get @objc (setYPlacement:) set }
}

extension NSGridCell: NSGridCellExports {
}
