import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGridView
    - name: NSGridView
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSGridView) protocol NSGridViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - jsName: create
    - name: gridViewWithNumberOfColumns:rows:
    - argLabels: numberOfColumns, rows
    - constructorTokens: 
    - unavailable: true
    - renamed: init(numberOfColumns:rows:)
    - message: Not available in Swift
  */
  @objc static func create(numberOfColumns: Int, rows: Int) -> Self

  /**
    - jsName: create
    - name: gridViewWithViews:
    - argLabels: views
    - constructorTokens: 
    - unavailable: true
    - renamed: init(views:)
    - message: Not available in Swift
  */
  @objc static func create(views: [[NSView]]) -> Self

  // Instance Methods

  /**
    - jsName: addColumn
    - name: addColumnWithViews:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addColumn(with:)
  */
  @objc (addColumnWithViews:) func addColumn(with: [NSView]) -> NSGridColumn

  /**
    - jsName: addRow
    - name: addRowWithViews:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addRow(with:)
  */
  @objc (addRowWithViews:) func addRow(with: [NSView]) -> NSGridRow

  /**
    - jsName: cell
    - name: cellAtColumnIndex:rowIndex:
    - argLabels: atColumnIndex, rowIndex
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cell(atColumnIndex:rowIndex:)
  */
  @objc (cellAtColumnIndex:rowIndex:) func cell(atColumnIndex: Int, rowIndex: Int) -> NSGridCell

  /**
    - jsName: cell
    - name: cellForView:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cell(for:)
  */
  @objc (cellForView:) func cell(`for`: NSView) -> NSGridCell?

  /**
    - jsName: column
    - name: columnAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: column(at:)
  */
  @objc (columnAtIndex:) func column(at: Int) -> NSGridColumn

  /**
    - jsName: index
    - name: indexOfColumn:
    - argLabels: of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: index(of:)
  */
  @objc (indexOfColumn:) func index(of: NSGridColumn) -> Int

  /**
    - jsName: index
    - name: indexOfRow:
    - argLabels: of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: index(of:)
  */
  @objc (indexOfRow:) func index(of: NSGridRow) -> Int

  /**
    - jsName: insertColumn
    - name: insertColumnAtIndex:withViews:
    - argLabels: at, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertColumn(at:with:)
  */
  @objc (insertColumnAtIndex:withViews:) func insertColumn(at: Int, with: [NSView]) -> NSGridColumn

  /**
    - jsName: insertRow
    - name: insertRowAtIndex:withViews:
    - argLabels: at, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertRow(at:with:)
  */
  @objc (insertRowAtIndex:withViews:) func insertRow(at: Int, with: [NSView]) -> NSGridRow

  /**
    - jsName: mergeCells
    - name: mergeCellsInHorizontalRange:verticalRange:
    - argLabels: inHorizontalRange, verticalRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mergeCells(inHorizontalRange:verticalRange:)
  */
  @objc (mergeCellsInHorizontalRange:verticalRange:) func mergeCells(inHorizontalRange: NSRange, verticalRange: NSRange)

  /**
    - jsName: moveColumn
    - name: moveColumnAtIndex:toIndex:
    - argLabels: at, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: moveColumn(at:to:)
  */
  @objc (moveColumnAtIndex:toIndex:) func moveColumn(at: Int, to: Int)

  /**
    - jsName: moveRow
    - name: moveRowAtIndex:toIndex:
    - argLabels: at, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: moveRow(at:to:)
  */
  @objc (moveRowAtIndex:toIndex:) func moveRow(at: Int, to: Int)

  /**
    - jsName: removeColumn
    - name: removeColumnAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeColumn(at:)
  */
  @objc (removeColumnAtIndex:) func removeColumn(at: Int)

  /**
    - jsName: removeRow
    - name: removeRowAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeRow(at:)
  */
  @objc (removeRowAtIndex:) func removeRow(at: Int)

  /**
    - jsName: row
    - name: rowAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: row(at:)
  */
  @objc (rowAtIndex:) func row(at: Int) -> NSGridRow

  // Own Instance Properties

  /**
    - jsName: columnSpacing
    - name: columnSpacing
    - argLabels: 
  */
  @objc var columnSpacing: CGFloat { @objc get @objc (setColumnSpacing:) set }

  /**
    - jsName: numberOfColumns
    - name: numberOfColumns
    - argLabels: 
  */
  @objc var numberOfColumns: Int { @objc get }

  /**
    - jsName: numberOfRows
    - name: numberOfRows
    - argLabels: 
  */
  @objc var numberOfRows: Int { @objc get }

  /**
    - jsName: rowAlignment
    - name: rowAlignment
    - argLabels: 
  */
  @objc var rowAlignment: NSGridRow.Alignment { @objc get @objc (setRowAlignment:) set }

  /**
    - jsName: rowSpacing
    - name: rowSpacing
    - argLabels: 
  */
  @objc var rowSpacing: CGFloat { @objc get @objc (setRowSpacing:) set }

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

@objc protocol GridViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - jsName: create
    - name: gridViewWithNumberOfColumns:rows:
    - argLabels: numberOfColumns, rows
    - constructorTokens: 
    - unavailable: true
    - renamed: init(numberOfColumns:rows:)
    - message: Not available in Swift
  */
  @objc static func create(numberOfColumns: Int, rows: Int) -> Self

  /**
    - jsName: create
    - name: gridViewWithViews:
    - argLabels: views
    - constructorTokens: 
    - unavailable: true
    - renamed: init(views:)
    - message: Not available in Swift
  */
  @objc static func create(views: [[NSView]]) -> Self
}

@objc(GridView) public class GridView: NSGridView, GridViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSGridView: NSGridViewExports {
  @objc public static func create(numberOfColumns: Int, rows: Int) -> Self {
    return self.init(numberOfColumns: numberOfColumns, rows: rows)
  }

  @objc public static func create(views: [[NSView]]) -> Self {
    return self.init(views: views)
  }

}
