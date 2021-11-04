import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCell
  */

@objc(NSCell) protocol NSCellExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultFocusRingType
  */
  @objc static var defaultFocusRingType: NSFocusRingType { @objc get }

  /**
    - Selector: defaultMenu
  */
  @objc static var defaultMenu: NSMenu? { @objc get }

  /**
    - Selector: prefersTrackingUntilMouseUp
  */
  @objc static var prefersTrackingUntilMouseUp: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: calcDrawInfo:
  */
  @objc func calcDrawInfo(_: CGRect)

  /**
    - Selector: cellAttribute:
  */
  @objc func cellAttribute(_: NSCell.Attribute) -> Int

  /**
    - Selector: cellSizeForBounds:
  */
  @objc (cellSizeForBounds:) func cellSize(forBounds: CGRect) -> CGSize

  /**
    - Selector: compare:
  */
  @objc func compare(_: Any) -> ComparisonResult

  /**
    - Selector: continueTracking:at:inView:
  */
  @objc (continueTracking:at:inView:) func continueTracking(last: CGPoint, current: CGPoint, in: NSView) -> Bool

  /**
    - Selector: draggingImageComponentsWithFrame:inView:
    - Introduced: 10.7
  */
  @objc (draggingImageComponentsWithFrame:inView:) @available(OSX 10.7, *) func draggingImageComponents(withFrame: CGRect, in: NSView) -> [NSDraggingImageComponent]

  /**
    - Selector: drawFocusRingMaskWithFrame:inView:
    - Introduced: 10.7
  */
  @objc (drawFocusRingMaskWithFrame:inView:) @available(OSX 10.7, *) func drawFocusRingMask(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawInteriorWithFrame:inView:
  */
  @objc (drawInteriorWithFrame:inView:) func drawInterior(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawWithExpansionFrame:inView:
    - Introduced: 10.5
  */
  @objc (drawWithExpansionFrame:inView:) @available(OSX 10.5, *) func draw(withExpansionFrame: CGRect, in: NSView)

  /**
    - Selector: drawWithFrame:inView:
  */
  @objc (drawWithFrame:inView:) func draw(withFrame: CGRect, in: NSView)

  /**
    - Selector: drawingRectForBounds:
  */
  @objc (drawingRectForBounds:) func drawingRect(forBounds: CGRect) -> CGRect

  /**
    - Selector: editWithFrame:inView:editor:delegate:event:
  */
  @objc (editWithFrame:inView:editor:delegate:event:) func edit(withFrame: CGRect, in: NSView, editor: NSText, delegate: Any?, event: NSEvent?)

  /**
    - Selector: endEditing:
  */
  @objc func endEditing(_: NSText)

  /**
    - Selector: expansionFrameWithFrame:inView:
    - Introduced: 10.5
  */
  @objc (expansionFrameWithFrame:inView:) @available(OSX 10.5, *) func expansionFrame(withFrame: CGRect, in: NSView) -> CGRect

  /**
    - Selector: fieldEditorForView:
    - Introduced: 10.6
  */
  @objc (fieldEditorForView:) @available(OSX 10.6, *) func fieldEditor(`for`: NSView) -> NSTextView?

  /**
    - Selector: focusRingMaskBoundsForFrame:inView:
    - Introduced: 10.7
  */
  @objc (focusRingMaskBoundsForFrame:inView:) @available(OSX 10.7, *) func focusRingMaskBounds(forFrame: CGRect, in: NSView) -> CGRect

  /**
    - Selector: getPeriodicDelay:interval:
  */
  @objc func getPeriodicDelay(_: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)

  /**
    - Selector: highlight:withFrame:inView:
  */
  @objc (highlight:withFrame:inView:) func highlight(_: Bool, withFrame: CGRect, in: NSView)

  /**
    - Selector: highlightColorWithFrame:inView:
  */
  @objc (highlightColorWithFrame:inView:) func highlightColor(withFrame: CGRect, in: NSView) -> NSColor?

  /**
    - Selector: hitTestForEvent:inRect:ofView:
    - Introduced: 10.5
  */
  @objc (hitTestForEvent:inRect:ofView:) @available(OSX 10.5, *) func hitTest(`for`: NSEvent, in: CGRect, of: NSView) -> NSCell.HitResult

  /**
    - Selector: imageRectForBounds:
  */
  @objc (imageRectForBounds:) func imageRect(forBounds: CGRect) -> CGRect

  /**
    - Selector: initImageCell:
  */
  @objc static func createImageCell(_: NSImage?) -> Self

  /**
    - Selector: initTextCell:
  */
  @objc static func createTextCell(_: String) -> Self

  /**
    - Selector: menuForEvent:inRect:ofView:
  */
  @objc (menuForEvent:inRect:ofView:) func menu(`for`: NSEvent, in: CGRect, of: NSView) -> NSMenu?

  /**
    - Selector: performClick:
  */
  @objc func performClick(_: Any?)

  /**
    - Selector: resetCursorRect:inView:
  */
  @objc (resetCursorRect:inView:) func resetCursorRect(_: CGRect, in: NSView)

  /**
    - Selector: selectWithFrame:inView:editor:delegate:start:length:
  */
  @objc (selectWithFrame:inView:editor:delegate:start:length:) func select(withFrame: CGRect, in: NSView, editor: NSText, delegate: Any?, start: Int, length: Int)

  /**
    - Selector: sendActionOn:
  */
  @objc (sendActionOn:) func sendAction(on: NSEvent.EventTypeMask) -> Int

  /**
    - Selector: setCellAttribute:to:
  */
  @objc func setCellAttribute(_: NSCell.Attribute, to: Int)

  /**
    - Selector: setNextState
  */
  @objc func setNextState()

  /**
    - Selector: setUpFieldEditorAttributes:
  */
  @objc func setUpFieldEditorAttributes(_: NSText) -> NSText

  /**
    - Selector: startTrackingAt:inView:
  */
  @objc (startTrackingAt:inView:) func startTracking(at: CGPoint, in: NSView) -> Bool

  /**
    - Selector: stopTracking:at:inView:mouseIsUp:
  */
  @objc (stopTracking:at:inView:mouseIsUp:) func stopTracking(last: CGPoint, current: CGPoint, in: NSView, mouseIsUp: Bool)

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
    - Selector: titleRectForBounds:
  */
  @objc (titleRectForBounds:) func titleRect(forBounds: CGRect) -> CGRect

  /**
    - Selector: trackMouse:inRect:ofView:untilMouseUp:
  */
  @objc (trackMouse:inRect:ofView:untilMouseUp:) func trackMouse(with: NSEvent, in: CGRect, of: NSView, untilMouseUp: Bool) -> Bool

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: acceptsFirstResponder
  */
  @objc var acceptsFirstResponder: Bool { @objc get }

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: alignment
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - Selector: allowsEditingTextAttributes
  */
  @objc var allowsEditingTextAttributes: Bool { @objc get @objc (setAllowsEditingTextAttributes:) set }

  /**
    - Selector: allowsMixedState
  */
  @objc var allowsMixedState: Bool { @objc get @objc (setAllowsMixedState:) set }

  /**
    - Selector: allowsUndo
  */
  @objc var allowsUndo: Bool { @objc get @objc (setAllowsUndo:) set }

  /**
    - Selector: attributedStringValue
  */
  @objc var attributedStringValue: NSAttributedString { @objc get @objc (setAttributedStringValue:) set }

  /**
    - Selector: backgroundStyle
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var backgroundStyle: NSView.BackgroundStyle { @objc get @objc (setBackgroundStyle:) set }

  /**
    - Selector: baseWritingDirection
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - Selector: bezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - Selector: bordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - Selector: cellSize
  */
  @objc var cellSize: CGSize { @objc get }

  /**
    - Selector: continuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - Selector: controlSize
  */
  @objc var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - Selector: controlTint
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: The controlTint property is not respected on 10.14 and later. For custom cells, use +[NSColor controlAccentColor] to respect the user's preferred accent color when drawing.
  */
  @objc @available(OSX 10.0, *) var controlTint: NSControlTint { @objc get @objc (setControlTint:) set }

  /**
    - Selector: controlView
  */
  @objc var controlView: NSView? { @objc get @objc (setControlView:) set }

  /**
    - Selector: doubleValue
  */
  @objc var doubleValue: Double { @objc get @objc (setDoubleValue:) set }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: floatValue
  */
  @objc var floatValue: Float { @objc get @objc (setFloatValue:) set }

  /**
    - Selector: focusRingType
  */
  @objc var focusRingType: NSFocusRingType { @objc get @objc (setFocusRingType:) set }

  /**
    - Selector: font
  */
  @objc var font: NSFont? { @objc get @objc (setFont:) set }

  /**
    - Selector: formatter
  */
  @objc var formatter: Formatter? { @objc get @objc (setFormatter:) set }

  /**
    - Selector: hasValidObjectValue
  */
  @objc var hasValidObjectValue: Bool { @objc get }

  /**
    - Selector: highlighted
  */
  @objc var isHighlighted: Bool { @objc get @objc (setHighlighted:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: importsGraphics
  */
  @objc var importsGraphics: Bool { @objc get @objc (setImportsGraphics:) set }

  /**
    - Selector: intValue
  */
  @objc var intValue: Int32 { @objc get @objc (setIntValue:) set }

  /**
    - Selector: integerValue
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var integerValue: Int { @objc get @objc (setIntegerValue:) set }

  /**
    - Selector: interiorBackgroundStyle
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var interiorBackgroundStyle: NSView.BackgroundStyle { @objc get }

  /**
    - Selector: keyEquivalent
  */
  @objc var keyEquivalent: String { @objc get }

  /**
    - Selector: lineBreakMode
  */
  @objc var lineBreakMode: NSLineBreakMode { @objc get @objc (setLineBreakMode:) set }

  /**
    - Selector: menu
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - Selector: mouseDownFlags
  */
  @objc var mouseDownFlags: Int { @objc get }

  /**
    - Selector: nextState
  */
  @objc var nextState: Int { @objc get }

  /**
    - Selector: objectValue
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - Selector: opaque
  */
  @objc var isOpaque: Bool { @objc get }

  /**
    - Selector: refusesFirstResponder
  */
  @objc var refusesFirstResponder: Bool { @objc get @objc (setRefusesFirstResponder:) set }

  /**
    - Selector: representedObject
  */
  @objc var representedObject: Any? { @objc get @objc (setRepresentedObject:) set }

  /**
    - Selector: scrollable
  */
  @objc var isScrollable: Bool { @objc get @objc (setScrollable:) set }

  /**
    - Selector: selectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - Selector: sendsActionOnEndEditing
  */
  @objc var sendsActionOnEndEditing: Bool { @objc get @objc (setSendsActionOnEndEditing:) set }

  /**
    - Selector: showsFirstResponder
  */
  @objc var showsFirstResponder: Bool { @objc get @objc (setShowsFirstResponder:) set }

  /**
    - Selector: state
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }

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
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: truncatesLastVisibleLine
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var truncatesLastVisibleLine: Bool { @objc get @objc (setTruncatesLastVisibleLine:) set }

  /**
    - Selector: type
  */
  @objc var type: NSCell.CellType { @objc get @objc (setType:) set }

  /**
    - Selector: userInterfaceLayoutDirection
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setUserInterfaceLayoutDirection:) set }

  /**
    - Selector: usesSingleLineMode
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var usesSingleLineMode: Bool { @objc get @objc (setUsesSingleLineMode:) set }

  /**
    - Selector: wantsNotificationForMarkedText
  */
  @objc var wantsNotificationForMarkedText: Bool { @objc get }

  /**
    - Selector: wraps
  */
  @objc var wraps: Bool { @objc get @objc (setWraps:) set }
}

extension NSCell: NSCellExports {
  @objc public static func createImageCell(_ imageCell: NSImage?) -> Self {
    return self.init(imageCell: imageCell)
  }

  @objc public static func createTextCell(_ textCell: String) -> Self {
    return self.init(textCell: textCell)
  }

}
