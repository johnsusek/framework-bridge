import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSWindow
    - name: NSWindow
    - argLabels: 
  */

@objc(NSWindow) protocol NSWindowExports: JSExport, NSResponderExports {
  // Static Methods

  /**
    - jsName: contentRect
    - name: contentRectForFrameRect:styleMask:
    - argLabels: forFrameRect, styleMask
    - constructorTokens: 
    - obsoleted: 3
    - renamed: contentRect(forFrameRect:styleMask:)
  */
  @objc (contentRectForFrameRect:styleMask:) static func contentRect(forFrameRect: CGRect, styleMask: NSWindow.StyleMask) -> CGRect

  /**
    - jsName: frameRect
    - name: frameRectForContentRect:styleMask:
    - argLabels: forContentRect, styleMask
    - constructorTokens: 
    - obsoleted: 3
    - renamed: frameRect(forContentRect:styleMask:)
  */
  @objc (frameRectForContentRect:styleMask:) static func frameRect(forContentRect: CGRect, styleMask: NSWindow.StyleMask) -> CGRect

  /**
    - jsName: minFrameWidth
    - name: minFrameWidthWithTitle:styleMask:
    - argLabels: withTitle, styleMask
    - constructorTokens: 
    - obsoleted: 3
    - renamed: minFrameWidth(withTitle:styleMask:)
  */
  @objc (minFrameWidthWithTitle:styleMask:) static func minFrameWidth(withTitle: String, styleMask: NSWindow.StyleMask) -> CGFloat

  /**
    - jsName: removeFrame
    - name: removeFrameUsingName:
    - argLabels: usingName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeFrame(usingName:)
  */
  @objc (removeFrameUsingName:) static func removeFrame(usingName: NSWindow.FrameAutosaveName)

  /**
    - jsName: standardWindowButton
    - name: standardWindowButton:forStyleMask:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: standardWindowButton(_:for:)
  */
  @objc (standardWindowButton:forStyleMask:) static func standardWindowButton(_: NSWindow.ButtonType, `for`: NSWindow.StyleMask) -> NSButton?

  /**
    - jsName: windowNumber
    - name: windowNumberAtPoint:belowWindowWithWindowNumber:
    - argLabels: at, belowWindowWithWindowNumber
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: windowNumber(at:belowWindowWithWindowNumber:)
    - Introduced: 10.6
  */
  @objc (windowNumberAtPoint:belowWindowWithWindowNumber:) @available(OSX 10.6, *) static func windowNumber(at: CGPoint, belowWindowWithWindowNumber: Int) -> Int

  /**
    - jsName: windowNumbers
    - name: windowNumbersWithOptions:
    - argLabels: options
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: windowNumbers(options:)
    - Introduced: 10.6
  */
  @objc (windowNumbersWithOptions:) @available(OSX 10.6, *) static func windowNumbers(options: NSWindow.NumberListOptions) -> [NSNumber]?

  /**
    - jsName: create
    - name: windowWithContentViewController:
    - argLabels: contentViewController
    - constructorTokens: 
    - available: 10.10
    - unavailable: true
    - renamed: init(contentViewController:)
    - message: Not available in Swift
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func create(contentViewController: NSViewController) -> Self

  // Own Static Properties

  /**
    - jsName: allowsAutomaticWindowTabbing
    - name: allowsAutomaticWindowTabbing
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var allowsAutomaticWindowTabbing: Bool { @objc get @objc (setAllowsAutomaticWindowTabbing:) set }

  /**
    - jsName: defaultDepthLimit
    - name: defaultDepthLimit
    - argLabels: 
  */
  @objc static var defaultDepthLimit: NSWindow.Depth { @objc get }

  /**
    - jsName: userTabbingPreference
    - name: userTabbingPreference
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var userTabbingPreference: NSWindow.UserTabbingPreference { @objc get }

  // Instance Methods

  /**
    - jsName: addChildWindow
    - name: addChildWindow:ordered:
    - argLabels: ordered
    - constructorTokens: 
  */
  @objc func addChildWindow(_: NSWindow, ordered: NSWindow.OrderingMode)

