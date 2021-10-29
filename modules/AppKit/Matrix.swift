import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMatrix
    - name: NSMatrix
    - argLabels: 
  */

@objc(NSMatrix) protocol NSMatrixExports: JSExport, NSControlExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addColumn
    - name: addColumn
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addColumn()

  /**
    - jsName: addColumn
    - name: addColumnWithCells:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addColumn(with:)
  */
  @objc (addColumnWithCells:) func addColumn(with: [NSCell])

  /**
    - jsName: addRow
    - name: addRow
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addRow()

  /**
    - jsName: addRow
    - name: addRowWithCells:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addRow(with:)
  */
  @objc (addRowWithCells:) func addRow(with: [NSCell])

  /**
    - jsName: cell
    - name: cellAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cell(atRow:column:)
  */
  @objc (cellAtRow:column:) func cell(atRow: Int, column: Int) -> NSCell?

  /**
    - jsName: cellFrame
    - name: cellFrameAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cellFrame(atRow:column:)
  */
  @objc (cellFrameAtRow:column:) func cellFrame(atRow: Int, column: Int) -> CGRect

  /**
    - jsName: cell
    - name: cellWithTag:
    - argLabels: withTag
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cell(withTag:)
  */
  @objc (cellWithTag:) func cell(withTag: Int) -> NSCell?

  /**
    - jsName: deselectAllCells
    - name: deselectAllCells
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deselectAllCells()

  /**
    - jsName: deselectSelectedCell
    - name: deselectSelectedCell
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deselectSelectedCell()

  /**
    - jsName: drawCell
    - name: drawCellAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawCell(atRow:column:)
  */
  @objc (drawCellAtRow:column:) func drawCell(atRow: Int, column: Int)

  /**
    - jsName: getNumberOfRows
    - name: getNumberOfRows:columns:
    - argLabels: columns
    - constructorTokens: 
  */
  @objc func getNumberOfRows(_: UnsafeMutablePointer<NSInteger>?, columns: UnsafeMutablePointer<NSInteger>?)

  /**
    - jsName: getRow
    - name: getRow:column:forPoint:
    - argLabels: _, column, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: getRow(_:column:for:)
  */
  @objc (getRow:column:forPoint:) func getRow(_: UnsafeMutablePointer<NSInteger>, column: UnsafeMutablePointer<NSInteger>, `for`: CGPoint) -> Bool

  /**
    - jsName: getRow
    - name: getRow:column:ofCell:
    - argLabels: _, column, of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: getRow(_:column:of:)
  */
  @objc (getRow:column:ofCell:) func getRow(_: UnsafeMutablePointer<NSInteger>, column: UnsafeMutablePointer<NSInteger>, of: NSCell) -> Bool

  /**
    - jsName: highlightCell
    - name: highlightCell:atRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
  */
  @objc func highlightCell(_: Bool, atRow: Int, column: Int)

  /**
    - jsName: insertColumn
    - name: insertColumn:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func insertColumn(_: Int)

  /**
    - jsName: insertColumn
    - name: insertColumn:withCells:
    - argLabels: _, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertColumn(_:with:)
  */
  @objc (insertColumn:withCells:) func insertColumn(_: Int, with: [NSCell]?)

  /**
    - jsName: insertRow
    - name: insertRow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func insertRow(_: Int)

  /**
    - jsName: insertRow
    - name: insertRow:withCells:
    - argLabels: _, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertRow(_:with:)
  */
  @objc (insertRow:withCells:) func insertRow(_: Int, with: [NSCell]?)

  /**
    - jsName: makeCell
    - name: makeCellAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: makeCell(atRow:column:)
  */
  @objc (makeCellAtRow:column:) func makeCell(atRow: Int, column: Int) -> NSCell

  /**
    - jsName: putCell
    - name: putCell:atRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
  */
  @objc func putCell(_: NSCell, atRow: Int, column: Int)

  /**
    - jsName: removeColumn
    - name: removeColumn:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeColumn(_: Int)

  /**
    - jsName: removeRow
    - name: removeRow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeRow(_: Int)

  /**
    - jsName: renewRows
    - name: renewRows:columns:
    - argLabels: columns
    - constructorTokens: 
  */
  @objc func renewRows(_: Int, columns: Int)

  /**
    - jsName: scrollCellToVisible
    - name: scrollCellToVisibleAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scrollCellToVisible(atRow:column:)
  */
  @objc (scrollCellToVisibleAtRow:column:) func scrollCellToVisible(atRow: Int, column: Int)

  /**
    - jsName: selectCell
    - name: selectCellAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectCell(atRow:column:)
  */
  @objc (selectCellAtRow:column:) func selectCell(atRow: Int, column: Int)

  /**
    - jsName: selectCell
    - name: selectCellWithTag:
    - argLabels: withTag
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectCell(withTag:)
  */
  @objc (selectCellWithTag:) func selectCell(withTag: Int) -> Bool

  /**
    - jsName: selectText
    - name: selectText:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectText(_: Any?)

  /**
    - jsName: selectText
    - name: selectTextAtRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectText(atRow:column:)
  */
  @objc (selectTextAtRow:column:) func selectText(atRow: Int, column: Int) -> NSCell?

  /**
    - jsName: sendAction
    - name: sendAction
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sendAction() -> Bool

  /**
    - jsName: sendAction
    - name: sendAction:to:forAllCells:
    - argLabels: to, forAllCells
    - constructorTokens: 
  */
  @objc func sendAction(_: Selector, to: Any, forAllCells: Bool)

  /**
    - jsName: sendDoubleAction
    - name: sendDoubleAction
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sendDoubleAction()

  /**
    - jsName: setScrollable
    - name: setScrollable:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setScrollable(_: Bool)

  /**
    - jsName: setSelectionFrom
    - name: setSelectionFrom:to:anchor:highlight:
    - argLabels: to, anchor, highlight
    - constructorTokens: 
  */
  @objc func setSelectionFrom(_: Int, to: Int, anchor: Int, highlight: Bool)

  /**
    - jsName: setState
    - name: setState:atRow:column:
    - argLabels: atRow, column
    - constructorTokens: 
  */
  @objc func setState(_: Int, atRow: Int, column: Int)

  /**
    - jsName: setToolTip
    - name: setToolTip:forCell:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setToolTip(_:for:)
  */
  @objc (setToolTip:forCell:) func setToolTip(_: String?, `for`: NSCell)

  /**
    - jsName: setValidateSize
    - name: setValidateSize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setValidateSize(_: Bool)

  /**
    - jsName: sizeToCells
    - name: sizeToCells
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeToCells()

  /**
    - jsName: sort
    - name: sortUsingFunction:context:
    - argLabels: using, context
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sort(using:context:)
  */
  // jsvalue - @objc (sortUsingFunction:context:) func sort(using: JSValue, context: UnsafeMutableRawPointer?)

  /**
    - jsName: sort
    - name: sortUsingSelector:
    - argLabels: using
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sort(using:)
  */
  @objc (sortUsingSelector:) func sort(using: Selector)

  /**
    - jsName: textDidBeginEditing
    - name: textDidBeginEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textDidBeginEditing(_: Notification)

  /**
    - jsName: textDidChange
    - name: textDidChange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textDidChange(_: Notification)

  /**
    - jsName: textDidEndEditing
    - name: textDidEndEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textDidEndEditing(_: Notification)

  /**
    - jsName: textShouldBeginEditing
    - name: textShouldBeginEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textShouldBeginEditing(_: NSText) -> Bool

  /**
    - jsName: textShouldEndEditing
    - name: textShouldEndEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textShouldEndEditing(_: NSText) -> Bool

  /**
    - jsName: toolTip
    - name: toolTipForCell:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: toolTip(for:)
  */
  @objc (toolTipForCell:) func toolTip(`for`: NSCell) -> String?

  // Own Instance Properties

  /**
    - jsName: allowsEmptySelection
    - name: allowsEmptySelection
    - argLabels: 
  */
  @objc var allowsEmptySelection: Bool { @objc get @objc (setAllowsEmptySelection:) set }

  /**
    - jsName: autorecalculatesCellSize
    - name: autorecalculatesCellSize
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var autorecalculatesCellSize: Bool { @objc get @objc (setAutorecalculatesCellSize:) set }

  /**
    - jsName: isAutoscroll
    - name: autoscroll
    - argLabels: 
    - obsoleted: 3
    - renamed: isAutoscroll
  */
  @objc var isAutoscroll: Bool { @objc get @objc (setAutoscroll:) set }

  /**
    - jsName: autosizesCells
    - name: autosizesCells
    - argLabels: 
  */
  @objc var autosizesCells: Bool { @objc get @objc (setAutosizesCells:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: cellBackgroundColor
    - name: cellBackgroundColor
    - argLabels: 
  */
  @objc var cellBackgroundColor: NSColor? { @objc get @objc (setCellBackgroundColor:) set }

  /**
    - jsName: cellClass
    - name: cellClass
    - argLabels: 
  */
  @objc var cellClass: AnyClass { @objc get @objc (setCellClass:) set }

  /**
    - jsName: cellSize
    - name: cellSize
    - argLabels: 
  */
  @objc var cellSize: CGSize { @objc get @objc (setCellSize:) set }

  /**
    - jsName: cells
    - name: cells
    - argLabels: 
  */
  @objc var cells: [NSCell] { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSMatrixDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: doubleAction
    - name: doubleAction
    - argLabels: 
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - jsName: drawsCellBackground
    - name: drawsCellBackground
    - argLabels: 
  */
  @objc var drawsCellBackground: Bool { @objc get @objc (setDrawsCellBackground:) set }

  /**
    - jsName: intercellSpacing
    - name: intercellSpacing
    - argLabels: 
  */
  @objc var intercellSpacing: CGSize { @objc get @objc (setIntercellSpacing:) set }

  /**
    - jsName: keyCell
    - name: keyCell
    - argLabels: 
  */
  @objc var keyCell: NSCell? { @objc get @objc (setKeyCell:) set }

  /**
    - jsName: mode
    - name: mode
    - argLabels: 
  */
  @objc var mode: NSMatrix.Mode { @objc get @objc (setMode:) set }

  /**
    - jsName: mouseDownFlags
    - name: mouseDownFlags
    - argLabels: 
  */
  @objc var mouseDownFlags: Int { @objc get }

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
    - jsName: prototype
    - name: prototype
    - argLabels: 
  */
  @objc var prototype: NSCell? { @objc get @objc (setPrototype:) set }

  /**
    - jsName: selectedCells
    - name: selectedCells
    - argLabels: 
  */
  @objc var selectedCells: [NSCell] { @objc get }

  /**
    - jsName: selectedColumn
    - name: selectedColumn
    - argLabels: 
  */
  @objc var selectedColumn: Int { @objc get }

  /**
    - jsName: selectedRow
    - name: selectedRow
    - argLabels: 
  */
  @objc var selectedRow: Int { @objc get }

  /**
    - jsName: isSelectionByRect
    - name: selectionByRect
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelectionByRect
  */
  @objc var isSelectionByRect: Bool { @objc get @objc (setSelectionByRect:) set }

  /**
    - jsName: tabKeyTraversesCells
    - name: tabKeyTraversesCells
    - argLabels: 
  */
  @objc var tabKeyTraversesCells: Bool { @objc get @objc (setTabKeyTraversesCells:) set }
}

@objc protocol MatrixExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(Matrix) public class Matrix: NSMatrix, MatrixExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSMatrix: NSMatrixExports {
}
