import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTableRowView
    - Introduced: 10.7
  */

@objc(NSTableRowView) protocol NSTableRowViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: drawBackgroundInRect:
  */
  @objc (drawBackgroundInRect:) func drawBackground(in: CGRect)

  /**
    - Selector: drawDraggingDestinationFeedbackInRect:
  */
  @objc (drawDraggingDestinationFeedbackInRect:) func drawDraggingDestinationFeedback(in: CGRect)

  /**
    - Selector: drawSelectionInRect:
  */
  @objc (drawSelectionInRect:) func drawSelection(in: CGRect)

  /**
    - Selector: drawSeparatorInRect:
  */
  @objc (drawSeparatorInRect:) func drawSeparator(in: CGRect)

  /**
    - Selector: viewAtColumn:
  */
  @objc (viewAtColumn:) func view(atColumn: Int) -> Any?

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: draggingDestinationFeedbackStyle
  */
  @objc var draggingDestinationFeedbackStyle: NSTableView.DraggingDestinationFeedbackStyle { @objc get @objc (setDraggingDestinationFeedbackStyle:) set }

  /**
    - Selector: emphasized
  */
  @objc var isEmphasized: Bool { @objc get @objc (setEmphasized:) set }

  /**
    - Selector: floating
  */
  @objc var isFloating: Bool { @objc get @objc (setFloating:) set }

  /**
    - Selector: groupRowStyle
  */
  @objc var isGroupRowStyle: Bool { @objc get @objc (setGroupRowStyle:) set }

  /**
    - Selector: indentationForDropOperation
  */
  @objc var indentationForDropOperation: CGFloat { @objc get @objc (setIndentationForDropOperation:) set }

  /**
    - Selector: interiorBackgroundStyle
  */
  @objc var interiorBackgroundStyle: NSView.BackgroundStyle { @objc get }

  /**
    - Selector: nextRowSelected
  */
  @objc var isNextRowSelected: Bool { @objc get @objc (setNextRowSelected:) set }

  /**
    - Selector: numberOfColumns
  */
  @objc var numberOfColumns: Int { @objc get }

  /**
    - Selector: previousRowSelected
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isPreviousRowSelected: Bool { @objc get @objc (setPreviousRowSelected:) set }

  /**
    - Selector: selected
  */
  @objc var isSelected: Bool { @objc get @objc (setSelected:) set }

  /**
    - Selector: selectionHighlightStyle
  */
  @objc var selectionHighlightStyle: NSTableView.SelectionHighlightStyle { @objc get @objc (setSelectionHighlightStyle:) set }

  /**
    - Selector: targetForDropOperation
  */
  @objc var isTargetForDropOperation: Bool { @objc get @objc (setTargetForDropOperation:) set }
}

@objc protocol TableRowViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(TableRowView) public class TableRowView: NSTableRowView, TableRowViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTableRowView: NSTableRowViewExports {
}
