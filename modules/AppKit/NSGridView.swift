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
    - Selector: NSGridView
    - Introduced: 10.12
  */

@objc(NSGridView) protocol NSGridViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: gridViewWithNumberOfColumns:rows:
  */
  @objc static func createWithNumberOfColumns_Rows(_ numberOfColumns: Int, _ rows: Int) -> Self

  /**
    - Selector: gridViewWithViews:
  */
  @objc static func createWithViews(_ views: [[NSView]]) -> Self

  // Instance Methods

  /**
    - Selector: addColumnWithViews:
  */
  @objc (addColumnWithViews:) func addColumn(with: [NSView]) -> NSGridColumn

  /**
    - Selector: addRowWithViews:
  */
  @objc (addRowWithViews:) func addRow(with: [NSView]) -> NSGridRow

  /**
    - Selector: cellAtColumnIndex:rowIndex:
  */
  @objc (cellAtColumnIndex:rowIndex:) func cell(atColumnIndex: Int, rowIndex: Int) -> NSGridCell

  /**
    - Selector: cellForView:
  */
  @objc (cellForView:) func cell(`for`: NSView) -> NSGridCell?

  /**
    - Selector: columnAtIndex:
  */
  @objc (columnAtIndex:) func column(at: Int) -> NSGridColumn

  /**
    - Selector: indexOfColumn:
  */
  @objc (indexOfColumn:) func index(of: NSGridColumn) -> Int

  /**
    - Selector: indexOfRow:
  */
  @objc (indexOfRow:) func index(of: NSGridRow) -> Int

  /**
    - Selector: insertColumnAtIndex:withViews:
  */
  @objc (insertColumnAtIndex:withViews:) func insertColumn(at: Int, with: [NSView]) -> NSGridColumn

  /**
    - Selector: insertRowAtIndex:withViews:
  */
  @objc (insertRowAtIndex:withViews:) func insertRow(at: Int, with: [NSView]) -> NSGridRow

  /**
    - Selector: mergeCellsInHorizontalRange:verticalRange:
  */
  @objc (mergeCellsInHorizontalRange:verticalRange:) func mergeCells(inHorizontalRange: NSRange, verticalRange: NSRange)

  /**
    - Selector: moveColumnAtIndex:toIndex:
  */
  @objc (moveColumnAtIndex:toIndex:) func moveColumn(at: Int, to: Int)

  /**
    - Selector: moveRowAtIndex:toIndex:
  */
  @objc (moveRowAtIndex:toIndex:) func moveRow(at: Int, to: Int)

  /**
    - Selector: removeColumnAtIndex:
  */
  @objc (removeColumnAtIndex:) func removeColumn(at: Int)

  /**
    - Selector: removeRowAtIndex:
  */
  @objc (removeRowAtIndex:) func removeRow(at: Int)

  /**
    - Selector: rowAtIndex:
  */
  @objc (rowAtIndex:) func row(at: Int) -> NSGridRow

  // Own Instance Properties

  /**
    - Selector: columnSpacing
  */
  @objc var columnSpacing: CGFloat { @objc get @objc (setColumnSpacing:) set }

  /**
    - Selector: numberOfColumns
  */
  @objc var numberOfColumns: Int { @objc get }

  /**
    - Selector: numberOfRows
  */
  @objc var numberOfRows: Int { @objc get }

  /**
    - Selector: rowAlignment
  */
  @objc var rowAlignment: NSGridRow.Alignment { @objc get @objc (setRowAlignment:) set }

  /**
    - Selector: rowSpacing
  */
  @objc var rowSpacing: CGFloat { @objc get @objc (setRowSpacing:) set }

  /**
    - Selector: xPlacement
  */
  @objc var xPlacement: NSGridCell.Placement { @objc get @objc (setXPlacement:) set }

  /**
    - Selector: yPlacement
  */
  @objc var yPlacement: NSGridCell.Placement { @objc get @objc (setYPlacement:) set }
}

extension NSGridView: NSGridViewExports {

  /**
    - Selector: gridViewWithNumberOfColumns:rows:
  */
  @objc public static func createWithNumberOfColumns_Rows(_ numberOfColumns: Int, _ rows: Int) -> Self {
    return self.init(numberOfColumns: numberOfColumns, rows: rows)
  }


  /**
    - Selector: gridViewWithViews:
  */
  @objc public static func createWithViews(_ views: [[NSView]]) -> Self {
    return self.init(views: views)
  }

}
