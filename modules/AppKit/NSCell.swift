import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCell
    - name: NSCell
    - argLabels: 
  */

@objc(NSCell) protocol NSCellExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: defaultFocusRingType
    - name: defaultFocusRingType
    - argLabels: 
  */
  @objc static var defaultFocusRingType: NSFocusRingType { @objc get }

  /**
    - jsName: defaultMenu
    - name: defaultMenu
    - argLabels: 
  */
  @objc static var defaultMenu: NSMenu? { @objc get }

  /**
    - jsName: prefersTrackingUntilMouseUp
    - name: prefersTrackingUntilMouseUp
    - argLabels: 
  */
  @objc static var prefersTrackingUntilMouseUp: Bool { @objc get }

  // Instance Methods

  /**
    - jsName: calcDrawInfo
    - name: calcDrawInfo:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func calcDrawInfo(_: CGRect)

  /**
    - jsName: cellAttribute
    - name: cellAttribute:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cellAttribute(_: NSCell.Attribute) -> Int

  /**
    - jsName: cellSize
    - name: cellSizeForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cellSize(forBounds:)
  */
  @objc (cellSizeForBounds:) func cellSize(forBounds: CGRect) -> CGSize

  /**
    - jsName: compare
    - name: compare:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func compare(_: Any) -> ComparisonResult

  /**
    - jsName: continueTracking
    - name: continueTracking:at:inView:
    - argLabels: last, current, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: continueTracking(last:current:in:)
  */
  @objc (continueTracking:at:inView:) func continueTracking(last: CGPoint, current: CGPoint, in: NSView) -> Bool

  /**
    - jsName: draggingImageComponents
    - name: draggingImageComponentsWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: draggingImageComponents(withFrame:in:)
    - Introduced: 10.7
  */
  @objc (draggingImageComponentsWithFrame:inView:) @available(OSX 10.7, *) func draggingImageComponents(withFrame: CGRect, in: NSView) -> [NSDraggingImageComponent]

  /**
    - jsName: drawFocusRingMask
    - name: drawFocusRingMaskWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: drawFocusRingMask(withFrame:in:)
    - Introduced: 10.7
  */
  @objc (drawFocusRingMaskWithFrame:inView:) @available(OSX 10.7, *) func drawFocusRingMask(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawInterior
    - name: drawInteriorWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawInterior(withFrame:in:)
  */
  @objc (drawInteriorWithFrame:inView:) func drawInterior(withFrame: CGRect, in: NSView)

  /**
    - jsName: draw
    - name: drawWithExpansionFrame:inView:
    - argLabels: withExpansionFrame, in
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: draw(withExpansionFrame:in:)
    - Introduced: 10.5
  */
  @objc (drawWithExpansionFrame:inView:) @available(OSX 10.5, *) func draw(withExpansionFrame: CGRect, in: NSView)

  /**
    - jsName: draw
    - name: drawWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(withFrame:in:)
  */
  @objc (drawWithFrame:inView:) func draw(withFrame: CGRect, in: NSView)

  /**
    - jsName: drawingRect
    - name: drawingRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawingRect(forBounds:)
  */
  @objc (drawingRectForBounds:) func drawingRect(forBounds: CGRect) -> CGRect

  /**
    - jsName: edit
    - name: editWithFrame:inView:editor:delegate:event:
    - argLabels: withFrame, in, editor, delegate, event
    - constructorTokens: 
    - obsoleted: 3
    - renamed: edit(withFrame:in:editor:delegate:event:)
  */
  @objc (editWithFrame:inView:editor:delegate:event:) func edit(withFrame: CGRect, in: NSView, editor: NSText, delegate: Any?, event: NSEvent?)

  /**
    - jsName: endEditing
    - name: endEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func endEditing(_: NSText)

  /**
    - jsName: expansionFrame
    - name: expansionFrameWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: expansionFrame(withFrame:in:)
    - Introduced: 10.5
  */
  @objc (expansionFrameWithFrame:inView:) @available(OSX 10.5, *) func expansionFrame(withFrame: CGRect, in: NSView) -> CGRect

  /**
    - jsName: fieldEditor
    - name: fieldEditorForView:
    - argLabels: for
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: fieldEditor(for:)
    - Introduced: 10.6
  */
  @objc (fieldEditorForView:) @available(OSX 10.6, *) func fieldEditor(`for`: NSView) -> NSTextView?

  /**
    - jsName: focusRingMaskBounds
    - name: focusRingMaskBoundsForFrame:inView:
    - argLabels: forFrame, in
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: focusRingMaskBounds(forFrame:in:)
    - Introduced: 10.7
  */
  @objc (focusRingMaskBoundsForFrame:inView:) @available(OSX 10.7, *) func focusRingMaskBounds(forFrame: CGRect, in: NSView) -> CGRect

  /**
    - jsName: getPeriodicDelay
    - name: getPeriodicDelay:interval:
    - argLabels: interval
    - constructorTokens: 
  */
  @objc func getPeriodicDelay(_: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)

  /**
    - jsName: highlight
    - name: highlight:withFrame:inView:
    - argLabels: _, withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: highlight(_:withFrame:in:)
  */
  @objc (highlight:withFrame:inView:) func highlight(_: Bool, withFrame: CGRect, in: NSView)

  /**
    - jsName: highlightColor
    - name: highlightColorWithFrame:inView:
    - argLabels: withFrame, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: highlightColor(withFrame:in:)
  */
  @objc (highlightColorWithFrame:inView:) func highlightColor(withFrame: CGRect, in: NSView) -> NSColor?

  /**
    - jsName: hitTest
    - name: hitTestForEvent:inRect:ofView:
    - argLabels: for, in, of
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: hitTest(for:in:of:)
    - Introduced: 10.5
  */
  @objc (hitTestForEvent:inRect:ofView:) @available(OSX 10.5, *) func hitTest(`for`: NSEvent, in: CGRect, of: NSView) -> NSCell.HitResult

  /**
    - jsName: imageRect
    - name: imageRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: imageRect(forBounds:)
  */
  @objc (imageRectForBounds:) func imageRect(forBounds: CGRect) -> CGRect

  /**
    - jsName: createImageCell
    - name: initImageCell:
    - argLabels: 
    - constructorTokens: imageCell
  */
  @objc static func createImageCell(_: NSImage?) -> Self

  /**
    - jsName: createTextCell
    - name: initTextCell:
    - argLabels: 
    - constructorTokens: textCell
  */
  @objc static func createTextCell(_: String) -> Self

  /**
    - jsName: menu
    - name: menuForEvent:inRect:ofView:
    - argLabels: for, in, of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: menu(for:in:of:)
  */
  @objc (menuForEvent:inRect:ofView:) func menu(`for`: NSEvent, in: CGRect, of: NSView) -> NSMenu?

  /**
    - jsName: performClick
    - name: performClick:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performClick(_: Any?)

  /**
    - jsName: resetCursorRect
    - name: resetCursorRect:inView:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resetCursorRect(_:in:)
  */
  @objc (resetCursorRect:inView:) func resetCursorRect(_: CGRect, in: NSView)

  /**
    - jsName: select
    - name: selectWithFrame:inView:editor:delegate:start:length:
    - argLabels: withFrame, in, editor, delegate, start, length
    - constructorTokens: 
    - obsoleted: 3
    - renamed: select(withFrame:in:editor:delegate:start:length:)
  */
  @objc (selectWithFrame:inView:editor:delegate:start:length:) func select(withFrame: CGRect, in: NSView, editor: NSText, delegate: Any?, start: Int, length: Int)

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
    - jsName: setCellAttribute
    - name: setCellAttribute:to:
    - argLabels: to
    - constructorTokens: 
  */
  @objc func setCellAttribute(_: NSCell.Attribute, to: Int)

  /**
    - jsName: setNextState
    - name: setNextState
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setNextState()

  /**
    - jsName: setUpFieldEditorAttributes
    - name: setUpFieldEditorAttributes:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setUpFieldEditorAttributes(_: NSText) -> NSText

  /**
    - jsName: startTracking
    - name: startTrackingAt:inView:
    - argLabels: at, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: startTracking(at:in:)
  */
  @objc (startTrackingAt:inView:) func startTracking(at: CGPoint, in: NSView) -> Bool

  /**
    - jsName: stopTracking
    - name: stopTracking:at:inView:mouseIsUp:
    - argLabels: last, current, in, mouseIsUp
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stopTracking(last:current:in:mouseIsUp:)
  */
  @objc (stopTracking:at:inView:mouseIsUp:) func stopTracking(last: CGPoint, current: CGPoint, in: NSView, mouseIsUp: Bool)

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
    - jsName: titleRect
    - name: titleRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: titleRect(forBounds:)
  */
  @objc (titleRectForBounds:) func titleRect(forBounds: CGRect) -> CGRect

  /**
    - jsName: trackMouse
    - name: trackMouse:inRect:ofView:untilMouseUp:
    - argLabels: with, in, of, untilMouseUp
    - constructorTokens: 
    - obsoleted: 3
    - renamed: trackMouse(with:in:of:untilMouseUp:)
  */
  @objc (trackMouse:inRect:ofView:untilMouseUp:) func trackMouse(with: NSEvent, in: CGRect, of: NSView, untilMouseUp: Bool) -> Bool

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: acceptsFirstResponder
    - name: acceptsFirstResponder
    - argLabels: 
  */
  @objc var acceptsFirstResponder: Bool { @objc get }

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
    - jsName: allowsEditingTextAttributes
    - name: allowsEditingTextAttributes
    - argLabels: 
  */
  @objc var allowsEditingTextAttributes: Bool { @objc get @objc (setAllowsEditingTextAttributes:) set }

  /**
    - jsName: allowsMixedState
    - name: allowsMixedState
    - argLabels: 
  */
  @objc var allowsMixedState: Bool { @objc get @objc (setAllowsMixedState:) set }

  /**
    - jsName: allowsUndo
    - name: allowsUndo
    - argLabels: 
  */
  @objc var allowsUndo: Bool { @objc get @objc (setAllowsUndo:) set }

  /**
    - jsName: attributedStringValue
    - name: attributedStringValue
    - argLabels: 
  */
  @objc var attributedStringValue: NSAttributedString { @objc get @objc (setAttributedStringValue:) set }

  /**
    - jsName: backgroundStyle
    - name: backgroundStyle
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var backgroundStyle: NSView.BackgroundStyle { @objc get @objc (setBackgroundStyle:) set }

  /**
    - jsName: baseWritingDirection
    - name: baseWritingDirection
    - argLabels: 
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - jsName: isBezeled
    - name: bezeled
    - argLabels: 
    - obsoleted: 3
    - renamed: isBezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - jsName: isBordered
    - name: bordered
    - argLabels: 
    - obsoleted: 3
    - renamed: isBordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - jsName: cellSize
    - name: cellSize
    - argLabels: 
  */
  @objc var cellSize: CGSize { @objc get }

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
  */
  @objc var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - jsName: controlTint
    - name: controlTint
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: The controlTint property is not respected on 10.14 and later. For custom cells, use +[NSColor controlAccentColor] to respect the user's preferred accent color when drawing.
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: The controlTint property is not respected on 10.14 and later. For custom cells, use +[NSColor controlAccentColor] to respect the user's preferred accent color when drawing.
  */
  @objc @available(OSX 10.0, *) var controlTint: NSControlTint { @objc get @objc (setControlTint:) set }

  /**
    - jsName: controlView
    - name: controlView
    - argLabels: 
  */
  @objc var controlView: NSView? { @objc get @objc (setControlView:) set }

  /**
    - jsName: doubleValue
    - name: doubleValue
    - argLabels: 
  */
  @objc var doubleValue: Double { @objc get @objc (setDoubleValue:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

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
    - jsName: focusRingType
    - name: focusRingType
    - argLabels: 
  */
  @objc var focusRingType: NSFocusRingType { @objc get @objc (setFocusRingType:) set }

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
    - jsName: hasValidObjectValue
    - name: hasValidObjectValue
    - argLabels: 
  */
  @objc var hasValidObjectValue: Bool { @objc get }

  /**
    - jsName: isHighlighted
    - name: highlighted
    - argLabels: 
    - obsoleted: 3
    - renamed: isHighlighted
  */
  @objc var isHighlighted: Bool { @objc get @objc (setHighlighted:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: importsGraphics
    - name: importsGraphics
    - argLabels: 
  */
  @objc var importsGraphics: Bool { @objc get @objc (setImportsGraphics:) set }

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
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var integerValue: Int { @objc get @objc (setIntegerValue:) set }

  /**
    - jsName: interiorBackgroundStyle
    - name: interiorBackgroundStyle
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var interiorBackgroundStyle: NSView.BackgroundStyle { @objc get }

  /**
    - jsName: keyEquivalent
    - name: keyEquivalent
    - argLabels: 
  */
  @objc var keyEquivalent: String { @objc get }

  /**
    - jsName: lineBreakMode
    - name: lineBreakMode
    - argLabels: 
  */
  @objc var lineBreakMode: NSLineBreakMode { @objc get @objc (setLineBreakMode:) set }

  /**
    - jsName: menu
    - name: menu
    - argLabels: 
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - jsName: mouseDownFlags
    - name: mouseDownFlags
    - argLabels: 
  */
  @objc var mouseDownFlags: Int { @objc get }

  /**
    - jsName: nextState
    - name: nextState
    - argLabels: 
  */
  @objc var nextState: Int { @objc get }

  /**
    - jsName: objectValue
    - name: objectValue
    - argLabels: 
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - jsName: isOpaque
    - name: opaque
    - argLabels: 
    - obsoleted: 3
    - renamed: isOpaque
  */
  @objc var isOpaque: Bool { @objc get }

  /**
    - jsName: refusesFirstResponder
    - name: refusesFirstResponder
    - argLabels: 
  */
  @objc var refusesFirstResponder: Bool { @objc get @objc (setRefusesFirstResponder:) set }

  /**
    - jsName: representedObject
    - name: representedObject
    - argLabels: 
  */
  @objc var representedObject: Any? { @objc get @objc (setRepresentedObject:) set }

  /**
    - jsName: isScrollable
    - name: scrollable
    - argLabels: 
    - obsoleted: 3
    - renamed: isScrollable
  */
  @objc var isScrollable: Bool { @objc get @objc (setScrollable:) set }

  /**
    - jsName: isSelectable
    - name: selectable
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - jsName: sendsActionOnEndEditing
    - name: sendsActionOnEndEditing
    - argLabels: 
  */
  @objc var sendsActionOnEndEditing: Bool { @objc get @objc (setSendsActionOnEndEditing:) set }

  /**
    - jsName: showsFirstResponder
    - name: showsFirstResponder
    - argLabels: 
  */
  @objc var showsFirstResponder: Bool { @objc get @objc (setShowsFirstResponder:) set }

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }

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
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: truncatesLastVisibleLine
    - name: truncatesLastVisibleLine
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var truncatesLastVisibleLine: Bool { @objc get @objc (setTruncatesLastVisibleLine:) set }

  /**
    - jsName: type
    - name: type
    - argLabels: 
  */
  @objc var type: NSCell.CellType { @objc get @objc (setType:) set }

  /**
    - jsName: userInterfaceLayoutDirection
    - name: userInterfaceLayoutDirection
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setUserInterfaceLayoutDirection:) set }

  /**
    - jsName: usesSingleLineMode
    - name: usesSingleLineMode
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var usesSingleLineMode: Bool { @objc get @objc (setUsesSingleLineMode:) set }

  /**
    - jsName: wantsNotificationForMarkedText
    - name: wantsNotificationForMarkedText
    - argLabels: 
  */
  @objc var wantsNotificationForMarkedText: Bool { @objc get }

  /**
    - jsName: wraps
    - name: wraps
    - argLabels: 
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