  /**
    - jsName: addTabbedWindow
    - name: addTabbedWindow:ordered:
    - argLabels: ordered
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func addTabbedWindow(_: NSWindow, ordered: NSWindow.OrderingMode)

  /**
    - jsName: addTitlebarAccessoryViewController
    - name: addTitlebarAccessoryViewController:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func addTitlebarAccessoryViewController(_: NSTitlebarAccessoryViewController)

  /**
    - jsName: anchorAttribute
    - name: anchorAttributeForOrientation:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: anchorAttribute(for:)
  */
  @objc (anchorAttributeForOrientation:) func anchorAttribute(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Attribute

  /**
    - jsName: animationResizeTime
    - name: animationResizeTime:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func animationResizeTime(_: CGRect) -> TimeInterval

  /**
    - jsName: autorecalculatesContentBorderThickness
    - name: autorecalculatesContentBorderThicknessForEdge:
    - argLabels: for
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: autorecalculatesContentBorderThickness(for:)
    - Introduced: 10.5
  */
  @objc (autorecalculatesContentBorderThicknessForEdge:) @available(OSX 10.5, *) func autorecalculatesContentBorderThickness(`for`: NSRectEdge) -> Bool

  /**
    - jsName: backingAlignedRect
    - name: backingAlignedRect:options:
    - argLabels: options
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func backingAlignedRect(_: CGRect, options: AlignmentOptions) -> CGRect

  /**
    - jsName: becomeKey
    - name: becomeKeyWindow
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: becomeKey()
  */
  @objc (becomeKeyWindow) func becomeKey()

  /**
    - jsName: becomeMain
    - name: becomeMainWindow
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: becomeMain()
  */
  @objc (becomeMainWindow) func becomeMain()

  /**
    - jsName: beginCriticalSheet
    - name: beginCriticalSheet:completionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  // jsvalue - @objc @available(OSX 10.9, *) func beginCriticalSheet(_: NSWindow, completionHandler: JSValue)

  /**
    - jsName: beginSheet
    - name: beginSheet:completionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  // jsvalue - @objc @available(OSX 10.9, *) func beginSheet(_: NSWindow, completionHandler: JSValue)

  /**
    - jsName: canRepresent
    - name: canRepresentDisplayGamut:
    - argLabels: _
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: canRepresent(_:)
    - Introduced: 10.12
  */
  @objc (canRepresentDisplayGamut:) @available(OSX 10.12, *) func canRepresent(_: NSDisplayGamut) -> Bool

  /**
    - jsName: cascadeTopLeft
    - name: cascadeTopLeftFromPoint:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cascadeTopLeft(from:)
  */
  @objc (cascadeTopLeftFromPoint:) func cascadeTopLeft(from: CGPoint) -> CGPoint

  /**
    - jsName: center
    - name: center
    - argLabels: 
    - constructorTokens: 
  */
  @objc func center()

  /**
    - jsName: close
    - name: close
    - argLabels: 
    - constructorTokens: 
  */
  @objc func close()

  /**
    - jsName: constrainFrameRect
    - name: constrainFrameRect:toScreen:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constrainFrameRect(_:to:)
  */
  @objc (constrainFrameRect:toScreen:) func constrainFrameRect(_: CGRect, to: NSScreen?) -> CGRect

  /**
    - jsName: contentBorderThickness
    - name: contentBorderThicknessForEdge:
    - argLabels: for
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: contentBorderThickness(for:)
    - Introduced: 10.5
  */
  @objc (contentBorderThicknessForEdge:) @available(OSX 10.5, *) func contentBorderThickness(`for`: NSRectEdge) -> CGFloat

  /**
    - jsName: contentRect
    - name: contentRectForFrameRect:
    - argLabels: forFrameRect
    - constructorTokens: 
    - obsoleted: 3
    - renamed: contentRect(forFrameRect:)
  */
  @objc (contentRectForFrameRect:) func contentRect(forFrameRect: CGRect) -> CGRect

  /**
    - jsName: convertPointFromBacking
    - name: convertPointFromBacking:
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func convertPointFromBacking(_: CGPoint) -> CGPoint

  /**
    - jsName: convertPoint
    - name: convertPointFromScreen:
    - argLabels: fromScreen
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: convertPoint(fromScreen:)
    - Introduced: 10.12
  */
  @objc (convertPointFromScreen:) @available(OSX 10.12, *) func convertPoint(fromScreen: CGPoint) -> CGPoint

  /**
    - jsName: convertPointToBacking
    - name: convertPointToBacking:
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func convertPointToBacking(_: CGPoint) -> CGPoint

  /**
    - jsName: convertPoint
    - name: convertPointToScreen:
    - argLabels: toScreen
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: convertPoint(toScreen:)
    - Introduced: 10.12
  */
  @objc (convertPointToScreen:) @available(OSX 10.12, *) func convertPoint(toScreen: CGPoint) -> CGPoint

  /**
    - jsName: convertFromBacking
    - name: convertRectFromBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertRectFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGRect) -> CGRect

  /**
    - jsName: convertFromScreen
    - name: convertRectFromScreen:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromScreen(_:)
    - Introduced: 10.7
  */
  @objc (convertRectFromScreen:) @available(OSX 10.7, *) func convertFromScreen(_: CGRect) -> CGRect

  /**
    - jsName: convertToBacking
    - name: convertRectToBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertRectToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGRect) -> CGRect

  /**
    - jsName: convertToScreen
    - name: convertRectToScreen:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToScreen(_:)
    - Introduced: 10.7
  */
  @objc (convertRectToScreen:) @available(OSX 10.7, *) func convertToScreen(_: CGRect) -> CGRect

  /**
    - jsName: dataWithEPS
    - name: dataWithEPSInsideRect:
    - argLabels: inside
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataWithEPS(inside:)
  */
  @objc (dataWithEPSInsideRect:) func dataWithEPS(inside: CGRect) -> Data

  /**
    - jsName: dataWithPDF
    - name: dataWithPDFInsideRect:
    - argLabels: inside
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataWithPDF(inside:)
  */
  @objc (dataWithPDFInsideRect:) func dataWithPDF(inside: CGRect) -> Data

  /**
    - jsName: deminiaturize
    - name: deminiaturize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deminiaturize(_: Any?)

  /**
    - jsName: disableCursorRects
    - name: disableCursorRects
    - argLabels: 
    - constructorTokens: 
  */
  @objc func disableCursorRects()

  /**
    - jsName: disableKeyEquivalentForDefaultButtonCell
    - name: disableKeyEquivalentForDefaultButtonCell
    - argLabels: 
    - constructorTokens: 
  */
  @objc func disableKeyEquivalentForDefaultButtonCell()

  /**
    - jsName: disableScreenUpdatesUntilFlush
    - name: disableScreenUpdatesUntilFlush
    - argLabels: 
    - constructorTokens: 
  */
  @objc func disableScreenUpdatesUntilFlush()

  /**
    - jsName: disableSnapshotRestoration
    - name: disableSnapshotRestoration
    - argLabels: 
    - constructorTokens: 
  */
  @objc func disableSnapshotRestoration()

  /**
    - jsName: discardCursorRects
    - name: discardCursorRects
    - argLabels: 
    - constructorTokens: 
  */
  @objc func discardCursorRects()

  /**
    - jsName: discardEvents
    - name: discardEventsMatchingMask:beforeEvent:
    - argLabels: matching, before
    - constructorTokens: 
    - obsoleted: 3
    - renamed: discardEvents(matching:before:)
  */
  @objc (discardEventsMatchingMask:beforeEvent:) func discardEvents(matching: NSEvent.EventTypeMask, before: NSEvent?)

  /**
    - jsName: display
    - name: display
    - argLabels: 
    - constructorTokens: 
  */
  @objc func display()

  /**
    - jsName: displayIfNeeded
    - name: displayIfNeeded
    - argLabels: 
    - constructorTokens: 
  */
  @objc func displayIfNeeded()

  /**
    - jsName: drag
    - name: dragImage:at:offset:event:pasteboard:source:slideBack:
    - argLabels: _, at, offset, event, pasteboard, source, slideBack
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drag(_:at:offset:event:pasteboard:source:slideBack:)
  */
  @objc (dragImage:at:offset:event:pasteboard:source:slideBack:) func drag(_: NSImage, at: CGPoint, offset: CGSize, event: NSEvent, pasteboard: NSPasteboard, source: Any, slideBack: Bool)

  /**
    - jsName: enableCursorRects
    - name: enableCursorRects
    - argLabels: 
    - constructorTokens: 
  */
  @objc func enableCursorRects()

  /**
    - jsName: enableKeyEquivalentForDefaultButtonCell
    - name: enableKeyEquivalentForDefaultButtonCell
    - argLabels: 
    - constructorTokens: 
  */
  @objc func enableKeyEquivalentForDefaultButtonCell()

  /**
    - jsName: enableSnapshotRestoration
    - name: enableSnapshotRestoration
    - argLabels: 
    - constructorTokens: 
  */
  @objc func enableSnapshotRestoration()

  /**
    - jsName: endEditing
    - name: endEditingFor:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: endEditing(for:)
  */
  @objc (endEditingFor:) func endEditing(`for`: Any?)

  /**
    - jsName: endSheet
    - name: endSheet:
    - argLabels: 
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func endSheet(_: NSWindow)

  /**
    - jsName: endSheet
    - name: endSheet:returnCode:
    - argLabels: returnCode
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func endSheet(_: NSWindow, returnCode: NSApplication.ModalResponse)

  /**
    - jsName: fieldEditor
    - name: fieldEditor:forObject:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fieldEditor(_:for:)
  */
  @objc (fieldEditor:forObject:) func fieldEditor(_: Bool, `for`: Any?) -> NSText?

  /**
    - jsName: frameRect
    - name: frameRectForContentRect:
    - argLabels: forContentRect
    - constructorTokens: 
    - obsoleted: 3
    - renamed: frameRect(forContentRect:)
  */
  @objc (frameRectForContentRect:) func frameRect(forContentRect: CGRect) -> CGRect

  /**
    - jsName: handleClose
    - name: handleCloseScriptCommand:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: handleClose(_:)
  */
  @objc (handleCloseScriptCommand:) func handleClose(_: NSCloseCommand) -> Any?

  /**
    - jsName: handlePrint
    - name: handlePrintScriptCommand:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: handlePrint(_:)
  */
  @objc (handlePrintScriptCommand:) func handlePrint(_: NSScriptCommand) -> Any?

  /**
    - jsName: handleSave
    - name: handleSaveScriptCommand:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: handleSave(_:)
  */
  @objc (handleSaveScriptCommand:) func handleSave(_: NSScriptCommand) -> Any?

  /**
    - jsName: createWithContentRect
    - name: initWithContentRect:styleMask:backing:defer:
    - argLabels: styleMask, backing, defer
    - constructorTokens: contentRect, styleMask, backing, defer
  */
  @objc static func createWithContentRect(_: CGRect, styleMask: NSWindow.StyleMask, backing: NSWindow.BackingStoreType, `defer`: Bool) -> Self

  /**
    - jsName: createWithContentRect
    - name: initWithContentRect:styleMask:backing:defer:screen:
    - argLabels: styleMask, backing, defer, screen
    - constructorTokens: contentRect, styleMask, backing, defer, screen
  */
  @objc static func createWithContentRect(_: CGRect, styleMask: NSWindow.StyleMask, backing: NSWindow.BackingStoreType, `defer`: Bool, screen: NSScreen?) -> Self

  /**
    - jsName: createWithWindowRef
    - name: initWithWindowRef:
    - argLabels: 
    - constructorTokens: windowRef
  */
  @objc static func createWithWindowRef(_: UnsafeMutableRawPointer) -> Self?

  /**
    - jsName: insertTitlebarAccessoryViewController
    - name: insertTitlebarAccessoryViewController:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: insertTitlebarAccessoryViewController(_:at:)
    - Introduced: 10.10
  */
  @objc (insertTitlebarAccessoryViewController:atIndex:) @available(OSX 10.10, *) func insertTitlebarAccessoryViewController(_: NSTitlebarAccessoryViewController, at: Int)

  /**
    - jsName: invalidateCursorRects
    - name: invalidateCursorRectsForView:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: invalidateCursorRects(for:)
  */
  @objc (invalidateCursorRectsForView:) func invalidateCursorRects(`for`: NSView)

  /**
    - jsName: invalidateShadow
    - name: invalidateShadow
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateShadow()

  /**
    - jsName: layoutIfNeeded
    - name: layoutIfNeeded
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func layoutIfNeeded()

  /**
    - jsName: makeFirstResponder
    - name: makeFirstResponder:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makeFirstResponder(_: NSResponder?) -> Bool

  /**
    - jsName: makeKeyAndOrderFront
    - name: makeKeyAndOrderFront:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makeKeyAndOrderFront(_: Any?)

  /**
    - jsName: makeKey
    - name: makeKeyWindow
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: makeKey()
  */
  @objc (makeKeyWindow) func makeKey()

  /**
    - jsName: makeMain
    - name: makeMainWindow
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: makeMain()
  */
  @objc (makeMainWindow) func makeMain()

  /**
    - jsName: mergeAllWindows
    - name: mergeAllWindows:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func mergeAllWindows(_: Any?)

  /**
    - jsName: miniaturize
    - name: miniaturize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func miniaturize(_: Any?)

  /**
    - jsName: moveTabToNewWindow
    - name: moveTabToNewWindow:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func moveTabToNewWindow(_: Any?)

  /**
    - jsName: nextEvent
    - name: nextEventMatchingMask:
    - argLabels: matching
    - constructorTokens: 
    - obsoleted: 3
    - renamed: nextEvent(matching:)
  */
  @objc (nextEventMatchingMask:) func nextEvent(matching: NSEvent.EventTypeMask) -> NSEvent?

  /**
    - jsName: nextEvent
    - name: nextEventMatchingMask:untilDate:inMode:dequeue:
    - argLabels: matching, until, inMode, dequeue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: nextEvent(matching:until:inMode:dequeue:)
  */
  @objc (nextEventMatchingMask:untilDate:inMode:dequeue:) func nextEvent(matching: NSEvent.EventTypeMask, until: Date?, inMode: RunLoop.Mode, dequeue: Bool) -> NSEvent?

  /**
    - jsName: orderBack
    - name: orderBack:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderBack(_: Any?)

  /**
    - jsName: orderFront
    - name: orderFront:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFront(_: Any?)

  /**
    - jsName: orderFrontRegardless
    - name: orderFrontRegardless
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderFrontRegardless()

  /**
    - jsName: orderOut
    - name: orderOut:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func orderOut(_: Any?)

  /**
    - jsName: order
    - name: orderWindow:relativeTo:
    - argLabels: _, relativeTo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: order(_:relativeTo:)
  */
  @objc (orderWindow:relativeTo:) func order(_: NSWindow.OrderingMode, relativeTo: Int)

  /**
    - jsName: performClose
    - name: performClose:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performClose(_: Any?)

  /**
    - jsName: performMiniaturize
    - name: performMiniaturize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performMiniaturize(_: Any?)

  /**
    - jsName: performDrag
    - name: performWindowDragWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: performDrag(with:)
    - Introduced: 10.11
  */
  @objc (performWindowDragWithEvent:) @available(OSX 10.11, *) func performDrag(with: NSEvent)

  /**
    - jsName: performZoom
    - name: performZoom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performZoom(_: Any?)

  /**
    - jsName: postEvent
    - name: postEvent:atStart:
    - argLabels: _, atStart
    - constructorTokens: 
  */
  @objc (postEvent:atStart:) func postEvent(_: NSEvent, atStart: Bool)

  /**
    - jsName: printWindow
    - name: print:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (print:) func printWindow(_: Any?)

  /**
    - jsName: recalculateKeyViewLoop
    - name: recalculateKeyViewLoop
    - argLabels: 
    - constructorTokens: 
  */
  @objc func recalculateKeyViewLoop()

  /**
    - jsName: registerForDraggedTypes
    - name: registerForDraggedTypes:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (registerForDraggedTypes:) func registerForDraggedTypes(_: [NSPasteboard.PasteboardType])

  /**
    - jsName: removeChildWindow
    - name: removeChildWindow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeChildWindow(_: NSWindow)

  /**
    - jsName: removeTitlebarAccessoryViewController
    - name: removeTitlebarAccessoryViewControllerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: removeTitlebarAccessoryViewController(at:)
    - Introduced: 10.10
  */
  @objc (removeTitlebarAccessoryViewControllerAtIndex:) @available(OSX 10.10, *) func removeTitlebarAccessoryViewController(at: Int)

  /**
    - jsName: resetCursorRects
    - name: resetCursorRects
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resetCursorRects()

  /**
    - jsName: resignKey
    - name: resignKeyWindow
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resignKey()
  */
  @objc (resignKeyWindow) func resignKey()

  /**
    - jsName: resignMain
    - name: resignMainWindow
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resignMain()
  */
  @objc (resignMainWindow) func resignMain()

  /**
    - jsName: runToolbarCustomizationPalette
    - name: runToolbarCustomizationPalette:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runToolbarCustomizationPalette(_: Any?)

  /**
    - jsName: saveFrame
    - name: saveFrameUsingName:
    - argLabels: usingName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: saveFrame(usingName:)
  */
  @objc (saveFrameUsingName:) func saveFrame(usingName: NSWindow.FrameAutosaveName)

  /**
    - jsName: selectKeyView
    - name: selectKeyViewFollowingView:
    - argLabels: following
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectKeyView(following:)
  */
  @objc (selectKeyViewFollowingView:) func selectKeyView(following: NSView)

  /**
    - jsName: selectKeyView
    - name: selectKeyViewPrecedingView:
    - argLabels: preceding
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selectKeyView(preceding:)
  */
  @objc (selectKeyViewPrecedingView:) func selectKeyView(preceding: NSView)

  /**
    - jsName: selectNextKeyView
    - name: selectNextKeyView:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectNextKeyView(_: Any?)

  /**
    - jsName: selectNextTab
    - name: selectNextTab:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func selectNextTab(_: Any?)

  /**
    - jsName: selectPreviousKeyView
    - name: selectPreviousKeyView:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectPreviousKeyView(_: Any?)

  /**
    - jsName: selectPreviousTab
    - name: selectPreviousTab:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func selectPreviousTab(_: Any?)

  /**
    - jsName: sendEvent
    - name: sendEvent:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (sendEvent:) func sendEvent(_: NSEvent)

  /**
    - jsName: setAnchorAttribute
    - name: setAnchorAttribute:forOrientation:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setAnchorAttribute(_:for:)
  */
  @objc (setAnchorAttribute:forOrientation:) func setAnchorAttribute(_: NSLayoutConstraint.Attribute, `for`: NSLayoutConstraint.Orientation)

  /**
    - jsName: setAutorecalculatesContentBorderThickness
    - name: setAutorecalculatesContentBorderThickness:forEdge:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: setAutorecalculatesContentBorderThickness(_:for:)
    - Introduced: 10.5
  */
  @objc (setAutorecalculatesContentBorderThickness:forEdge:) @available(OSX 10.5, *) func setAutorecalculatesContentBorderThickness(_: Bool, `for`: NSRectEdge)

  /**
    - jsName: setContentBorderThickness
    - name: setContentBorderThickness:forEdge:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: setContentBorderThickness(_:for:)
    - Introduced: 10.5
  */
  @objc (setContentBorderThickness:forEdge:) @available(OSX 10.5, *) func setContentBorderThickness(_: CGFloat, `for`: NSRectEdge)

  /**
    - jsName: setContentSize
    - name: setContentSize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setContentSize(_: CGSize)

  /**
    - jsName: setDynamicDepthLimit
    - name: setDynamicDepthLimit:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setDynamicDepthLimit(_: Bool)

  /**
    - jsName: setFrame
    - name: setFrame:display:
    - argLabels: display
    - constructorTokens: 
  */
  @objc func setFrame(_: CGRect, display: Bool)

  /**
    - jsName: setFrame
    - name: setFrame:display:animate:
    - argLabels: display, animate
    - constructorTokens: 
  */
  @objc func setFrame(_: CGRect, display: Bool, animate: Bool)

  /**
    - jsName: setFrameAutosaveName
    - name: setFrameAutosaveName:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameAutosaveName(_: NSWindow.FrameAutosaveName) -> Bool

  /**
    - jsName: setFrame
    - name: setFrameFromString:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setFrame(from:)
  */
  @objc (setFrameFromString:) func setFrame(from: NSWindow.PersistableFrameDescriptor)

  /**
    - jsName: setFrameOrigin
    - name: setFrameOrigin:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameOrigin(_: CGPoint)

  /**
    - jsName: setFrameTopLeftPoint
    - name: setFrameTopLeftPoint:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameTopLeftPoint(_: CGPoint)

  /**
    - jsName: setFrameUsingName
    - name: setFrameUsingName:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameUsingName(_: NSWindow.FrameAutosaveName) -> Bool

  /**
    - jsName: setFrameUsingName
    - name: setFrameUsingName:force:
    - argLabels: force
    - constructorTokens: 
  */
  @objc func setFrameUsingName(_: NSWindow.FrameAutosaveName, force: Bool) -> Bool

  /**
    - jsName: setIsMiniaturized
    - name: setIsMiniaturized:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setIsMiniaturized(_: Bool)

  /**
    - jsName: setIsVisible
    - name: setIsVisible:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setIsVisible(_: Bool)

  /**
    - jsName: setIsZoomed
    - name: setIsZoomed:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setIsZoomed(_: Bool)

  /**
    - jsName: setTitleWithRepresentedFilename
    - name: setTitleWithRepresentedFilename:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setTitleWithRepresentedFilename(_: String)

  /**
    - jsName: standardWindowButton
    - name: standardWindowButton:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func standardWindowButton(_: NSWindow.ButtonType) -> NSButton?

  /**
    - jsName: toggleFullScreen
    - name: toggleFullScreen:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func toggleFullScreen(_: Any?)

  /**
    - jsName: toggleTabBar
    - name: toggleTabBar:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func toggleTabBar(_: Any?)

  /**
    - jsName: toggleTabOverview
    - name: toggleTabOverview:
    - argLabels: 
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func toggleTabOverview(_: Any?)

  /**
    - jsName: toggleToolbarShown
    - name: toggleToolbarShown:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func toggleToolbarShown(_: Any?)

  /**
    - jsName: trackEvents
    - name: trackEventsMatchingMask:timeout:mode:handler:
    - argLabels: matching, timeout, mode, handler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: trackEvents(matching:timeout:mode:handler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (trackEventsMatchingMask:timeout:mode:handler:) @available(OSX 10.10, *) func trackEvents(matching: NSEvent.EventTypeMask, timeout: TimeInterval, mode: RunLoop.Mode, handler: JSValue)

  /**
    - jsName: unregisterDraggedTypes
    - name: unregisterDraggedTypes
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unregisterDraggedTypes()

  /**
    - jsName: update
    - name: update
    - argLabels: 
    - constructorTokens: 
  */
  @objc func update()

  /**
    - jsName: updateConstraintsIfNeeded
    - name: updateConstraintsIfNeeded
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateConstraintsIfNeeded()

  /**
    - jsName: visualizeConstraints
    - name: visualizeConstraints:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func visualizeConstraints(_: [NSLayoutConstraint]?)

  /**
    - jsName: zoom
    - name: zoom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func zoom(_: Any?)

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: acceptsMouseMovedEvents
    - name: acceptsMouseMovedEvents
    - argLabels: 
  */
  @objc var acceptsMouseMovedEvents: Bool { @objc get @objc (setAcceptsMouseMovedEvents:) set }

  /**
    - jsName: allowsConcurrentViewDrawing
    - name: allowsConcurrentViewDrawing
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allowsConcurrentViewDrawing: Bool { @objc get @objc (setAllowsConcurrentViewDrawing:) set }

  /**
    - jsName: allowsToolTipsWhenApplicationIsInactive
    - name: allowsToolTipsWhenApplicationIsInactive
    - argLabels: 
  */
  @objc var allowsToolTipsWhenApplicationIsInactive: Bool { @objc get @objc (setAllowsToolTipsWhenApplicationIsInactive:) set }

  /**
    - jsName: alphaValue
    - name: alphaValue
    - argLabels: 
  */
  @objc var alphaValue: CGFloat { @objc get @objc (setAlphaValue:) set }

  /**
    - jsName: animationBehavior
    - name: animationBehavior
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var animationBehavior: NSWindow.AnimationBehavior { @objc get @objc (setAnimationBehavior:) set }

  /**
    - jsName: appearanceSource
    - name: appearanceSource
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var appearanceSource: NSAppearanceCustomization! { @objc get @objc (setAppearanceSource:) set }

  /**
    - jsName: areCursorRectsEnabled
    - name: areCursorRectsEnabled
    - argLabels: 
  */
  @objc var areCursorRectsEnabled: Bool { @objc get }

  /**
    - jsName: aspectRatio
    - name: aspectRatio
    - argLabels: 
  */
  @objc var aspectRatio: CGSize { @objc get @objc (setAspectRatio:) set }

  /**
    - jsName: attachedSheet
    - name: attachedSheet
    - argLabels: 
  */
  @objc var attachedSheet: NSWindow? { @objc get }

  /**
    - jsName: autorecalculatesKeyViewLoop
    - name: autorecalculatesKeyViewLoop
    - argLabels: 
  */
  @objc var autorecalculatesKeyViewLoop: Bool { @objc get @objc (setAutorecalculatesKeyViewLoop:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor! { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: backingScaleFactor
    - name: backingScaleFactor
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var backingScaleFactor: CGFloat { @objc get }

  /**
    - jsName: backingType
    - name: backingType
    - argLabels: 
  */
  @objc var backingType: NSWindow.BackingStoreType { @objc get @objc (setBackingType:) set }

  /**
    - jsName: canBecomeKey
    - name: canBecomeKeyWindow
    - argLabels: 
    - obsoleted: 3
    - renamed: canBecomeKey
  */
  @objc var canBecomeKey: Bool { @objc (canBecomeKeyWindow) get }

  /**
    - jsName: canBecomeMain
    - name: canBecomeMainWindow
    - argLabels: 
    - obsoleted: 3
    - renamed: canBecomeMain
  */
  @objc var canBecomeMain: Bool { @objc (canBecomeMainWindow) get }

  /**
    - jsName: canBecomeVisibleWithoutLogin
    - name: canBecomeVisibleWithoutLogin
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var canBecomeVisibleWithoutLogin: Bool { @objc get @objc (setCanBecomeVisibleWithoutLogin:) set }

  /**
    - jsName: canHide
    - name: canHide
    - argLabels: 
  */
  @objc var canHide: Bool { @objc get @objc (setCanHide:) set }

  /**
    - jsName: childWindows
    - name: childWindows
    - argLabels: 
  */
  @objc var childWindows: [NSWindow]? { @objc get }

  /**
    - jsName: collectionBehavior
    - name: collectionBehavior
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var collectionBehavior: NSWindow.CollectionBehavior { @objc get @objc (setCollectionBehavior:) set }

  /**
    - jsName: colorSpace
    - name: colorSpace
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var colorSpace: NSColorSpace? { @objc get @objc (setColorSpace:) set }

  /**
    - jsName: contentAspectRatio
    - name: contentAspectRatio
    - argLabels: 
  */
  @objc var contentAspectRatio: CGSize { @objc get @objc (setContentAspectRatio:) set }

  /**
    - jsName: contentLayoutGuide
    - name: contentLayoutGuide
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentLayoutGuide: Any? { @objc get }

  /**
    - jsName: contentLayoutRect
    - name: contentLayoutRect
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentLayoutRect: CGRect { @objc get }

  /**
    - jsName: contentMaxSize
    - name: contentMaxSize
    - argLabels: 
  */
  @objc var contentMaxSize: CGSize { @objc get @objc (setContentMaxSize:) set }

  /**
    - jsName: contentMinSize
    - name: contentMinSize
    - argLabels: 
  */
  @objc var contentMinSize: CGSize { @objc get @objc (setContentMinSize:) set }

  /**
    - jsName: contentResizeIncrements
    - name: contentResizeIncrements
    - argLabels: 
  */
  @objc var contentResizeIncrements: CGSize { @objc get @objc (setContentResizeIncrements:) set }

  /**
    - jsName: contentView
    - name: contentView
    - argLabels: 
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - jsName: contentViewController
    - name: contentViewController
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentViewController: NSViewController? { @objc get @objc (setContentViewController:) set }

  /**
    - jsName: currentEvent
    - name: currentEvent
    - argLabels: 
  */
  @objc var currentEvent: NSEvent? { @objc get }

  /**
    - jsName: deepestScreen
    - name: deepestScreen
    - argLabels: 
  */
  @objc var deepestScreen: NSScreen? { @objc get }

  /**
    - jsName: defaultButtonCell
    - name: defaultButtonCell
    - argLabels: 
  */
  @objc var defaultButtonCell: NSButtonCell? { @objc get @objc (setDefaultButtonCell:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSWindowDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: depthLimit
    - name: depthLimit
    - argLabels: 
  */
  @objc var depthLimit: NSWindow.Depth { @objc get @objc (setDepthLimit:) set }

  /**
    - jsName: deviceDescription
    - name: deviceDescription
    - argLabels: 
  */
  @objc var deviceDescription: [NSDeviceDescriptionKey: Any] { @objc get }

  /**
    - jsName: displaysWhenScreenProfileChanges
    - name: displaysWhenScreenProfileChanges
    - argLabels: 
  */
  @objc var displaysWhenScreenProfileChanges: Bool { @objc get @objc (setDisplaysWhenScreenProfileChanges:) set }

  /**
    - jsName: dockTile
    - name: dockTile
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dockTile: NSDockTile { @objc get }

  /**
    - jsName: isDocumentEdited
    - name: documentEdited
    - argLabels: 
    - obsoleted: 3
    - renamed: isDocumentEdited
  */
  @objc var isDocumentEdited: Bool { @objc get @objc (setDocumentEdited:) set }

  /**
    - jsName: isExcludedFromWindowsMenu
    - name: excludedFromWindowsMenu
    - argLabels: 
    - obsoleted: 3
    - renamed: isExcludedFromWindowsMenu
  */
  @objc var isExcludedFromWindowsMenu: Bool { @objc get @objc (setExcludedFromWindowsMenu:) set }

  /**
    - jsName: firstResponder
    - name: firstResponder
    - argLabels: 
  */
  @objc var firstResponder: NSResponder? { @objc get }

  /**
    - jsName: isFloatingPanel
    - name: floatingPanel
    - argLabels: 
    - obsoleted: 3
    - renamed: isFloatingPanel
  */
  @objc var isFloatingPanel: Bool { @objc get }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get }

  /**
    - jsName: frameAutosaveName
    - name: frameAutosaveName
    - argLabels: 
  */
  @objc var frameAutosaveName: NSWindow.FrameAutosaveName { @objc get }

  /**
    - jsName: hasCloseBox
    - name: hasCloseBox
    - argLabels: 
  */
  @objc var hasCloseBox: Bool { @objc get }

  /**
    - jsName: hasDynamicDepthLimit
    - name: hasDynamicDepthLimit
    - argLabels: 
  */
  @objc var hasDynamicDepthLimit: Bool { @objc get }

  /**
    - jsName: hasShadow
    - name: hasShadow
    - argLabels: 
  */
  @objc var hasShadow: Bool { @objc get @objc (setHasShadow:) set }

  /**
    - jsName: hasTitleBar
    - name: hasTitleBar
    - argLabels: 
  */
  @objc var hasTitleBar: Bool { @objc get }

  /**
    - jsName: hidesOnDeactivate
    - name: hidesOnDeactivate
    - argLabels: 
  */
  @objc var hidesOnDeactivate: Bool { @objc get @objc (setHidesOnDeactivate:) set }

  /**
    - jsName: ignoresMouseEvents
    - name: ignoresMouseEvents
    - argLabels: 
  */
  @objc var ignoresMouseEvents: Bool { @objc get @objc (setIgnoresMouseEvents:) set }

  /**
    - jsName: inLiveResize
    - name: inLiveResize
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var inLiveResize: Bool { @objc get }

  /**
    - jsName: initialFirstResponder
    - name: initialFirstResponder
    - argLabels: 
  */
  @objc var initialFirstResponder: NSView? { @objc get @objc (setInitialFirstResponder:) set }

  /**
    - jsName: keyViewSelectionDirection
    - name: keyViewSelectionDirection
    - argLabels: 
  */
  @objc var keyViewSelectionDirection: NSWindow.SelectionDirection { @objc get }

  /**
    - jsName: isKeyWindow
    - name: keyWindow
    - argLabels: 
    - obsoleted: 3
    - renamed: isKeyWindow
  */
  @objc var isKeyWindow: Bool { @objc get }

  /**
    - jsName: level
    - name: level
    - argLabels: 
  */
  @objc var level: NSWindow.Level { @objc get @objc (setLevel:) set }

  /**
    - jsName: isMainWindow
    - name: mainWindow
    - argLabels: 
    - obsoleted: 3
    - renamed: isMainWindow
  */
  @objc var isMainWindow: Bool { @objc get }

  /**
    - jsName: maxFullScreenContentSize
    - name: maxFullScreenContentSize
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maxFullScreenContentSize: CGSize { @objc get @objc (setMaxFullScreenContentSize:) set }

  /**
    - jsName: maxSize
    - name: maxSize
    - argLabels: 
  */
  @objc var maxSize: CGSize { @objc get @objc (setMaxSize:) set }

  /**
    - jsName: minFullScreenContentSize
    - name: minFullScreenContentSize
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var minFullScreenContentSize: CGSize { @objc get @objc (setMinFullScreenContentSize:) set }

  /**
    - jsName: minSize
    - name: minSize
    - argLabels: 
  */
  @objc var minSize: CGSize { @objc get @objc (setMinSize:) set }

  /**
    - jsName: isMiniaturizable
    - name: miniaturizable
    - argLabels: 
    - obsoleted: 3
    - renamed: isMiniaturizable
  */
  @objc var isMiniaturizable: Bool { @objc get }

  /**
    - jsName: isMiniaturized
    - name: miniaturized
    - argLabels: 
    - obsoleted: 3
    - renamed: isMiniaturized
  */
  @objc var isMiniaturized: Bool { @objc get }

  /**
    - jsName: miniwindowImage
    - name: miniwindowImage
    - argLabels: 
  */
  @objc var miniwindowImage: NSImage? { @objc get @objc (setMiniwindowImage:) set }

  /**
    - jsName: miniwindowTitle
    - name: miniwindowTitle
    - argLabels: 
  */
  @objc var miniwindowTitle: String! { @objc get @objc (setMiniwindowTitle:) set }

  /**
    - jsName: isModalPanel
    - name: modalPanel
    - argLabels: 
    - obsoleted: 3
    - renamed: isModalPanel
  */
  @objc var isModalPanel: Bool { @objc get }

  /**
    - jsName: mouseLocationOutsideOfEventStream
    - name: mouseLocationOutsideOfEventStream
    - argLabels: 
  */
  @objc var mouseLocationOutsideOfEventStream: CGPoint { @objc get }

  /**
    - jsName: isMovable
    - name: movable
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isMovable
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isMovable: Bool { @objc get @objc (setMovable:) set }

  /**
    - jsName: isMovableByWindowBackground
    - name: movableByWindowBackground
    - argLabels: 
    - obsoleted: 3
    - renamed: isMovableByWindowBackground
  */
  @objc var isMovableByWindowBackground: Bool { @objc get @objc (setMovableByWindowBackground:) set }

  /**
    - jsName: occlusionState
    - name: occlusionState
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var occlusionState: NSWindow.OcclusionState { @objc get }

  /**
    - jsName: isOnActiveSpace
    - name: onActiveSpace
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: isOnActiveSpace
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isOnActiveSpace: Bool { @objc get }

  /**
    - jsName: isOpaque
    - name: opaque
    - argLabels: 
    - obsoleted: 3
    - renamed: isOpaque
  */
  @objc var isOpaque: Bool { @objc get @objc (setOpaque:) set }

  /**
    - jsName: orderedIndex
    - name: orderedIndex
    - argLabels: 
  */
  @objc var orderedIndex: Int { @objc get @objc (setOrderedIndex:) set }

  /**
    - jsName: parent
    - name: parentWindow
    - argLabels: 
    - obsoleted: 3
    - renamed: parent
  */
  @objc var parent: NSWindow? { @objc (parentWindow) get @objc (setParentWindow:) set }

  /**
    - jsName: preservesContentDuringLiveResize
    - name: preservesContentDuringLiveResize
    - argLabels: 
  */
  @objc var preservesContentDuringLiveResize: Bool { @objc get @objc (setPreservesContentDuringLiveResize:) set }

  /**
    - jsName: preventsApplicationTerminationWhenModal
    - name: preventsApplicationTerminationWhenModal
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var preventsApplicationTerminationWhenModal: Bool { @objc get @objc (setPreventsApplicationTerminationWhenModal:) set }

  /**
    - jsName: isReleasedWhenClosed
    - name: releasedWhenClosed
    - argLabels: 
    - obsoleted: 3
    - renamed: isReleasedWhenClosed
  */
  @objc var isReleasedWhenClosed: Bool { @objc get @objc (setReleasedWhenClosed:) set }

  /**
    - jsName: representedFilename
    - name: representedFilename
    - argLabels: 
  */
  @objc var representedFilename: String { @objc get @objc (setRepresentedFilename:) set }

  /**
    - jsName: representedURL
    - name: representedURL
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var representedURL: URL? { @objc get @objc (setRepresentedURL:) set }

  /**
    - jsName: isResizable
    - name: resizable
    - argLabels: 
    - obsoleted: 3
    - renamed: isResizable
  */
  @objc var isResizable: Bool { @objc get }

  /**
    - jsName: resizeFlags
    - name: resizeFlags
    - argLabels: 
  */
  @objc var resizeFlags: NSEvent.ModifierFlags { @objc get }

  /**
    - jsName: resizeIncrements
    - name: resizeIncrements
    - argLabels: 
  */
  @objc var resizeIncrements: CGSize { @objc get @objc (setResizeIncrements:) set }

  /**
    - jsName: isRestorable
    - name: restorable
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isRestorable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isRestorable: Bool { @objc get @objc (setRestorable:) set }

  /**
    - jsName: restorationClass
    - name: restorationClass
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var restorationClass: NSWindowRestoration.Type? { @objc get @objc (setRestorationClass:) set }

  /**
    - jsName: screen
    - name: screen
    - argLabels: 
  */
  @objc var screen: NSScreen? { @objc get }

  /**
    - jsName: sharingType
    - name: sharingType
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var sharingType: NSWindow.SharingType { @objc get @objc (setSharingType:) set }

  /**
    - jsName: isSheet
    - name: sheet
    - argLabels: 
    - obsoleted: 3
    - renamed: isSheet
  */
  @objc var isSheet: Bool { @objc get }

  /**
    - jsName: sheetParent
    - name: sheetParent
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var sheetParent: NSWindow? { @objc get }

  /**
    - jsName: sheets
    - name: sheets
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var sheets: [NSWindow] { @objc get }

  /**
    - jsName: showsResizeIndicator
    - name: showsResizeIndicator
    - argLabels: 
  */
  @objc var showsResizeIndicator: Bool { @objc get @objc (setShowsResizeIndicator:) set }

  /**
    - jsName: showsToolbarButton
    - name: showsToolbarButton
    - argLabels: 
  */
  @objc var showsToolbarButton: Bool { @objc get @objc (setShowsToolbarButton:) set }

  /**
    - jsName: frameDescriptor
    - name: stringWithSavedFrame
    - argLabels: 
    - obsoleted: 4.2
    - renamed: frameDescriptor
  */
  @objc var frameDescriptor: NSWindow.PersistableFrameDescriptor { @objc (stringWithSavedFrame) get }

  /**
    - jsName: styleMask
    - name: styleMask
    - argLabels: 
  */
  @objc var styleMask: NSWindow.StyleMask { @objc get @objc (setStyleMask:) set }

  /**
    - jsName: tab
    - name: tab
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var tab: NSWindowTab { @objc get }

  /**
    - jsName: tabGroup
    - name: tabGroup
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var tabGroup: NSWindowTabGroup? { @objc get }

  /**
    - jsName: tabbedWindows
    - name: tabbedWindows
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabbedWindows: [NSWindow]? { @objc get }

  /**
    - jsName: tabbingIdentifier
    - name: tabbingIdentifier
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabbingIdentifier: NSWindow.TabbingIdentifier { @objc get @objc (setTabbingIdentifier:) set }

  /**
    - jsName: tabbingMode
    - name: tabbingMode
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabbingMode: NSWindow.TabbingMode { @objc get @objc (setTabbingMode:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: titleVisibility
    - name: titleVisibility
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var titleVisibility: NSWindow.TitleVisibility { @objc get @objc (setTitleVisibility:) set }

  /**
    - jsName: titlebarAccessoryViewControllers
    - name: titlebarAccessoryViewControllers
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var titlebarAccessoryViewControllers: [NSTitlebarAccessoryViewController] { @objc get @objc (setTitlebarAccessoryViewControllers:) set }

  /**
    - jsName: titlebarAppearsTransparent
    - name: titlebarAppearsTransparent
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var titlebarAppearsTransparent: Bool { @objc get @objc (setTitlebarAppearsTransparent:) set }

  /**
    - jsName: toolbar
    - name: toolbar
    - argLabels: 
  */
  @objc var toolbar: NSToolbar? { @objc get @objc (setToolbar:) set }

  /**
    - jsName: viewsNeedDisplay
    - name: viewsNeedDisplay
    - argLabels: 
  */
  @objc var viewsNeedDisplay: Bool { @objc get @objc (setViewsNeedDisplay:) set }

  /**
    - jsName: isVisible
    - name: visible
    - argLabels: 
    - obsoleted: 3
    - renamed: isVisible
  */
  @objc var isVisible: Bool { @objc get }

  /**
    - jsName: windowController
    - name: windowController
    - argLabels: 
  */
  @objc var windowController: NSWindowController? { @objc get @objc (setWindowController:) set }

  /**
    - jsName: windowNumber
    - name: windowNumber
    - argLabels: 
  */
  @objc var windowNumber: Int { @objc get }

  /**
    - jsName: windowRef
    - name: windowRef
    - argLabels: 
  */
  @objc var windowRef: UnsafeMutableRawPointer { @objc get }

  /**
    - jsName: windowTitlebarLayoutDirection
    - name: windowTitlebarLayoutDirection
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var windowTitlebarLayoutDirection: NSUserInterfaceLayoutDirection { @objc get }

  /**
    - jsName: worksWhenModal
    - name: worksWhenModal
    - argLabels: 
  */
  @objc var worksWhenModal: Bool { @objc get }

  /**
    - jsName: isZoomable
    - name: zoomable
    - argLabels: 
    - obsoleted: 3
    - renamed: isZoomable
  */
  @objc var isZoomable: Bool { @objc get }

  /**
    - jsName: isZoomed
    - name: zoomed
    - argLabels: 
    - obsoleted: 3
    - renamed: isZoomed
  */
  @objc var isZoomed: Bool { @objc get }
}

extension NSWindow: NSWindowExports {
  @objc public static func create(contentViewController: NSViewController) -> Self {
    return self.init(contentViewController: contentViewController)
  }

  @objc public static func createWithContentRect(_ contentRect: CGRect, styleMask: NSWindow.StyleMask, backing: NSWindow.BackingStoreType, defer: Bool) -> Self {
    return self.init(contentRect: contentRect, styleMask: styleMask, backing: backing, defer: `defer`)
  }

  @objc public static func createWithContentRect(_ contentRect: CGRect, styleMask: NSWindow.StyleMask, backing: NSWindow.BackingStoreType, defer: Bool, screen: NSScreen?) -> Self {
    return self.init(contentRect: contentRect, styleMask: styleMask, backing: backing, defer: `defer`, screen: screen)
  }

  @objc public static func createWithWindowRef(_ windowRef: UnsafeMutableRawPointer) -> Self? {
    return self.init(windowRef: windowRef)
  }

}
