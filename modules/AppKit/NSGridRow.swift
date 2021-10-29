import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGridRow
    - name: NSGridRow
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSGridRow) protocol NSGridRowExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cell
    - name: cellAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cell(at:)
  */
  @objc (cellAtIndex:) func cell(at: Int) -> NSGridCell

  /**
    - jsName: mergeCells
    - name: mergeCellsInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mergeCells(in:)
  */
  @objc (mergeCellsInRange:) func mergeCells(in: NSRange)

  // Own Instance Properties

  /**
    - jsName: bottomPadding
    - name: bottomPadding
    - argLabels: 
  */
  @objc var bottomPadding: CGFloat { @objc get @objc (setBottomPadding:) set }

  /**
    - jsName: gridView
    - name: gridView
    - argLabels: 
  */
  @objc var gridView: NSGridView? { @objc get }

  /**
    - jsName: height
    - name: height
    - argLabels: 
  */
  @objc var height: CGFloat { @objc get @objc (setHeight:) set }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isHidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: numberOfCells
    - name: numberOfCells
    - argLabels: 
  */
  @objc var numberOfCells: Int { @objc get }

  /**
    - jsName: rowAlignment
    - name: rowAlignment
    - argLabels: 
  */
  @objc var rowAlignment: NSGridRow.Alignment { @objc get @objc (setRowAlignment:) set }

  /**
    - jsName: topPadding
    - name: topPadding
    - argLabels: 
  */
  @objc var topPadding: CGFloat { @objc get @objc (setTopPadding:) set }

  /**
    - jsName: yPlacement
    - name: yPlacement
    - argLabels: 
  */
  @objc var yPlacement: NSGridCell.Placement { @objc get @objc (setYPlacement:) set }
}

extension NSGridRow: NSGridRowExports {
}
