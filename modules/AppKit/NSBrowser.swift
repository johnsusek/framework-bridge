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
    - Selector: NSBrowser
  */

@objc(NSBrowser) protocol NSBrowserExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: removeSavedColumnsWithAutosaveName:
  */
  @objc (removeSavedColumnsWithAutosaveName:) static func removeSavedColumns(withAutosaveName: NSBrowser.ColumnsAutosaveName)

  // Own Static Properties

  /**
    - Selector: cellClass
  */
  @objc static var cellClass: AnyClass { @objc get }

  // Instance Methods

  /**
    - Selector: addColumn
  */
  @objc func addColumn()

  /**
    - Selector: canDragRowsWithIndexes:inColumn:withEvent:
    - Introduced: 10.5
  */
  @objc (canDragRowsWithIndexes:inColumn:withEvent:) @available(OSX 10.5, *) func canDragRows(with: IndexSet, inColumn: Int, with: NSEvent) -> Bool

  /**
    - Selector: columnContentWidthForColumnWidth:
  */
  @objc (columnContentWidthForColumnWidth:) func columnContentWidth(forColumnWidth: CGFloat) -> CGFloat

  /**
    - Selector: columnWidthForColumnContentWidth:
  */
  @objc (columnWidthForColumnContentWidth:) func columnWidth(forColumnContentWidth: CGFloat) -> CGFloat

  /**
    - Selector: defaultColumnWidth
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func defaultColumnWidth() -> CGFloat

  /**
    - Selector: doClick:
  */
  @objc func doClick(_: Any?)

  /**
    - Selector: doDoubleClick:
  */
  @objc func doDoubleClick(_: Any?)

  /**
    - Selector: draggingImageForRowsWithIndexes:inColumn:withEvent:offset:
    - Introduced: 10.5
  */
  @objc (draggingImageForRowsWithIndexes:inColumn:withEvent:offset:) @available(OSX 10.5, *) func draggingImageForRows(with: IndexSet, inColumn: Int, with: NSEvent, offset: NSPointPointer?) -> NSImage?

  /**
    - Selector: drawTitleOfColumn:inRect:
  */
  @objc (drawTitleOfColumn:inRect:) func drawTitle(ofColumn: Int, in: CGRect)

  /**
    - Selector: editItemAtIndexPath:withEvent:select:
    - Introduced: 10.6
  */
  @objc (editItemAtIndexPath:withEvent:select:) @available(OSX 10.6, *) func editItem(at: IndexPath, with: NSEvent?, select: Bool)

  /**
    - Selector: frameOfColumn:
  */
  @objc (frameOfColumn:) func frame(ofColumn: Int) -> CGRect

  /**
    - Selector: frameOfInsideOfColumn:
  */
  @objc (frameOfInsideOfColumn:) func frame(ofInsideOfColumn: Int) -> CGRect

  /**
    - Selector: frameOfRow:inColumn:
    - Introduced: 10.6
  */
  @objc (frameOfRow:inColumn:) @available(OSX 10.6, *) func frame(ofRow: Int, inColumn: Int) -> CGRect

  /**
    - Selector: getRow:column:forPoint:
    - Introduced: 10.6
  */
  @objc (getRow:column:forPoint:) @available(OSX 10.6, *) func getRow(_: UnsafeMutablePointer<NSInteger>?, column: UnsafeMutablePointer<NSInteger>?, `for`: CGPoint) -> Bool

  /**
    - Selector: indexPathForColumn:
    - Introduced: 10.6
  */
  @objc (indexPathForColumn:) @available(OSX 10.6, *) func indexPath(forColumn: Int) -> IndexPath

  /**
    - Selector: isLeafItem:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func isLeafItem(_: Any?) -> Bool

  /**
    - Selector: itemAtIndexPath:
    - Introduced: 10.6
  */
  @objc (itemAtIndexPath:) @available(OSX 10.6, *) func item(at: IndexPath) -> Any?

  /**
    - Selector: itemAtRow:inColumn:
    - Introduced: 10.6
  */
  @objc (itemAtRow:inColumn:) @available(OSX 10.6, *) func item(atRow: Int, inColumn: Int) -> Any?

  /**
    - Selector: loadColumnZero
  */
  @objc func loadColumnZero()

  /**
    - Selector: loadedCellAtRow:column:
  */
  @objc (loadedCellAtRow:column:) func loadedCell(atRow: Int, column: Int) -> Any?

  /**
    - Selector: noteHeightOfRowsWithIndexesChanged:inColumn:
    - Introduced: 10.6
  */
  @objc (noteHeightOfRowsWithIndexesChanged:inColumn:) @available(OSX 10.6, *) func noteHeightOfRowsWithIndexesChanged(_: IndexSet, inColumn: Int)

  /**
    - Selector: parentForItemsInColumn:
    - Introduced: 10.6
  */
  @objc (parentForItemsInColumn:) @available(OSX 10.6, *) func parentForItems(inColumn: Int) -> Any?

  /**
    - Selector: path
  */
  @objc func path() -> String

  /**
    - Selector: pathToColumn:
  */
  @objc (pathToColumn:) func path(toColumn: Int) -> String

  /**
    - Selector: reloadColumn:
  */
  @objc func reloadColumn(_: Int)

  /**
    - Selector: reloadDataForRowIndexes:inColumn:
    - Introduced: 10.6
  */
  @objc (reloadDataForRowIndexes:inColumn:) @available(OSX 10.6, *) func reloadData(forRowIndexes: IndexSet, inColumn: Int)

  /**
    - Selector: scrollColumnToVisible:
  */
  @objc func scrollColumnToVisible(_: Int)

  /**
    - Selector: scrollColumnsLeftBy:
  */
  @objc (scrollColumnsLeftBy:) func scrollColumnsLeft(by: Int)

  /**
    - Selector: scrollColumnsRightBy:
  */
  @objc (scrollColumnsRightBy:) func scrollColumnsRight(by: Int)

  /**
    - Selector: scrollRowToVisible:inColumn:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func scrollRowToVisible(_: Int, inColumn: Int)

  /**
    - Selector: selectRow:inColumn:
  */
  @objc func selectRow(_: Int, inColumn: Int)

  /**
    - Selector: selectRowIndexes:inColumn:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func selectRowIndexes(_: IndexSet, inColumn: Int)

  /**
    - Selector: selectedCellInColumn:
  */
  @objc (selectedCellInColumn:) func selectedCell(inColumn: Int) -> Any?

  /**
    - Selector: selectedRowInColumn:
  */
  @objc (selectedRowInColumn:) func selectedRow(inColumn: Int) -> Int

  /**
    - Selector: selectedRowIndexesInColumn:
    - Introduced: 10.5
  */
  @objc (selectedRowIndexesInColumn:) @available(OSX 10.5, *) func selectedRowIndexes(inColumn: Int) -> IndexSet?

  /**
    - Selector: sendAction
  */
  @objc func sendAction() -> Bool

  /**
    - Selector: setCellClass:
  */
  @objc func setCellClass(_: AnyClass)

  /**
    - Selector: setDefaultColumnWidth:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func setDefaultColumnWidth(_: CGFloat)

  /**
    - Selector: setDraggingSourceOperationMask:forLocal:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setDraggingSourceOperationMask(_: NSDragOperation, forLocal: Bool)

  /**
    - Selector: setPath:
  */
  @objc func setPath(_: String) -> Bool

  /**
    - Selector: setTitle:ofColumn:
  */
  @objc func setTitle(_: String, ofColumn: Int)

  /**
    - Selector: setWidth:ofColumn:
  */
  @objc func setWidth(_: CGFloat, ofColumn: Int)

  /**
    - Selector: tile
  */
  @objc func tile()

  /**
    - Selector: titleFrameOfColumn:
  */
  @objc (titleFrameOfColumn:) func titleFrame(ofColumn: Int) -> CGRect

  /**
    - Selector: titleOfColumn:
  */
  @objc (titleOfColumn:) func title(ofColumn: Int) -> String?

  /**
    - Selector: validateVisibleColumns
  */
  @objc func validateVisibleColumns()

  /**
    - Selector: widthOfColumn:
  */
  @objc (widthOfColumn:) func width(ofColumn: Int) -> CGFloat

  // Own Instance Properties

  /**
    - Selector: allowsBranchSelection
  */
  @objc var allowsBranchSelection: Bool { @objc get @objc (setAllowsBranchSelection:) set }

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
    - Selector: autohidesScroller
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var autohidesScroller: Bool { @objc get @objc (setAutohidesScroller:) set }

  /**
    - Selector: backgroundColor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: cellPrototype
  */
  @objc var cellPrototype: Any! { @objc get @objc (setCellPrototype:) set }

  /**
    - Selector: clickedColumn
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var clickedColumn: Int { @objc get }

  /**
    - Selector: clickedRow
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var clickedRow: Int { @objc get }

  /**
    - Selector: columnResizingType
  */
  @objc var columnResizingType: NSBrowser.ColumnResizingType { @objc get @objc (setColumnResizingType:) set }

  /**
    - Selector: columnsAutosaveName
  */
  @objc var columnsAutosaveName: NSBrowser.ColumnsAutosaveName { @objc get @objc (setColumnsAutosaveName:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSBrowserDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: doubleAction
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - Selector: firstVisibleColumn
  */
  @objc var firstVisibleColumn: Int { @objc get }

  /**
    - Selector: hasHorizontalScroller
  */
  @objc var hasHorizontalScroller: Bool { @objc get @objc (setHasHorizontalScroller:) set }

  /**
    - Selector: lastColumn
  */
  @objc var lastColumn: Int { @objc get @objc (setLastColumn:) set }

  /**
    - Selector: lastVisibleColumn
  */
  @objc var lastVisibleColumn: Int { @objc get }

  /**
    - Selector: loaded
  */
  @objc var isLoaded: Bool { @objc get }

  /**
    - Selector: maxVisibleColumns
  */
  @objc var maxVisibleColumns: Int { @objc get @objc (setMaxVisibleColumns:) set }

  /**
    - Selector: minColumnWidth
  */
  @objc var minColumnWidth: CGFloat { @objc get @objc (setMinColumnWidth:) set }

  /**
    - Selector: numberOfVisibleColumns
  */
  @objc var numberOfVisibleColumns: Int { @objc get }

  /**
    - Selector: pathSeparator
  */
  @objc var pathSeparator: String { @objc get @objc (setPathSeparator:) set }

  /**
    - Selector: prefersAllColumnUserResizing
  */
  @objc var prefersAllColumnUserResizing: Bool { @objc get @objc (setPrefersAllColumnUserResizing:) set }

  /**
    - Selector: reusesColumns
  */
  @objc var reusesColumns: Bool { @objc get @objc (setReusesColumns:) set }

  /**
    - Selector: rowHeight
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var rowHeight: CGFloat { @objc get @objc (setRowHeight:) set }

  /**
    - Selector: selectedCells
  */
  @objc var selectedCells: [NSCell]? { @objc get }

  /**
    - Selector: selectedColumn
  */
  @objc var selectedColumn: Int { @objc get }

  /**
    - Selector: selectionIndexPath
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var selectionIndexPath: IndexPath? { @objc get @objc (setSelectionIndexPath:) set }

  /**
    - Selector: selectionIndexPaths
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var selectionIndexPaths: [IndexPath] { @objc get @objc (setSelectionIndexPaths:) set }

  /**
    - Selector: sendsActionOnArrowKeys
  */
  @objc var sendsActionOnArrowKeys: Bool { @objc get @objc (setSendsActionOnArrowKeys:) set }

  /**
    - Selector: separatesColumns
  */
  @objc var separatesColumns: Bool { @objc get @objc (setSeparatesColumns:) set }

  /**
    - Selector: takesTitleFromPreviousColumn
  */
  @objc var takesTitleFromPreviousColumn: Bool { @objc get @objc (setTakesTitleFromPreviousColumn:) set }

  /**
    - Selector: titleHeight
  */
  @objc var titleHeight: CGFloat { @objc get }

  /**
    - Selector: titled
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
