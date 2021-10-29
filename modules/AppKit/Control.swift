import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSControl
    - name: NSControl
    - argLabels: 
  */

@objc(NSControl) protocol NSControlExports: JSExport, NSViewExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: cellClass
    - name: cellClass
    - argLabels: 
  */
  @objc static var cellClass: AnyClass? { @objc get @objc (setCellClass:) set }

  // Instance Methods

  /**
    - jsName: abortEditing
    - name: abortEditing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func abortEditing() -> Bool

  /**
    - jsName: currentEditor
    - name: currentEditor
    - argLabels: 
    - constructorTokens: 
  */
  @objc func currentEditor() -> NSText?

  /**
    - jsName: drawCell
    - name: drawCell:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func drawCell(_: NSCell)

  /**
    - jsName: drawCellInside
    - name: drawCellInside:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (drawCellInside:) func drawCellInside(_: NSCell)

  /**
    - jsName: draw
    - name: drawWithExpansionFrame:inView:
    - argLabels: withExpansionFrame, in
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: draw(withExpansionFrame:in:)
    - Introduced: 10.10
  */
  @objc (drawWithExpansionFrame:inView:) @available(OSX 10.10, *) func draw(withExpansionFrame: CGRect, in: NSView)

  /**
    - jsName: edit
    - name: editWithFrame:editor:delegate:event:
    - argLabels: withFrame, editor, delegate, event
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: edit(withFrame:editor:delegate:event:)
    - Introduced: 10.10
  */
  @objc (editWithFrame:editor:delegate:event:) @available(OSX 10.10, *) func edit(withFrame: CGRect, editor: NSText, delegate: Any?, event: NSEvent)

  /**
    - jsName: endEditing
    - name: endEditing:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func endEditing(_: NSText)

  /**
    - jsName: expansionFrame
    - name: expansionFrameWithFrame:
    - argLabels: withFrame
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: expansionFrame(withFrame:)
    - Introduced: 10.10
  */
  @objc (expansionFrameWithFrame:) @available(OSX 10.10, *) func expansionFrame(withFrame: CGRect) -> CGRect

  /**
    - jsName: invalidateIntrinsicContentSize
    - name: invalidateIntrinsicContentSizeForCell:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: invalidateIntrinsicContentSize(for:)
    - Introduced: 10.7
  */
  @objc (invalidateIntrinsicContentSizeForCell:) @available(OSX 10.7, *) func invalidateIntrinsicContentSize(`for`: NSCell)

  /**
    - jsName: performClick
    - name: performClick:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performClick(_: Any?)

  /**
    - jsName: selectCell
    - name: selectCell:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectCell(_: NSCell)

  /**
    - jsName: select
    - name: selectWithFrame:editor:delegate:start:length:
    - argLabels: withFrame, editor, delegate, start, length
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: select(withFrame:editor:delegate:start:length:)
    - Introduced: 10.10
  */
  @objc (selectWithFrame:editor:delegate:start:length:) @available(OSX 10.10, *) func select(withFrame: CGRect, editor: NSText, delegate: Any?, start: Int, length: Int)

  /**
    - jsName: selectedCell
    - name: selectedCell
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectedCell() -> NSCell?

  /**
    - jsName: selectedTag
    - name: selectedTag
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectedTag() -> Int

  /**
    - jsName: sendAction
    - name: sendAction:to:
    - argLabels: to
    - constructorTokens: 
  */
  @objc func sendAction(_: Selector?, to: Any?) -> Bool

  /**
    - jsName: sendAction
    - name: sendActionOn:
    - argLabels: on
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sendAction(on:)
  */
  @objc (sendActionOn:) func sendAction(on: NSEvent.EventTypeMask) -> Int

  /**
    - jsName: sizeThatFits
    - name: sizeThatFits:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func sizeThatFits(_: CGSize) -> CGSize

  /**
    - jsName: sizeToFit
    - name: sizeToFit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeToFit()

  /**
    - jsName: takeDoubleValueFrom
    - name: takeDoubleValueFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeDoubleValueFrom(_: Any?)

  /**
    - jsName: takeFloatValueFrom
    - name: takeFloatValueFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeFloatValueFrom(_: Any?)

  /**
    - jsName: takeIntValueFrom
    - name: takeIntValueFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeIntValueFrom(_: Any?)

  /**
    - jsName: takeIntegerValueFrom
    - name: takeIntegerValueFrom:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func takeIntegerValueFrom(_: Any?)

  /**
    - jsName: takeObjectValueFrom
    - name: takeObjectValueFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeObjectValueFrom(_: Any?)

  /**
    - jsName: takeStringValueFrom
    - name: takeStringValueFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeStringValueFrom(_: Any?)

  /**
    - jsName: updateCell
    - name: updateCell:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func updateCell(_: NSCell)

  /**
    - jsName: updateCellInside
    - name: updateCellInside:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (updateCellInside:) func updateCellInside(_: NSCell)

  /**
    - jsName: validateEditing
    - name: validateEditing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func validateEditing()

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - jsName: allowsExpansionToolTips
    - name: allowsExpansionToolTips
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsExpansionToolTips: Bool { @objc get @objc (setAllowsExpansionToolTips:) set }

  /**
    - jsName: attributedStringValue
    - name: attributedStringValue
    - argLabels: 
  */
  @objc var attributedStringValue: NSAttributedString { @objc get @objc (setAttributedStringValue:) set }

  /**
    - jsName: baseWritingDirection
    - name: baseWritingDirection
    - argLabels: 
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - jsName: cell
    - name: cell
    - argLabels: 
  */
  @objc var cell: NSCell? { @objc get @objc (setCell:) set }

  /**
    - jsName: isContinuous
    - name: continuous
    - argLabels: 
    - obsoleted: 3
    - renamed: isContinuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - jsName: controlSize
    - name: controlSize
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - jsName: doubleValue
    - name: doubleValue
    - argLabels: 
  */
  @objc var doubleValue: Double { @objc get @objc (setDoubleValue:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - jsName: floatValue
    - name: floatValue
    - argLabels: 
  */
  @objc var floatValue: Float { @objc get @objc (setFloatValue:) set }

  /**
    - jsName: font
    - name: font
    - argLabels: 
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - jsName: formatter
    - name: formatter
    - argLabels: 
  */
  @objc var formatter: Formatter? { @objc get @objc (setFormatter:) set }

  /**
    - jsName: isHighlighted
    - name: highlighted
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isHighlighted
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isHighlighted: Bool { @objc get @objc (setHighlighted:) set }

  /**
    - jsName: ignoresMultiClick
    - name: ignoresMultiClick
    - argLabels: 
  */
  @objc var ignoresMultiClick: Bool { @objc get @objc (setIgnoresMultiClick:) set }

  /**
    - jsName: intValue
    - name: intValue
    - argLabels: 
  */
  @objc var intValue: Int32 { @objc get @objc (setIntValue:) set }

  /**
    - jsName: integerValue
    - name: integerValue
    - argLabels: 
  */
  @objc var integerValue: Int { @objc get @objc (setIntegerValue:) set }

  /**
    - jsName: lineBreakMode
    - name: lineBreakMode
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var lineBreakMode: NSLineBreakMode { @objc get @objc (setLineBreakMode:) set }

  /**
    - jsName: objectValue
    - name: objectValue
    - argLabels: 
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - jsName: refusesFirstResponder
    - name: refusesFirstResponder
    - argLabels: 
  */
  @objc var refusesFirstResponder: Bool { @objc get @objc (setRefusesFirstResponder:) set }

  /**
    - jsName: stringValue
    - name: stringValue
    - argLabels: 
  */
  @objc var stringValue: String { @objc get @objc (setStringValue:) set }

  /**
    - jsName: tag
    - name: tag
    - argLabels: 
  */
  @objc var tag: Int { @objc get @objc (setTag:) set }

  /**
    - jsName: target
    - name: target
    - argLabels: 
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - jsName: usesSingleLineMode
    - name: usesSingleLineMode
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var usesSingleLineMode: Bool { @objc get @objc (setUsesSingleLineMode:) set }
}

@objc protocol ControlExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(Control) public class Control: NSControl, ControlExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSControl: NSControlExports {
}
