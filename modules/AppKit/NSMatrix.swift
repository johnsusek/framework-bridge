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
    - Selector: NSMatrix
  */

@objc(NSMatrix) protocol NSMatrixExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: addColumn
  */
  @objc func addColumn()

  /**
    - Selector: addColumnWithCells:
  */
  @objc (addColumnWithCells:) func addColumn(with: [NSCell])

  /**
    - Selector: addRow
  */
  @objc func addRow()

  /**
    - Selector: addRowWithCells:
  */
  @objc (addRowWithCells:) func addRow(with: [NSCell])

  /**
    - Selector: cellAtRow:column:
  */
  @objc (cellAtRow:column:) func cell(atRow: Int, column: Int) -> NSCell?

  /**
    - Selector: cellFrameAtRow:column:
  */
  @objc (cellFrameAtRow:column:) func cellFrame(atRow: Int, column: Int) -> CGRect

  /**
    - Selector: cellWithTag:
  */
  @objc (cellWithTag:) func cell(withTag: Int) -> NSCell?

  /**
    - Selector: deselectAllCells
  */
  @objc func deselectAllCells()

  /**
    - Selector: deselectSelectedCell
  */
  @objc func deselectSelectedCell()

  /**
    - Selector: drawCellAtRow:column:
  */
  @objc (drawCellAtRow:column:) func drawCell(atRow: Int, column: Int)

  /**
    - Selector: getNumberOfRows:columns:
  */
  @objc func getNumberOfRows(_ p0: UnsafeMutablePointer<NSInteger>?, columns: UnsafeMutablePointer<NSInteger>?)

  /**
    - Selector: getRow:column:forPoint:
  */
  @objc (getRow:column:forPoint:) func getRow(_ p0: UnsafeMutablePointer<NSInteger>, column: UnsafeMutablePointer<NSInteger>, `for`: CGPoint) -> Bool

  /**
    - Selector: getRow:column:ofCell:
  */
  @objc (getRow:column:ofCell:) func getRow(_ p0: UnsafeMutablePointer<NSInteger>, column: UnsafeMutablePointer<NSInteger>, of: NSCell) -> Bool

  /**
    - Selector: highlightCell:atRow:column:
  */
  @objc func highlightCell(_ p0: Bool, atRow: Int, column: Int)

  /**
    - Selector: insertColumn:
  */
  @objc func insertColumn(_ p0: Int)

  /**
    - Selector: insertColumn:withCells:
  */
  @objc (insertColumn:withCells:) func insertColumn(_ p0: Int, with: [NSCell]?)

  /**
    - Selector: insertRow:
  */
  @objc func insertRow(_ p0: Int)

  /**
    - Selector: insertRow:withCells:
  */
  @objc (insertRow:withCells:) func insertRow(_ p0: Int, with: [NSCell]?)

  /**
    - Selector: makeCellAtRow:column:
  */
  @objc (makeCellAtRow:column:) func makeCell(atRow: Int, column: Int) -> NSCell

  /**
    - Selector: putCell:atRow:column:
  */
  @objc func putCell(_ p0: NSCell, atRow: Int, column: Int)

  /**
    - Selector: removeColumn:
  */
  @objc func removeColumn(_ p0: Int)

  /**
    - Selector: removeRow:
  */
  @objc func removeRow(_ p0: Int)

  /**
    - Selector: renewRows:columns:
  */
  @objc func renewRows(_ p0: Int, columns: Int)

  /**
    - Selector: scrollCellToVisibleAtRow:column:
  */
  @objc (scrollCellToVisibleAtRow:column:) func scrollCellToVisible(atRow: Int, column: Int)

  /**
    - Selector: selectCellAtRow:column:
  */
  @objc (selectCellAtRow:column:) func selectCell(atRow: Int, column: Int)

  /**
    - Selector: selectCellWithTag:
  */
  @objc (selectCellWithTag:) func selectCell(withTag: Int) -> Bool

  /**
    - Selector: selectText:
  */
  @objc func selectText(_ p0: Any?)

  /**
    - Selector: selectTextAtRow:column:
  */
  @objc (selectTextAtRow:column:) func selectText(atRow: Int, column: Int) -> NSCell?

  /**
    - Selector: sendAction
  */
  @objc func sendAction() -> Bool

  /**
    - Selector: sendAction:to:forAllCells:
  */
  @objc func sendAction(_ p0: Selector, to: Any, forAllCells: Bool)

  /**
    - Selector: sendDoubleAction
  */
  @objc func sendDoubleAction()

  /**
    - Selector: setScrollable:
  */
  @objc func setScrollable(_ p0: Bool)

  /**
    - Selector: setSelectionFrom:to:anchor:highlight:
  */
  @objc func setSelectionFrom(_ p0: Int, to: Int, anchor: Int, highlight: Bool)

  /**
    - Selector: setState:atRow:column:
  */
  @objc func setState(_ p0: Int, atRow: Int, column: Int)

  /**
    - Selector: setToolTip:forCell:
  */
  @objc (setToolTip:forCell:) func setToolTip(_ p0: String?, `for`: NSCell)

  /**
    - Selector: setValidateSize:
  */
  @objc func setValidateSize(_ p0: Bool)

  /**
    - Selector: sizeToCells
  */
  @objc func sizeToCells()

  /**
    - Selector: sortUsingFunction:context:
  */
  // jsvalue @objc (sortUsingFunction:context:) func sort(using: JSValue, context: UnsafeMutableRawPointer?)

  /**
    - Selector: sortUsingSelector:
  */
  @objc (sortUsingSelector:) func sort(using: Selector)

  /**
    - Selector: textDidBeginEditing:
  */
  @objc func textDidBeginEditing(_ p0: Notification)

  /**
    - Selector: textDidChange:
  */
  @objc func textDidChange(_ p0: Notification)

  /**
    - Selector: textDidEndEditing:
  */
  @objc func textDidEndEditing(_ p0: Notification)

  /**
    - Selector: textShouldBeginEditing:
  */
  @objc func textShouldBeginEditing(_ p0: NSText) -> Bool

  /**
    - Selector: textShouldEndEditing:
  */
  @objc func textShouldEndEditing(_ p0: NSText) -> Bool

  /**
    - Selector: toolTipForCell:
  */
  @objc (toolTipForCell:) func toolTip(`for`: NSCell) -> String?

  // Own Instance Properties

  /**
    - Selector: allowsEmptySelection
  */
  @objc var allowsEmptySelection: Bool { @objc get @objc (setAllowsEmptySelection:) set }

  /**
    - Selector: autorecalculatesCellSize
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var autorecalculatesCellSize: Bool { @objc get @objc (setAutorecalculatesCellSize:) set }

  /**
    - Selector: autoscroll
  */
  @objc var isAutoscroll: Bool { @objc get @objc (setAutoscroll:) set }

  /**
    - Selector: autosizesCells
  */
  @objc var autosizesCells: Bool { @objc get @objc (setAutosizesCells:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: cellBackgroundColor
  */
  @objc var cellBackgroundColor: NSColor? { @objc get @objc (setCellBackgroundColor:) set }

  /**
    - Selector: cellClass
  */
  @objc var cellClass: AnyClass { @objc get @objc (setCellClass:) set }

  /**
    - Selector: cellSize
  */
  @objc var cellSize: CGSize { @objc get @objc (setCellSize:) set }

  /**
    - Selector: cells
  */
  @objc var cells: [NSCell] { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSMatrixDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: doubleAction
  */
  @objc var doubleAction: Selector? { @objc get @objc (setDoubleAction:) set }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - Selector: drawsCellBackground
  */
  @objc var drawsCellBackground: Bool { @objc get @objc (setDrawsCellBackground:) set }

  /**
    - Selector: intercellSpacing
  */
  @objc var intercellSpacing: CGSize { @objc get @objc (setIntercellSpacing:) set }

  /**
    - Selector: keyCell
  */
  @objc var keyCell: NSCell? { @objc get @objc (setKeyCell:) set }

  /**
    - Selector: mode
  */
  @objc var mode: NSMatrix.Mode { @objc get @objc (setMode:) set }

  /**
    - Selector: mouseDownFlags
  */
  @objc var mouseDownFlags: Int { @objc get }

  /**
    - Selector: numberOfColumns
  */
  @objc var numberOfColumns: Int { @objc get }

  /**
    - Selector: numberOfRows
  */
  @objc var numberOfRows: Int { @objc get }

  /**
    - Selector: prototype
  */
  @objc var prototype: NSCell? { @objc get @objc (setPrototype:) set }

  /**
    - Selector: selectedCells
  */
  @objc var selectedCells: [NSCell] { @objc get }

  /**
    - Selector: selectedColumn
  */
  @objc var selectedColumn: Int { @objc get }

  /**
    - Selector: selectedRow
  */
  @objc var selectedRow: Int { @objc get }

  /**
    - Selector: selectionByRect
  */
  @objc var isSelectionByRect: Bool { @objc get @objc (setSelectionByRect:) set }

  /**
    - Selector: tabKeyTraversesCells
  */
  @objc var tabKeyTraversesCells: Bool { @objc get @objc (setTabKeyTraversesCells:) set }
}

extension NSMatrix: NSMatrixExports {
}
