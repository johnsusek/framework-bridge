import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableView
    - name: NSTableView
    - argLabels: 
  */

@objc(NSTableView) protocol NSTableViewExports: JSExport, NSControlExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addTableColumn
    - name: addTableColumn:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addTableColumn(_: NSTableColumn)

  /**
    - jsName: beginUpdates
    - name: beginUpdates
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func beginUpdates()

  /**
    - jsName: canDragRows
    - name: canDragRowsWithIndexes:atPoint:
    - argLabels: with, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canDragRows(with:at:)
  */
  @objc (canDragRowsWithIndexes:atPoint:) func canDragRows(with: IndexSet, at: CGPoint) -> Bool

  /**
    - jsName: column
    - name: columnAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: column(at:)
  */
  @objc (columnAtPoint:) func column(at: CGPoint) -> Int

  /**
    - jsName: column
    - name: columnForView:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: column(for:)
    - Introduced: 10.7
  */
  @objc (columnForView:) @available(OSX 10.7, *) func column(`for`: NSView) -> Int

  /**
    - jsName: columnIndexes
    - name: columnIndexesInRect:
    - argLabels: in
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: columnIndexes(in:)
    - Introduced: 10.5
  */
  @objc (columnIndexesInRect:) @available(OSX 10.5, *) func columnIndexes(in: CGRect) -> IndexSet

  /**
    - jsName: column
    - name: columnWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: column(withIdentifier:)
  */
  @objc (columnWithIdentifier:) func column(withIdentifier: NSUserInterfaceItemIdentifier) -> Int

  /**
    - jsName: deselectAll
    - name: deselectAll:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deselectAll(_: Any?)

  /**
    - jsName: deselectColumn
    - name: deselectColumn:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deselectColumn(_: Int)

  /**
    - jsName: deselectRow
    - name: deselectRow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deselectRow(_: Int)

  /**
    - jsName: didAdd
    - name: didAddRowView:forRow:
    - argLabels: _, forRow
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: didAdd(_:forRow:)
    - Introduced: 10.7
  */
  @objc (didAddRowView:forRow:) @available(OSX 10.7, *) func didAdd(_: NSTableRowView, forRow: Int)

  /**
    - jsName: didRemove
    - name: didRemoveRowView:forRow:
    - argLabels: _, forRow
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: didRemove(_:forRow:)
    - Introduced: 10.7
  */
  @objc (didRemoveRowView:forRow:) @available(OSX 10.7, *) func didRemove(_: NSTableRowView, forRow: Int)

  /**
    - jsName: dragImageForRows
    - name: dragImageForRowsWithIndexes:tableColumns:event:offset:
    - argLabels: with, tableColumns, event, offset
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dragImageForRows(with:tableColumns:event:offset:)
  */
  @objc (dragImageForRowsWithIndexes:tableColumns:event:offset:) func dragImageForRows(with: IndexSet, tableColumns: [NSTableColumn], event: NSEvent, offset: NSPointPointer) -> NSImage

  /**
    - jsName: drawBackground
    - name: drawBackgroundInClipRect:
    - argLabels: inClipRect
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBackground(inClipRect:)
  */
  @objc (drawBackgroundInClipRect:) func drawBackground(inClipRect: CGRect)

  /**
    - jsName: drawGrid
    - name: drawGridInClipRect:
    - argLabels: inClipRect
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawGrid(inClipRect:)
  */
  @objc (drawGridInClipRect:) func drawGrid(inClipRect: CGRect)

  /**
    - jsName: drawRow
    - name: drawRow:clipRect:
    - argLabels: clipRect
    - constructorTokens: 
  */
  @objc func drawRow(_: Int, clipRect: CGRect)

  /**
    - jsName: editColumn
    - name: editColumn:row:withEvent:select:
    - argLabels: _, row, with, select
    - constructorTokens: 
    - obsoleted: 3
    - renamed: editColumn(_:row:with:select:)
  */
  @objc (editColumn:row:withEvent:select:) func editColumn(_: Int, row: Int, with: NSEvent?, select: Bool)

  /**
    - jsName: endUpdates
    - name: endUpdates
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func endUpdates()

  /**
    - jsName: enumerateAvailableRowViews
    - name: enumerateAvailableRowViewsUsingBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: enumerateAvailableRowViews(_:)
    - Introduced: 10.7
  */
  // jsvalue - @objc (enumerateAvailableRowViewsUsingBlock:) @available(OSX 10.7, *) func enumerateAvailableRowViews(_: JSValue)

  /**
    - jsName: frameOfCell
    - name: frameOfCellAtColumn:row:
    - argLabels: atColumn, row
    - constructorTokens: 
    - obsoleted: 3
    - renamed: frameOfCell(atColumn:row:)
  */
  @objc (frameOfCellAtColumn:row:) func frameOfCell(atColumn: Int, row: Int) -> CGRect

  /**
    - jsName: hideRows
    - name: hideRowsAtIndexes:withAnimation:
    - argLabels: at, withAnimation
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: hideRows(at:withAnimation:)
    - Introduced: 10.11
  */
  @objc (hideRowsAtIndexes:withAnimation:) @available(OSX 10.11, *) func hideRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - jsName: highlightSelection
    - name: highlightSelectionInClipRect:
    - argLabels: inClipRect
    - constructorTokens: 
    - obsoleted: 3
    - renamed: highlightSelection(inClipRect:)
  */
  @objc (highlightSelectionInClipRect:) func highlightSelection(inClipRect: CGRect)

  /**
    - jsName: indicatorImage
    - name: indicatorImageInTableColumn:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indicatorImage(in:)
  */
  @objc (indicatorImageInTableColumn:) func indicatorImage(in: NSTableColumn) -> NSImage?

  /**
    - jsName: insertRows
    - name: insertRowsAtIndexes:withAnimation:
    - argLabels: at, withAnimation
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: insertRows(at:withAnimation:)
    - Introduced: 10.7
  */
  @objc (insertRowsAtIndexes:withAnimation:) @available(OSX 10.7, *) func insertRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - jsName: isColumnSelected
    - name: isColumnSelected:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func isColumnSelected(_: Int) -> Bool

  /**
    - jsName: isRowSelected
    - name: isRowSelected:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func isRowSelected(_: Int) -> Bool

  /**
    - jsName: makeView
    - name: makeViewWithIdentifier:owner:
    - argLabels: withIdentifier, owner
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: makeView(withIdentifier:owner:)
    - Introduced: 10.7
  */
  @objc (makeViewWithIdentifier:owner:) @available(OSX 10.7, *) func makeView(withIdentifier: NSUserInterfaceItemIdentifier, owner: Any?) -> NSView?

  /**
    - jsName: moveColumn
    - name: moveColumn:toColumn:
    - argLabels: toColumn
    - constructorTokens: 
  */
  @objc func moveColumn(_: Int, toColumn: Int)

  /**
    - jsName: moveRow
    - name: moveRowAtIndex:toIndex:
    - argLabels: at, to
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: moveRow(at:to:)
    - Introduced: 10.7
  */
  @objc (moveRowAtIndex:toIndex:) @available(OSX 10.7, *) func moveRow(at: Int, to: Int)

  /**
    - jsName: noteHeightOfRows
    - name: noteHeightOfRowsWithIndexesChanged:
    - argLabels: withIndexesChanged
    - constructorTokens: 
    - obsoleted: 3
    - renamed: noteHeightOfRows(withIndexesChanged:)
  */
  @objc (noteHeightOfRowsWithIndexesChanged:) func noteHeightOfRows(withIndexesChanged: IndexSet)

  /**
    - jsName: noteNumberOfRowsChanged
    - name: noteNumberOfRowsChanged
    - argLabels: 
    - constructorTokens: 
  */
  @objc func noteNumberOfRowsChanged()

  /**
    - jsName: rect
    - name: rectOfColumn:
    - argLabels: ofColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rect(ofColumn:)
  */
  @objc (rectOfColumn:) func rect(ofColumn: Int) -> CGRect

  /**
    - jsName: rect
    - name: rectOfRow:
    - argLabels: ofRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rect(ofRow:)
  */
  @objc (rectOfRow:) func rect(ofRow: Int) -> CGRect

  /**
    - jsName: register
    - name: registerNib:forIdentifier:
    - argLabels: _, forIdentifier
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: register(_:forIdentifier:)
    - Introduced: 10.8
  */
  @objc (registerNib:forIdentifier:) @available(OSX 10.8, *) func register(_: NSNib?, forIdentifier: NSUserInterfaceItemIdentifier)

  /**
    - jsName: reloadData
    - name: reloadData
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadData()

  /**
    - jsName: reloadData
    - name: reloadDataForRowIndexes:columnIndexes:
    - argLabels: forRowIndexes, columnIndexes
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: reloadData(forRowIndexes:columnIndexes:)
    - Introduced: 10.6
  */
  @objc (reloadDataForRowIndexes:columnIndexes:) @available(OSX 10.6, *) func reloadData(forRowIndexes: IndexSet, columnIndexes: IndexSet)

  /**
    - jsName: removeRows
    - name: removeRowsAtIndexes:withAnimation:
    - argLabels: at, withAnimation
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: removeRows(at:withAnimation:)
    - Introduced: 10.7
  */
  @objc (removeRowsAtIndexes:withAnimation:) @available(OSX 10.7, *) func removeRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - jsName: removeTableColumn
    - name: removeTableColumn:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeTableColumn(_: NSTableColumn)

  /**
    - jsName: row
    - name: rowAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: row(at:)
  */
  @objc (rowAtPoint:) func row(at: CGPoint) -> Int

  /**
    - jsName: row
    - name: rowForView:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: row(for:)
    - Introduced: 10.7
  */
  @objc (rowForView:) @available(OSX 10.7, *) func row(`for`: NSView) -> Int

  /**
    - jsName: rowView
    - name: rowViewAtRow:makeIfNecessary:
    - argLabels: atRow, makeIfNecessary
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: rowView(atRow:makeIfNecessary:)
    - Introduced: 10.7
  */
  @objc (rowViewAtRow:makeIfNecessary:) @available(OSX 10.7, *) func rowView(atRow: Int, makeIfNecessary: Bool) -> NSTableRowView?

  /**
    - jsName: rows
    - name: rowsInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rows(in:)
  */
  @objc (rowsInRect:) func rows(in: CGRect) -> NSRange

  /**
    - jsName: scrollColumnToVisible
    - name: scrollColumnToVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func scrollColumnToVisible(_: Int)

  /**
    - jsName: scrollRowToVisible
    - name: scrollRowToVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func scrollRowToVisible(_: Int)

  /**
    - jsName: selectColumnIndexes
    - name: selectColumnIndexes:byExtendingSelection:
    - argLabels: byExtendingSelection
    - constructorTokens: 
  */
  @objc func selectColumnIndexes(_: IndexSet, byExtendingSelection: Bool)

  /**
    - jsName: selectRowIndexes
    - name: selectRowIndexes:byExtendingSelection:
    - argLabels: byExtendingSelection
    - constructorTokens: 
  */
  @objc func selectRowIndexes(_: IndexSet, byExtendingSelection: Bool)

  /**
    - jsName: setDraggingSourceOperationMask
    - name: setDraggingSourceOperationMask:forLocal:
    - argLabels: forLocal
    - constructorTokens: 
  */
  @objc func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  /**
    - jsName: setDropRow
    - name: setDropRow:dropOperation:
    - argLabels: dropOperation
    - constructorTokens: 
  */
  @objc func setDropRow(_: Int, dropOperation: NSTableView.DropOperation)

  /**
    - jsName: setIndicatorImage
    - name: setIndicatorImage:inTableColumn:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setIndicatorImage(_:in:)
  */
  @objc (setIndicatorImage:inTableColumn:) func setIndicatorImage(_: NSImage?, in: NSTableColumn)

  /**
    - jsName: sizeLastColumnToFit
    - name: sizeLastColumnToFit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeLastColumnToFit()

  /**
    - jsName: tableColumn
    - name: tableColumnWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tableColumn(withIdentifier:)
  */
  @objc (tableColumnWithIdentifier:) func tableColumn(withIdentifier: NSUserInterfaceItemIdentifier) -> NSTableColumn?

  /**
    - jsName: tile
    - name: tile
    - argLabels: 
    - constructorTokens: 
  */
  @objc func tile()

  /**
    - jsName: unhideRows
    - name: unhideRowsAtIndexes:withAnimation:
    - argLabels: at, withAnimation
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: unhideRows(at:withAnimation:)
    - Introduced: 10.11
  */
  @objc (unhideRowsAtIndexes:withAnimation:) @available(OSX 10.11, *) func unhideRows(at: IndexSet, withAnimation: NSTableView.AnimationOptions)

  /**
    - jsName: view
    - name: viewAtColumn:row:makeIfNecessary:
    - argLabels: atColumn, row, makeIfNecessary
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: view(atColumn:row:makeIfNecessary:)
    - Introduced: 10.7
  */
  @objc (viewAtColumn:row:makeIfNecessary:) @available(OSX 10.7, *) func view(atColumn: Int, row: Int, makeIfNecessary: Bool) -> NSView?

  // Own Instance Properties

  /**
    - jsName: allowsColumnReordering
    - name: allowsColumnReordering
    - argLabels: 
  */
  @objc var allowsColumnReordering: Bool { @objc get @objc (setAllowsColumnReordering:) set }

  /**
    - jsName: allowsColumnResizing
    - name: allowsColumnResizing
    - argLabels: 
  */
  @objc var allowsColumnResizing: Bool { @objc get @objc (setAllowsColumnResizing:) set }

  /**
    - jsName: allowsColumnSelection
    - name: allowsColumnSelection
    - argLabels: 
  */
  @objc var allowsColumnSelection: Bool { @objc get @objc (setAllowsColumnSelection:) set }

  /**
    - jsName: allowsEmptySelection
    - name: allowsEmptySelection
    - argLabels: 
  */
  @objc var allowsEmptySelection: Bool { @objc get @objc (setAllowsEmptySelection:) set }

  /**
    - jsName: allowsMultipleSelection
    - name: allowsMultipleSelection
    - argLabels: 
  */
  @objc var allowsMultipleSelection: Bool { @objc get @objc (setAllowsMultipleSelection:) set }

  /**
    - jsName: allowsTypeSelect
    - name: allowsTypeSelect
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowsTypeSelect: Bool { @objc get @objc (setAllowsTypeSelect:) set }

  /**
    - jsName: autosaveName
    - name: autosaveName
    - argLabels: 
  */
  @objc var autosaveName: NSTableView.AutosaveName? { @objc get @objc (setAutosaveName:) set }

  /**
    - jsName: autosaveTableColumns
    - name: autosaveTableColumns
    - argLabels: 
  */
  @objc var autosaveTableColumns: Bool { @objc get @objc (setAutosaveTableColumns:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: clickedColumn
    - name: clickedColumn
    - argLabels: 
  */
  @objc var clickedColumn: Int { @objc get }

  /**
    - jsName: clickedRow
    - name: clickedRow
    - argLabels: 
  */
  @objc var clickedRow: Int { @objc get }

  /**
    - jsName: columnAutoresizingStyle
    - name: columnAutoresizingStyle
    - argLabels: 
  */
  @objc var columnAutoresizingStyle: NSTableView.ColumnAutoresizingStyle { @objc get @objc (setColumnAutoresizingStyle:) set }

  /**
    - jsName: cornerView
    - name: cornerView
    - argLabels: 
  */
  @objc var cornerView: NSView? { @objc get @objc (setCornerView:) set }

  /**
    - jsName: dataSource
    - name: dataSource
    - argLabels: 
  */
  @objc var dataSource: NSTableViewDataSource? { @objc get @objc (setDataSource:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTableViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: doubleAction
    - name: doubleAction
    - argLabels: 
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - jsName: draggingDestinationFeedbackStyle
    - name: draggingDestinationFeedbackStyle
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var draggingDestinationFeedbackStyle: NSTableView.DraggingDestinationFeedbackStyle { @objc get @objc (setDraggingDestinationFeedbackStyle:) set }

  /**
    - jsName: editedColumn
    - name: editedColumn
    - argLabels: 
  */
  @objc var editedColumn: Int { @objc get }

  /**
    - jsName: editedRow
    - name: editedRow
    - argLabels: 
  */
  @objc var editedRow: Int { @objc get }

  /**
    - jsName: effectiveRowSizeStyle
    - name: effectiveRowSizeStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var effectiveRowSizeStyle: NSTableView.RowSizeStyle { @objc get }

  /**
    - jsName: floatsGroupRows
    - name: floatsGroupRows
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var floatsGroupRows: Bool { @objc get @objc (setFloatsGroupRows:) set }

  /**
    - jsName: gridColor
    - name: gridColor
    - argLabels: 
  */
  @objc var gridColor: NSColor { @objc get @objc (setGridColor:) set }

  /**
    - jsName: gridStyleMask
    - name: gridStyleMask
    - argLabels: 
  */
  @objc var gridStyleMask: NSTableView.GridLineStyle { @objc get @objc (setGridStyleMask:) set }

  /**
    - jsName: headerView
    - name: headerView
    - argLabels: 
  */
  @objc var headerView: NSTableHeaderView? { @objc get @objc (setHeaderView:) set }

  /**
    - jsName: hiddenRowIndexes
    - name: hiddenRowIndexes
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var hiddenRowIndexes: IndexSet { @objc get }

  /**
    - jsName: highlightedTableColumn
    - name: highlightedTableColumn
    - argLabels: 
  */
  @objc var highlightedTableColumn: NSTableColumn? { @objc get @objc (setHighlightedTableColumn:) set }

  /**
    - jsName: intercellSpacing
    - name: intercellSpacing
    - argLabels: 
  */
  @objc var intercellSpacing: CGSize { @objc get @objc (setIntercellSpacing:) set }

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
    - jsName: numberOfSelectedColumns
    - name: numberOfSelectedColumns
    - argLabels: 
  */
  @objc var numberOfSelectedColumns: Int { @objc get }

  /**
    - jsName: numberOfSelectedRows
    - name: numberOfSelectedRows
    - argLabels: 
  */
  @objc var numberOfSelectedRows: Int { @objc get }

  /**
    - jsName: registeredNibsByIdentifier
    - name: registeredNibsByIdentifier
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var registeredNibsByIdentifier: [NSUserInterfaceItemIdentifier: NSNib]? { @objc get }

  /**
    - jsName: rowActionsVisible
    - name: rowActionsVisible
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rowActionsVisible: Bool { @objc get @objc (setRowActionsVisible:) set }

  /**
    - jsName: rowHeight
    - name: rowHeight
    - argLabels: 
  */
  @objc var rowHeight: CGFloat { @objc get @objc (setRowHeight:) set }

  /**
    - jsName: rowSizeStyle
    - name: rowSizeStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var rowSizeStyle: NSTableView.RowSizeStyle { @objc get @objc (setRowSizeStyle:) set }

  /**
    - jsName: selectedColumn
    - name: selectedColumn
    - argLabels: 
  */
  @objc var selectedColumn: Int { @objc get }

  /**
    - jsName: selectedColumnIndexes
    - name: selectedColumnIndexes
    - argLabels: 
  */
  @objc var selectedColumnIndexes: IndexSet { @objc get }

  /**
    - jsName: selectedRow
    - name: selectedRow
    - argLabels: 
  */
  @objc var selectedRow: Int { @objc get }

  /**
    - jsName: selectedRowIndexes
    - name: selectedRowIndexes
    - argLabels: 
  */
  @objc var selectedRowIndexes: IndexSet { @objc get }

  /**
    - jsName: selectionHighlightStyle
    - name: selectionHighlightStyle
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var selectionHighlightStyle: NSTableView.SelectionHighlightStyle { @objc get @objc (setSelectionHighlightStyle:) set }

  /**
    - jsName: sortDescriptors
    - name: sortDescriptors
    - argLabels: 
  */
  @objc var sortDescriptors: [NSSortDescriptor] { @objc get @objc (setSortDescriptors:) set }

  /**
    - jsName: tableColumns
    - name: tableColumns
    - argLabels: 
  */
  @objc var tableColumns: [NSTableColumn] { @objc get }

  /**
    - jsName: usesAlternatingRowBackgroundColors
    - name: usesAlternatingRowBackgroundColors
    - argLabels: 
  */
  @objc var usesAlternatingRowBackgroundColors: Bool { @objc get @objc (setUsesAlternatingRowBackgroundColors:) set }

  /**
    - jsName: usesAutomaticRowHeights
    - name: usesAutomaticRowHeights
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var usesAutomaticRowHeights: Bool { @objc get @objc (setUsesAutomaticRowHeights:) set }

  /**
    - jsName: usesStaticContents
    - name: usesStaticContents
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var usesStaticContents: Bool { @objc get @objc (setUsesStaticContents:) set }

  /**
    - jsName: verticalMotionCanBeginDrag
    - name: verticalMotionCanBeginDrag
    - argLabels: 
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
