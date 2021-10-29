import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSBrowser
    - name: NSBrowser
    - argLabels: 
  */

@objc(NSBrowser) protocol NSBrowserExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: removeSavedColumns
    - name: removeSavedColumnsWithAutosaveName:
    - argLabels: withAutosaveName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeSavedColumns(withAutosaveName:)
  */
  @objc (removeSavedColumnsWithAutosaveName:) static func removeSavedColumns(withAutosaveName: NSBrowser.ColumnsAutosaveName)

  // Own Static Properties

  /**
    - jsName: cellClass
    - name: cellClass
    - argLabels: 
  */
  @objc static var cellClass: AnyClass { @objc get }

  // Instance Methods

  /**
    - jsName: addColumn
    - name: addColumn
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addColumn()

  /**
    - jsName: canDragRows
    - name: canDragRowsWithIndexes:inColumn:withEvent:
    - argLabels: with, inColumn, with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: canDragRows(with:inColumn:with:)
    - Introduced: 10.5
  */
  @objc (canDragRowsWithIndexes:inColumn:withEvent:) @available(OSX 10.5, *) func canDragRows(with: IndexSet, inColumn: Int, with: NSEvent) -> Bool

  /**
    - jsName: columnContentWidth
    - name: columnContentWidthForColumnWidth:
    - argLabels: forColumnWidth
    - constructorTokens: 
    - obsoleted: 3
    - renamed: columnContentWidth(forColumnWidth:)
  */
  @objc (columnContentWidthForColumnWidth:) func columnContentWidth(forColumnWidth: CGFloat) -> CGFloat

  /**
    - jsName: columnWidth
    - name: columnWidthForColumnContentWidth:
    - argLabels: forColumnContentWidth
    - constructorTokens: 
    - obsoleted: 3
    - renamed: columnWidth(forColumnContentWidth:)
  */
  @objc (columnWidthForColumnContentWidth:) func columnWidth(forColumnContentWidth: CGFloat) -> CGFloat

  /**
    - jsName: defaultColumnWidth
    - name: defaultColumnWidth
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func defaultColumnWidth() -> CGFloat

  /**
    - jsName: doClick
    - name: doClick:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func doClick(_: Any?)

  /**
    - jsName: doDoubleClick
    - name: doDoubleClick:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func doDoubleClick(_: Any?)

  /**
    - jsName: draggingImageForRows
    - name: draggingImageForRowsWithIndexes:inColumn:withEvent:offset:
    - argLabels: with, inColumn, with, offset
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: draggingImageForRows(with:inColumn:with:offset:)
    - Introduced: 10.5
  */
  @objc (draggingImageForRowsWithIndexes:inColumn:withEvent:offset:) @available(OSX 10.5, *) func draggingImageForRows(with: IndexSet, inColumn: Int, with: NSEvent, offset: NSPointPointer?) -> NSImage?

  /**
    - jsName: drawTitle
    - name: drawTitleOfColumn:inRect:
    - argLabels: ofColumn, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawTitle(ofColumn:in:)
  */
  @objc (drawTitleOfColumn:inRect:) func drawTitle(ofColumn: Int, in: CGRect)

  /**
    - jsName: editItem
    - name: editItemAtIndexPath:withEvent:select:
    - argLabels: at, with, select
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: editItem(at:with:select:)
    - Introduced: 10.6
  */
  @objc (editItemAtIndexPath:withEvent:select:) @available(OSX 10.6, *) func editItem(at: IndexPath, with: NSEvent?, select: Bool)

  /**
    - jsName: frame
    - name: frameOfColumn:
    - argLabels: ofColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: frame(ofColumn:)
  */
  @objc (frameOfColumn:) func frame(ofColumn: Int) -> CGRect

  /**
    - jsName: frame
    - name: frameOfInsideOfColumn:
    - argLabels: ofInsideOfColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: frame(ofInsideOfColumn:)
  */
  @objc (frameOfInsideOfColumn:) func frame(ofInsideOfColumn: Int) -> CGRect

  /**
    - jsName: frame
    - name: frameOfRow:inColumn:
    - argLabels: ofRow, inColumn
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: frame(ofRow:inColumn:)
    - Introduced: 10.6
  */
  @objc (frameOfRow:inColumn:) @available(OSX 10.6, *) func frame(ofRow: Int, inColumn: Int) -> CGRect

  /**
    - jsName: getRow
    - name: getRow:column:forPoint:
    - argLabels: _, column, for
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: getRow(_:column:for:)
    - Introduced: 10.6
  */
  @objc (getRow:column:forPoint:) @available(OSX 10.6, *) func getRow(_: UnsafeMutablePointer<NSInteger>?, column: UnsafeMutablePointer<NSInteger>?, `for`: CGPoint) -> Bool

  /**
    - jsName: indexPath
    - name: indexPathForColumn:
    - argLabels: forColumn
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: indexPath(forColumn:)
    - Introduced: 10.6
  */
  @objc (indexPathForColumn:) @available(OSX 10.6, *) func indexPath(forColumn: Int) -> IndexPath

  /**
    - jsName: isLeafItem
    - name: isLeafItem:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func isLeafItem(_: Any?) -> Bool

  /**
    - jsName: item
    - name: itemAtIndexPath:
    - argLabels: at
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: item(at:)
    - Introduced: 10.6
  */
  @objc (itemAtIndexPath:) @available(OSX 10.6, *) func item(at: IndexPath) -> Any?

  /**
    - jsName: item
    - name: itemAtRow:inColumn:
    - argLabels: atRow, inColumn
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: item(atRow:inColumn:)
    - Introduced: 10.6
  */
  @objc (itemAtRow:inColumn:) @available(OSX 10.6, *) func item(atRow: Int, inColumn: Int) -> Any?

  /**
    - jsName: loadColumnZero
    - name: loadColumnZero
    - argLabels: 
    - constructorTokens: 
  */
  @objc func loadColumnZero()

  /**
    - jsName: loadedCell
    - name: loadedCellAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: loadedCell(atRow:column:)
  */
  @objc (loadedCellAtRow:column:) func loadedCell(atRow: Int, column: Int) -> Any?

  /**
    - jsName: noteHeightOfRowsWithIndexesChanged
    - name: noteHeightOfRowsWithIndexesChanged:inColumn:
    - argLabels: _, inColumn
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc (noteHeightOfRowsWithIndexesChanged:inColumn:) @available(OSX 10.6, *) func noteHeightOfRowsWithIndexesChanged(_: IndexSet, inColumn: Int)

  /**
    - jsName: parentForItems
    - name: parentForItemsInColumn:
    - argLabels: inColumn
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: parentForItems(inColumn:)
    - Introduced: 10.6
  */
  @objc (parentForItemsInColumn:) @available(OSX 10.6, *) func parentForItems(inColumn: Int) -> Any?

  /**
    - jsName: path
    - name: path
    - argLabels: 
    - constructorTokens: 
  */
  @objc func path() -> String

  /**
    - jsName: path
    - name: pathToColumn:
    - argLabels: toColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: path(toColumn:)
  */
  @objc (pathToColumn:) func path(toColumn: Int) -> String

  /**
    - jsName: reloadColumn
    - name: reloadColumn:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadColumn(_: Int)

  /**
    - jsName: reloadData
    - name: reloadDataForRowIndexes:inColumn:
    - argLabels: forRowIndexes, inColumn
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: reloadData(forRowIndexes:inColumn:)
    - Introduced: 10.6
  */
  @objc (reloadDataForRowIndexes:inColumn:) @available(OSX 10.6, *) func reloadData(forRowIndexes: IndexSet, inColumn: Int)

  /**
    - jsName: scrollColumnToVisible
    - name: scrollColumnToVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func scrollColumnToVisible(_: Int)

  /**
    - jsName: scrollColumnsLeft
    - name: scrollColumnsLeftBy:
    - argLabels: by
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scrollColumnsLeft(by:)
  */
  @objc (scrollColumnsLeftBy:) func scrollColumnsLeft(by: Int)

  /**
    - jsName: scrollColumnsRight
    - name: scrollColumnsRightBy:
    - argLabels: by
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scrollColumnsRight(by:)
  */
  @objc (scrollColumnsRightBy:) func scrollColumnsRight(by: Int)

  /**
    - jsName: scrollRowToVisible
    - name: scrollRowToVisible:inColumn:
    - argLabels: inColumn
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func scrollRowToVisible(_: Int, inColumn: Int)

  /**
    - jsName: selectRow
    - name: selectRow:inColumn:
    - argLabels: inColumn
    - constructorTokens: 
  */
  @objc func selectRow(_: Int, inColumn: Int)

  /**
    - jsName: selectRowIndexes
    - name: selectRowIndexes:inColumn:
    - argLabels: inColumn
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func selectRowIndexes(_: IndexSet, inColumn: Int)

  /**
    - jsName: selectedCell
    - name: selectedCellInColumn:
    - argLabels: inColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectedCell(inColumn:)
  */
  @objc (selectedCellInColumn:) func selectedCell(inColumn: Int) -> Any?

  /**
    - jsName: selectedRow
    - name: selectedRowInColumn:
    - argLabels: inColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectedRow(inColumn:)
  */
  @objc (selectedRowInColumn:) func selectedRow(inColumn: Int) -> Int

  /**
    - jsName: selectedRowIndexes
    - name: selectedRowIndexesInColumn:
    - argLabels: inColumn
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: selectedRowIndexes(inColumn:)
    - Introduced: 10.5
  */
  @objc (selectedRowIndexesInColumn:) @available(OSX 10.5, *) func selectedRowIndexes(inColumn: Int) -> IndexSet?

  /**
    - jsName: sendAction
    - name: sendAction
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sendAction() -> Bool

  /**
    - jsName: setCellClass
    - name: setCellClass:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setCellClass(_: AnyClass)

  /**
    - jsName: setDefaultColumnWidth
    - name: setDefaultColumnWidth:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func setDefaultColumnWidth(_: CGFloat)

  /**
    - jsName: setDraggingSourceOperationMask
    - name: setDraggingSourceOperationMask:forLocal:
    - argLabels: forLocal
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  /**
    - jsName: setPath
    - name: setPath:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setPath(_: String) -> Bool

  /**
    - jsName: setTitle
    - name: setTitle:ofColumn:
    - argLabels: ofColumn
    - constructorTokens: 
  */
  @objc func setTitle(_: String, ofColumn: Int)

  /**
    - jsName: setWidth
    - name: setWidth:ofColumn:
    - argLabels: ofColumn
    - constructorTokens: 
  */
  @objc func setWidth(_: CGFloat, ofColumn: Int)

  /**
    - jsName: tile
    - name: tile
    - argLabels: 
    - constructorTokens: 
  */
  @objc func tile()

  /**
    - jsName: titleFrame
    - name: titleFrameOfColumn:
    - argLabels: ofColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: titleFrame(ofColumn:)
  */
  @objc (titleFrameOfColumn:) func titleFrame(ofColumn: Int) -> CGRect

  /**
    - jsName: title
    - name: titleOfColumn:
    - argLabels: ofColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: title(ofColumn:)
  */
  @objc (titleOfColumn:) func title(ofColumn: Int) -> String?

  /**
    - jsName: validateVisibleColumns
    - name: validateVisibleColumns
    - argLabels: 
    - constructorTokens: 
  */
  @objc func validateVisibleColumns()

  /**
    - jsName: width
    - name: widthOfColumn:
    - argLabels: ofColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: width(ofColumn:)
  */
  @objc (widthOfColumn:) func width(ofColumn: Int) -> CGFloat

  // Own Instance Properties

  /**
    - jsName: allowsBranchSelection
    - name: allowsBranchSelection
    - argLabels: 
  */
  @objc var allowsBranchSelection: Bool { @objc get @objc (setAllowsBranchSelection:) set }

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
    - jsName: autohidesScroller
    - name: autohidesScroller
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var autohidesScroller: Bool { @objc get @objc (setAutohidesScroller:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: cellPrototype
    - name: cellPrototype
    - argLabels: 
  */
  @objc var cellPrototype: Any! { @objc get @objc (setCellPrototype:) set }

  /**
    - jsName: clickedColumn
    - name: clickedColumn
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var clickedColumn: Int { @objc get }

  /**
    - jsName: clickedRow
    - name: clickedRow
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var clickedRow: Int { @objc get }

  /**
    - jsName: columnResizingType
    - name: columnResizingType
    - argLabels: 
  */
  @objc var columnResizingType: NSBrowser.ColumnResizingType { @objc get @objc (setColumnResizingType:) set }

  /**
    - jsName: columnsAutosaveName
    - name: columnsAutosaveName
    - argLabels: 
  */
  @objc var columnsAutosaveName: NSBrowser.ColumnsAutosaveName { @objc get @objc (setColumnsAutosaveName:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSBrowserDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: doubleAction
    - name: doubleAction
    - argLabels: 
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - jsName: firstVisibleColumn
    - name: firstVisibleColumn
    - argLabels: 
  */
  @objc var firstVisibleColumn: Int { @objc get }

  /**
    - jsName: hasHorizontalScroller
    - name: hasHorizontalScroller
    - argLabels: 
  */
  @objc var hasHorizontalScroller: Bool { @objc get @objc (setHasHorizontalScroller:) set }

  /**
    - jsName: lastColumn
    - name: lastColumn
    - argLabels: 
  */
  @objc var lastColumn: Int { @objc get @objc (setLastColumn:) set }

  /**
    - jsName: lastVisibleColumn
    - name: lastVisibleColumn
    - argLabels: 
  */
  @objc var lastVisibleColumn: Int { @objc get }

  /**
    - jsName: isLoaded
    - name: loaded
    - argLabels: 
    - obsoleted: 3
    - renamed: isLoaded
  */
  @objc var isLoaded: Bool { @objc get }

  /**
    - jsName: maxVisibleColumns
    - name: maxVisibleColumns
    - argLabels: 
  */
  @objc var maxVisibleColumns: Int { @objc get @objc (setMaxVisibleColumns:) set }

  /**
    - jsName: minColumnWidth
    - name: minColumnWidth
    - argLabels: 
  */
  @objc var minColumnWidth: CGFloat { @objc get @objc (setMinColumnWidth:) set }

  /**
    - jsName: numberOfVisibleColumns
    - name: numberOfVisibleColumns
    - argLabels: 
  */
  @objc var numberOfVisibleColumns: Int { @objc get }

  /**
    - jsName: pathSeparator
    - name: pathSeparator
    - argLabels: 
  */
  @objc var pathSeparator: String { @objc get @objc (setPathSeparator:) set }

  /**
    - jsName: prefersAllColumnUserResizing
    - name: prefersAllColumnUserResizing
    - argLabels: 
  */
  @objc var prefersAllColumnUserResizing: Bool { @objc get @objc (setPrefersAllColumnUserResizing:) set }

  /**
    - jsName: reusesColumns
    - name: reusesColumns
    - argLabels: 
  */
  @objc var reusesColumns: Bool { @objc get @objc (setReusesColumns:) set }

  /**
    - jsName: rowHeight
    - name: rowHeight
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var rowHeight: CGFloat { @objc get @objc (setRowHeight:) set }

  /**
    - jsName: selectedCells
    - name: selectedCells
    - argLabels: 
  */
  @objc var selectedCells: [NSCell]? { @objc get }

  /**
    - jsName: selectedColumn
    - name: selectedColumn
    - argLabels: 
  */
  @objc var selectedColumn: Int { @objc get }

  /**
    - jsName: selectionIndexPath
    - name: selectionIndexPath
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var selectionIndexPath: IndexPath? { @objc get @objc (setSelectionIndexPath:) set }

  /**
    - jsName: selectionIndexPaths
    - name: selectionIndexPaths
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var selectionIndexPaths: [IndexPath] { @objc get @objc (setSelectionIndexPaths:) set }

  /**
    - jsName: sendsActionOnArrowKeys
    - name: sendsActionOnArrowKeys
    - argLabels: 
  */
  @objc var sendsActionOnArrowKeys: Bool { @objc get @objc (setSendsActionOnArrowKeys:) set }

  /**
    - jsName: separatesColumns
    - name: separatesColumns
    - argLabels: 
  */
  @objc var separatesColumns: Bool { @objc get @objc (setSeparatesColumns:) set }

  /**
    - jsName: takesTitleFromPreviousColumn
    - name: takesTitleFromPreviousColumn
    - argLabels: 
  */
  @objc var takesTitleFromPreviousColumn: Bool { @objc get @objc (setTakesTitleFromPreviousColumn:) set }

  /**
    - jsName: titleHeight
    - name: titleHeight
    - argLabels: 
  */
  @objc var titleHeight: CGFloat { @objc get }

  /**
    - jsName: isTitled
    - name: titled
    - argLabels: 
    - obsoleted: 3
    - renamed: isTitled
  */
  @objc var isTitled: Bool { @objc get @objc (setTitled:) set }
}

@objc protocol BrowserExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(Browser) public class Browser: NSBrowser, BrowserExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSBrowser: NSBrowserExports {
}
