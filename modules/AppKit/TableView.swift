import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTableView
  */

@objc(NSTableView) protocol NSTableViewExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: addTableColumn:
  */
  @objc func addTableColumn(_: NSTableColumn)

  /**
    - Selector: beginUpdates
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func beginUpdates()

  /**
    - Selector: canDragRowsWithIndexes:atPoint:
  */
  @objc (canDragRowsWithIndexes:atPoint:) func canDragRows(with: IndexSet, at: CGPoint) -> Bool

  /**
    - Selector: columnAtPoint:
  */
  @objc (columnAtPoint:) func column(at: CGPoint) -> Int

  /**
    - Selector: columnForView:
    - Introduced: 10.7
  */
  @objc (columnForView:) @available(OSX 10.7, *) func column(`for`: NSView) -> Int

  /**
    - Selector: columnIndexesInRect:
    - Introduced: 10.5
  */
  @objc (columnIndexesInRect:) @available(OSX 10.5, *) func columnIndexes(in: CGRect) -> IndexSet

  /**
    - Selector: columnWithIdentifier:
  */
  @objc (columnWithIdentifier:) func column(withIdentifier: NSUserInterfaceItemIdentifier) -> Int

  /**
    - Selector: deselectAll:
  */
  @objc func deselectAll(_: Any?)

  /**
    - Selector: deselectColumn:
  */
  @objc func deselectColumn(_: Int)

  /**
    - Selector: deselectRow:
  */
  @objc func deselectRow(_: Int)

  /**
    - Selector: didAddRowView:forRow:
    - Introduced: 10.7
  */
  @objc (didAddRowView:forRow:) @available(OSX 10.7, *) func didAdd(_: NSTableRowView, forRow: Int)

  /**
    - Selector: didRemoveRowView:forRow:
    - Introduced: 10.7
  */
  @objc (didRemoveRowView:forRow:) @available(OSX 10.7, *) func didRemove(_: NSTableRowView, forRow: Int)

  /**
    - Selector: dragImageForRowsWithIndexes:tableColumns:event:offset:
  */
  @objc (dragImageForRowsWithIndexes:tableColumns:event:offset:) func dragImageForRows(with: IndexSet, tableColumns: [NSTableColumn], event: NSEvent, offset: NSPointPointer) -> NSImage

  /**
    - Selector: drawBackgroundInClipRect:
  */
  @objc (drawBackgroundInClipRect:) func drawBackground(inClipRect: CGRect)

  /**
    - Selector: drawGridInClipRect:
  */
  @objc (drawGridInClipRect:) func drawGrid(inClipRect: CGRect)

  /**
    - Selector: drawRow:clipRect:
  */
  @objc func drawRow(_: Int, clipRect: CGRect)

  /**
    - Selector: editColumn:row:withEvent:select:
  */
  @objc (editColumn:row:withEvent:select:) func editColumn(_: Int, row: Int, with: NSEvent?, select: Bool)

  /**
    - Selector: endUpdates
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func endUpdates()

  /**
    - Selector: enumerateAvailableRowViewsUsingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func enumerateAvailableRowViews(_: JSValue)

  /**
    - Selector: frameOfCellAtColumn:row:
  */
  @objc (frameOfCellAtColumn:row:) func frameOfCell(atColumn: Int, row: Int) -> CGRect

  /**
    - Selector: hideRowsAtIndexes:withAnimation:
    - Introduced: 10.11
  */
  @objc (hideRowsAtIndexes:withAnimation:) @available(OSX 10.11, *) func hideRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - Selector: highlightSelectionInClipRect:
  */
  @objc (highlightSelectionInClipRect:) func highlightSelection(inClipRect: CGRect)

  /**
    - Selector: indicatorImageInTableColumn:
  */
  @objc (indicatorImageInTableColumn:) func indicatorImage(in: NSTableColumn) -> NSImage?

  /**
    - Selector: insertRowsAtIndexes:withAnimation:
    - Introduced: 10.7
  */
  @objc (insertRowsAtIndexes:withAnimation:) @available(OSX 10.7, *) func insertRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - Selector: isColumnSelected:
  */
  @objc func isColumnSelected(_: Int) -> Bool

  /**
    - Selector: isRowSelected:
  */
  @objc func isRowSelected(_: Int) -> Bool

  /**
    - Selector: makeViewWithIdentifier:owner:
    - Introduced: 10.7
  */
  @objc (makeViewWithIdentifier:owner:) @available(OSX 10.7, *) func makeView(withIdentifier: NSUserInterfaceItemIdentifier, owner: Any?) -> NSView?

  /**
    - Selector: moveColumn:toColumn:
  */
  @objc func moveColumn(_: Int, toColumn: Int)

  /**
    - Selector: moveRowAtIndex:toIndex:
    - Introduced: 10.7
  */
  @objc (moveRowAtIndex:toIndex:) @available(OSX 10.7, *) func moveRow(at: Int, to: Int)

  /**
    - Selector: noteHeightOfRowsWithIndexesChanged:
  */
  @objc (noteHeightOfRowsWithIndexesChanged:) func noteHeightOfRows(withIndexesChanged: IndexSet)

  /**
    - Selector: noteNumberOfRowsChanged
  */
  @objc func noteNumberOfRowsChanged()

  /**
    - Selector: rectOfColumn:
  */
  @objc (rectOfColumn:) func rect(ofColumn: Int) -> CGRect

  /**
    - Selector: rectOfRow:
  */
  @objc (rectOfRow:) func rect(ofRow: Int) -> CGRect

  /**
    - Selector: registerNib:forIdentifier:
    - Introduced: 10.8
  */
  @objc (registerNib:forIdentifier:) @available(OSX 10.8, *) func register(_: NSNib?, forIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - Selector: reloadData
  */
  @objc func reloadData()

  /**
    - Selector: reloadDataForRowIndexes:columnIndexes:
    - Introduced: 10.6
  */
  @objc (reloadDataForRowIndexes:columnIndexes:) @available(OSX 10.6, *) func reloadData(forRowIndexes: IndexSet, columnIndexes: IndexSet)

  /**
    - Selector: removeRowsAtIndexes:withAnimation:
    - Introduced: 10.7
  */
  @objc (removeRowsAtIndexes:withAnimation:) @available(OSX 10.7, *) func removeRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - Selector: removeTableColumn:
  */
  @objc func removeTableColumn(_: NSTableColumn)

  /**
    - Selector: rowAtPoint:
  */
  @objc (rowAtPoint:) func row(at: CGPoint) -> Int

  /**
    - Selector: rowForView:
    - Introduced: 10.7
  */
  @objc (rowForView:) @available(OSX 10.7, *) func row(`for`: NSView) -> Int

  /**
    - Selector: rowViewAtRow:makeIfNecessary:
    - Introduced: 10.7
  */
  @objc (rowViewAtRow:makeIfNecessary:) @available(OSX 10.7, *) func rowView(atRow: Int, makeIfNecessary: Bool) -> NSTableRowView?

  /**
    - Selector: rowsInRect:
  */
  @objc (rowsInRect:) func rows(in: CGRect) -> NSRange

  /**
    - Selector: scrollColumnToVisible:
  */
  @objc func scrollColumnToVisible(_: Int)

  /**
    - Selector: scrollRowToVisible:
  */
  @objc func scrollRowToVisible(_: Int)

  /**
    - Selector: selectColumnIndexes:byExtendingSelection:
  */
  @objc func selectColumnIndexes(_: IndexSet, byExtendingSelection: Bool)

  /**
    - Selector: selectRowIndexes:byExtendingSelection:
  */
  @objc func selectRowIndexes(_: IndexSet, byExtendingSelection: Bool)

  /**
    - Selector: setDraggingSourceOperationMask:forLocal:
  */
  @objc func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  /**
    - Selector: setDropRow:dropOperation:
  */
  @objc func setDropRow(_: Int, dropOperation: NSTableView.DropOperation)

  /**
    - Selector: setIndicatorImage:inTableColumn:
  */
  @objc (setIndicatorImage:inTableColumn:) func setIndicatorImage(_: NSImage?, in: NSTableColumn)

  /**
    - Selector: sizeLastColumnToFit
  */
  @objc func sizeLastColumnToFit()

  /**
    - Selector: tableColumnWithIdentifier:
  */
  @objc (tableColumnWithIdentifier:) func tableColumn(withIdentifier: NSUserInterfaceItemIdentifier) -> NSTableColumn?

  /**
    - Selector: tile
  */
  @objc func tile()

  /**
    - Selector: unhideRowsAtIndexes:withAnimation:
    - Introduced: 10.11
  */
  @objc (unhideRowsAtIndexes:withAnimation:) @available(OSX 10.11, *) func unhideRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - Selector: viewAtColumn:row:makeIfNecessary:
    - Introduced: 10.7
  */
  @objc (viewAtColumn:row:makeIfNecessary:) @available(OSX 10.7, *) func view(atColumn: Int, row: Int, makeIfNecessary: Bool) -> NSView?

  // Own Instance Properties

  /**
    - Selector: allowsColumnReordering
  */
  @objc var allowsColumnReordering: Bool { @objc get @objc (setAllowsColumnReordering:) set }

  /**
    - Selector: allowsColumnResizing
  */
  @objc var allowsColumnResizing: Bool { @objc get @objc (setAllowsColumnResizing:) set }

  /**
    - Selector: allowsColumnSelection
  */
  @objc var allowsColumnSelection: Bool { @objc get @objc (setAllowsColumnSelection:) set }

  /**
    - Selector: allowsEmptySelection
  */
  @objc var allowsEmptySelection: Bool { @objc get @objc (setAllowsEmptySelection:) set }

  /**
    - Selector: allowsMultipleSelection
  */
  @objc var allowsMultipleSelection: Bool { @objc get @objc (setAllowsMultipleSelection:) set }

  /**
    - Selector: allowsTypeSelect
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowsTypeSelect: Bool { @objc get @objc (setAllowsTypeSelect:) set }

  /**
    - Selector: autosaveName
  */
  @objc var autosaveName: NSTableView.AutosaveName? { @objc get @objc (setAutosaveName:) set }

  /**
    - Selector: autosaveTableColumns
  */
  @objc var autosaveTableColumns: Bool { @objc get @objc (setAutosaveTableColumns:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: clickedColumn
  */
  @objc var clickedColumn: Int { @objc get }

  /**
    - Selector: clickedRow
  */
  @objc var clickedRow: Int { @objc get }

  /**
    - Selector: columnAutoresizingStyle
  */
  @objc var columnAutoresizingStyle: NSTableView.ColumnAutoresizingStyle { @objc get @objc (setColumnAutoresizingStyle:) set }

  /**
    - Selector: cornerView
  */
  @objc var cornerView: NSView? { @objc get @objc (setCornerView:) set }

  /**
    - Selector: dataSource
  */
  @objc var dataSource: NSTableViewDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTableViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: doubleAction
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - Selector: draggingDestinationFeedbackStyle
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var draggingDestinationFeedbackStyle: NSTableView.DraggingDestinationFeedbackStyle { @objc get @objc (setDraggingDestinationFeedbackStyle:) set }

  /**
    - Selector: editedColumn
  */
  @objc var editedColumn: Int { @objc get }

  /**
    - Selector: editedRow
  */
  @objc var editedRow: Int { @objc get }

  /**
    - Selector: effectiveRowSizeStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var effectiveRowSizeStyle: NSTableView.RowSizeStyle { @objc get }

  /**
    - Selector: floatsGroupRows
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var floatsGroupRows: Bool { @objc get @objc (setFloatsGroupRows:) set }

  /**
    - Selector: gridColor
  */
  @objc var gridColor: NSColor { @objc get @objc (setGridColor:) set }

  /**
    - Selector: gridStyleMask
  */
  @objc var gridStyleMask: NSTableView.GridLineStyle { @objc get @objc (setGridStyleMask:) set }

  /**
    - Selector: headerView
  */
  @objc var headerView: NSTableHeaderView? { @objc get @objc (setHeaderView:) set }

  /**
    - Selector: hiddenRowIndexes
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var hiddenRowIndexes: IndexSet { @objc get }

  /**
    - Selector: highlightedTableColumn
  */
  @objc var highlightedTableColumn: NSTableColumn? { @objc get @objc (setHighlightedTableColumn:) set }

  /**
    - Selector: intercellSpacing
  */
  @objc var intercellSpacing: CGSize { @objc get @objc (setIntercellSpacing:) set }

  /**
    - Selector: numberOfColumns
  */
  @objc var numberOfColumns: Int { @objc get }

  /**
    - Selector: numberOfRows
  */
  @objc var numberOfRows: Int { @objc get }

  /**
    - Selector: numberOfSelectedColumns
  */
  @objc var numberOfSelectedColumns: Int { @objc get }

  /**
    - Selector: numberOfSelectedRows
  */
  @objc var numberOfSelectedRows: Int { @objc get }

  /**
    - Selector: registeredNibsByIdentifier
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var registeredNibsByIdentifier: [NSUserInterfaceItemIdentifier: NSNib]? { @objc get }

  /**
    - Selector: rowActionsVisible
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rowActionsVisible: Bool { @objc get @objc (setRowActionsVisible:) set }

  /**
    - Selector: rowHeight
  */
  @objc var rowHeight: CGFloat { @objc get @objc (setRowHeight:) set }

  /**
    - Selector: rowSizeStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var rowSizeStyle: NSTableView.RowSizeStyle { @objc get @objc (setRowSizeStyle:) set }

  /**
    - Selector: selectedColumn
  */
  @objc var selectedColumn: Int { @objc get }

  /**
    - Selector: selectedColumnIndexes
  */
  @objc var selectedColumnIndexes: IndexSet { @objc get }

  /**
    - Selector: selectedRow
  */
  @objc var selectedRow: Int { @objc get }

  /**
    - Selector: selectedRowIndexes
  */
  @objc var selectedRowIndexes: IndexSet { @objc get }

  /**
    - Selector: selectionHighlightStyle
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var selectionHighlightStyle: NSTableView.SelectionHighlightStyle { @objc get @objc (setSelectionHighlightStyle:) set }

  /**
    - Selector: sortDescriptors
  */
  @objc var sortDescriptors: [NSSortDescriptor] { @objc get @objc (setSortDescriptors:) set }

  /**
    - Selector: tableColumns
  */
  @objc var tableColumns: [NSTableColumn] { @objc get }

  /**
    - Selector: usesAlternatingRowBackgroundColors
  */
  @objc var usesAlternatingRowBackgroundColors: Bool { @objc get @objc (setUsesAlternatingRowBackgroundColors:) set }

  /**
    - Selector: usesAutomaticRowHeights
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var usesAutomaticRowHeights: Bool { @objc get @objc (setUsesAutomaticRowHeights:) set }

  /**
    - Selector: usesStaticContents
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var usesStaticContents: Bool { @objc get @objc (setUsesStaticContents:) set }

  /**
    - Selector: verticalMotionCanBeginDrag
  */
  @objc var verticalMotionCanBeginDrag: Bool { @objc get @objc (setVerticalMotionCanBeginDrag:) set }
}

@objc protocol TableViewExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(TableView) public class TableView: NSTableView, TableViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTableView: NSTableViewExports {
}
