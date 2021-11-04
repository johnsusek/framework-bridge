import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSControl
  */

@objc(NSControl) protocol NSControlExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Static Properties

  /**
    - Selector: cellClass
  */
  @objc static var cellClass: AnyClass? { @objc get @objc (setCellClass:) set }

  // Instance Methods

  /**
    - Selector: abortEditing
  */
  @objc func abortEditing() -> Bool

  /**
    - Selector: currentEditor
  */
  @objc func currentEditor() -> NSText?

  /**
    - Selector: drawCell:
  */
  @objc func drawCell(_: NSCell)

  /**
    - Selector: drawCellInside:
  */
  @objc (drawCellInside:) func drawCellInside(_: NSCell)

  /**
    - Selector: drawWithExpansionFrame:inView:
    - Introduced: 10.10
  */
  @objc (drawWithExpansionFrame:inView:) @available(OSX 10.10, *) func draw(withExpansionFrame: CGRect, in: NSView)

  /**
    - Selector: editWithFrame:editor:delegate:event:
    - Introduced: 10.10
  */
  @objc (editWithFrame:editor:delegate:event:) @available(OSX 10.10, *) func edit(withFrame: CGRect, editor: NSText, delegate: Any?, event: NSEvent)

  /**
    - Selector: endEditing:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func endEditing(_: NSText)

  /**
    - Selector: expansionFrameWithFrame:
    - Introduced: 10.10
  */
  @objc (expansionFrameWithFrame:) @available(OSX 10.10, *) func expansionFrame(withFrame: CGRect) -> CGRect

  /**
    - Selector: invalidateIntrinsicContentSizeForCell:
    - Introduced: 10.7
  */
  @objc (invalidateIntrinsicContentSizeForCell:) @available(OSX 10.7, *) func invalidateIntrinsicContentSize(`for`: NSCell)

  /**
    - Selector: performClick:
  */
  @objc func performClick(_: Any?)

  /**
    - Selector: selectCell:
  */
  @objc func selectCell(_: NSCell)

  /**
    - Selector: selectWithFrame:editor:delegate:start:length:
    - Introduced: 10.10
  */
  @objc (selectWithFrame:editor:delegate:start:length:) @available(OSX 10.10, *) func select(withFrame: CGRect, editor: NSText, delegate: Any?, start: Int, length: Int)

  /**
    - Selector: selectedCell
  */
  @objc func selectedCell() -> NSCell?

  /**
    - Selector: selectedTag
  */
  @objc func selectedTag() -> Int

  /**
    - Selector: sendAction:to:
  */
  @objc func sendAction(_: Selector?, to: Any?) -> Bool

  /**
    - Selector: sendActionOn:
  */
  @objc (sendActionOn:) func sendAction(on: NSEvent.EventTypeMask) -> Int

  /**
    - Selector: sizeThatFits:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func sizeThatFits(_: CGSize) -> CGSize

  /**
    - Selector: sizeToFit
  */
  @objc func sizeToFit()

  /**
    - Selector: takeDoubleValueFrom:
  */
  @objc func takeDoubleValueFrom(_: Any?)

  /**
    - Selector: takeFloatValueFrom:
  */
  @objc func takeFloatValueFrom(_: Any?)

  /**
    - Selector: takeIntValueFrom:
  */
  @objc func takeIntValueFrom(_: Any?)

  /**
    - Selector: takeIntegerValueFrom:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func takeIntegerValueFrom(_: Any?)

  /**
    - Selector: takeObjectValueFrom:
  */
  @objc func takeObjectValueFrom(_: Any?)

  /**
    - Selector: takeStringValueFrom:
  */
  @objc func takeStringValueFrom(_: Any?)

  /**
    - Selector: updateCell:
  */
  @objc func updateCell(_: NSCell)

  /**
    - Selector: updateCellInside:
  */
  @objc (updateCellInside:) func updateCellInside(_: NSCell)

  /**
    - Selector: validateEditing
  */
  @objc func validateEditing()

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: alignment
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - Selector: allowsExpansionToolTips
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsExpansionToolTips: Bool { @objc get @objc (setAllowsExpansionToolTips:) set }

  /**
    - Selector: attributedStringValue
  */
  @objc var attributedStringValue: NSAttributedString { @objc get @objc (setAttributedStringValue:) set }

  /**
    - Selector: baseWritingDirection
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - Selector: cell
  */
  @objc var cell: NSCell? { @objc get @objc (setCell:) set }

  /**
    - Selector: continuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - Selector: controlSize
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - Selector: doubleValue
  */
  @objc var doubleValue: Double { @objc get @objc (setDoubleValue:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: floatValue
  */
  @objc var floatValue: Float { @objc get @objc (setFloatValue:) set }

  /**
    - Selector: font
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - Selector: formatter
  */
  @objc var formatter: Formatter? { @objc get @objc (setFormatter:) set }

  /**
    - Selector: highlighted
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isHighlighted: Bool { @objc get @objc (setHighlighted:) set }

  /**
    - Selector: ignoresMultiClick
  */
  @objc var ignoresMultiClick: Bool { @objc get @objc (setIgnoresMultiClick:) set }

  /**
    - Selector: intValue
  */
  @objc var intValue: Int32 { @objc get @objc (setIntValue:) set }

  /**
    - Selector: integerValue
  */
  @objc var integerValue: Int { @objc get @objc (setIntegerValue:) set }

  /**
    - Selector: lineBreakMode
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var lineBreakMode: NSLineBreakMode { @objc get @objc (setLineBreakMode:) set }

  /**
    - Selector: objectValue
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - Selector: refusesFirstResponder
  */
  @objc var refusesFirstResponder: Bool { @objc get @objc (setRefusesFirstResponder:) set }

  /**
    - Selector: stringValue
  */
  @objc var stringValue: String { @objc get @objc (setStringValue:) set }

  /**
    - Selector: tag
  */
  @objc var tag: Int { @objc get @objc (setTag:) set }

  /**
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - Selector: usesSingleLineMode
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
