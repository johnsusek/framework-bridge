import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableRowView
    - name: NSTableRowView
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSTableRowView) protocol NSTableRowViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: drawBackground
    - name: drawBackgroundInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBackground(in:)
  */
  @objc (drawBackgroundInRect:) func drawBackground(in: CGRect)

  /**
    - jsName: drawDraggingDestinationFeedback
    - name: drawDraggingDestinationFeedbackInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawDraggingDestinationFeedback(in:)
  */
  @objc (drawDraggingDestinationFeedbackInRect:) func drawDraggingDestinationFeedback(in: CGRect)

  /**
    - jsName: drawSelection
    - name: drawSelectionInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawSelection(in:)
  */
  @objc (drawSelectionInRect:) func drawSelection(in: CGRect)

  /**
    - jsName: drawSeparator
    - name: drawSeparatorInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawSeparator(in:)
  */
  @objc (drawSeparatorInRect:) func drawSeparator(in: CGRect)

  /**
    - jsName: view
    - name: viewAtColumn:
    - argLabels: atColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: view(atColumn:)
  */
  @objc (viewAtColumn:) func view(atColumn: Int) -> Any?

  // Own Instance Properties

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: draggingDestinationFeedbackStyle
    - name: draggingDestinationFeedbackStyle
    - argLabels: 
  */
  @objc var draggingDestinationFeedbackStyle: NSTableView.DraggingDestinationFeedbackStyle { @objc get @objc (setDraggingDestinationFeedbackStyle:) set }

  /**
    - jsName: isEmphasized
    - name: emphasized
    - argLabels: 
    - obsoleted: 3
    - renamed: isEmphasized
  */
  @objc var isEmphasized: Bool { @objc get @objc (setEmphasized:) set }

  /**
    - jsName: isFloating
    - name: floating
    - argLabels: 
    - obsoleted: 3
    - renamed: isFloating
  */
  @objc var isFloating: Bool { @objc get @objc (setFloating:) set }

  /**
    - jsName: isGroupRowStyle
    - name: groupRowStyle
    - argLabels: 
    - obsoleted: 3
    - renamed: isGroupRowStyle
  */
  @objc var isGroupRowStyle: Bool { @objc get @objc (setGroupRowStyle:) set }

  /**
    - jsName: indentationForDropOperation
    - name: indentationForDropOperation
    - argLabels: 
  */
  @objc var indentationForDropOperation: CGFloat { @objc get @objc (setIndentationForDropOperation:) set }

  /**
    - jsName: interiorBackgroundStyle
    - name: interiorBackgroundStyle
    - argLabels: 
  */
  @objc var interiorBackgroundStyle: NSView.BackgroundStyle { @objc get }

  /**
    - jsName: isNextRowSelected
    - name: nextRowSelected
    - argLabels: 
    - obsoleted: 3
    - renamed: isNextRowSelected
  */
  @objc var isNextRowSelected: Bool { @objc get @objc (setNextRowSelected:) set }

  /**
    - jsName: numberOfColumns
    - name: numberOfColumns
    - argLabels: 
  */
  @objc var numberOfColumns: Int { @objc get }

  /**
    - jsName: isPreviousRowSelected
    - name: previousRowSelected
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isPreviousRowSelected
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isPreviousRowSelected: Bool { @objc get @objc (setPreviousRowSelected:) set }

  /**
    - jsName: isSelected
    - name: selected
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelected
  */
  @objc var isSelected: Bool { @objc get @objc (setSelected:) set }

  /**
    - jsName: selectionHighlightStyle
    - name: selectionHighlightStyle
    - argLabels: 
  */
  @objc var selectionHighlightStyle: NSTableView.SelectionHighlightStyle { @objc get @objc (setSelectionHighlightStyle:) set }

  /**
    - jsName: isTargetForDropOperation
    - name: targetForDropOperation
    - argLabels: 
    - obsoleted: 3
    - renamed: isTargetForDropOperation
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
