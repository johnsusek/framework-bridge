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
    - Selector: NSWindow
  */

@objc(NSWindow) protocol NSWindowExports: JSExport, NSResponderExports {
  // Static Methods

  /**
    - Selector: contentRectForFrameRect:styleMask:
  */
  @objc (contentRectForFrameRect:styleMask:) static func contentRect(forFrameRect: CGRect, styleMask: NSWindow.StyleMask) -> CGRect

  /**
    - Selector: frameRectForContentRect:styleMask:
  */
  @objc (frameRectForContentRect:styleMask:) static func frameRect(forContentRect: CGRect, styleMask: NSWindow.StyleMask) -> CGRect

  /**
    - Selector: minFrameWidthWithTitle:styleMask:
  */
  @objc (minFrameWidthWithTitle:styleMask:) static func minFrameWidth(withTitle: String, styleMask: NSWindow.StyleMask) -> CGFloat

  /**
    - Selector: removeFrameUsingName:
  */
  @objc (removeFrameUsingName:) static func removeFrame(usingName: NSWindow.FrameAutosaveName)

  /**
    - Selector: standardWindowButton:forStyleMask:
  */
  @objc (standardWindowButton:forStyleMask:) static func standardWindowButton(_: NSWindow.ButtonType, `for`: NSWindow.StyleMask) -> NSButton?

  /**
    - Selector: windowNumberAtPoint:belowWindowWithWindowNumber:
    - Introduced: 10.6
  */
  @objc (windowNumberAtPoint:belowWindowWithWindowNumber:) @available(OSX 10.6, *) static func windowNumber(at: CGPoint, belowWindowWithWindowNumber: Int) -> Int

  /**
    - Selector: windowNumbersWithOptions:
    - Introduced: 10.6
  */
  @objc (windowNumbersWithOptions:) @available(OSX 10.6, *) static func windowNumbers(options: NSWindow.NumberListOptions) -> [NSNumber]?

  /**
    - Selector: windowWithContentViewController:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithContentViewController(_ contentViewController: NSViewController) -> Self

  // Own Static Properties

  /**
    - Selector: allowsAutomaticWindowTabbing
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var allowsAutomaticWindowTabbing: Bool { @objc get @objc (setAllowsAutomaticWindowTabbing:) set }

  /**
    - Selector: defaultDepthLimit
  */
  @objc static var defaultDepthLimit: NSWindow.Depth { @objc get }

  /**
    - Selector: userTabbingPreference
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var userTabbingPreference: NSWindow.UserTabbingPreference { @objc get }

  // Instance Methods

  /**
    - Selector: addChildWindow:ordered:
  */
  @objc func addChildWindow(_: NSWindow, ordered: NSWindow.OrderingMode)

  /**
    - Selector: addTabbedWindow:ordered:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func addTabbedWindow(_: NSWindow, ordered: NSWindow.OrderingMode)

  /**
    - Selector: addTitlebarAccessoryViewController:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func addTitlebarAccessoryViewController(_: NSTitlebarAccessoryViewController)

  /**
    - Selector: anchorAttributeForOrientation:
  */
  @objc (anchorAttributeForOrientation:) func anchorAttribute(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Attribute

  /**
    - Selector: animationResizeTime:
  */
  @objc func animationResizeTime(_: CGRect) -> TimeInterval

  /**
    - Selector: autorecalculatesContentBorderThicknessForEdge:
    - Introduced: 10.5
  */
  @objc (autorecalculatesContentBorderThicknessForEdge:) @available(OSX 10.5, *) func autorecalculatesContentBorderThickness(`for`: NSRectEdge) -> Bool

  /**
    - Selector: backingAlignedRect:options:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func backingAlignedRect(_: CGRect, options: AlignmentOptions) -> CGRect

  /**
    - Selector: becomeKeyWindow
  */
  @objc (becomeKeyWindow) func becomeKey()

  /**
    - Selector: becomeMainWindow
  */
  @objc (becomeMainWindow) func becomeMain()

  /**
    - Selector: beginCriticalSheet:completionHandler:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func beginCriticalSheetCompletionHandler(_ completionHandler: NSWindow, _ completionHandler1: JSValue)

  /**
    - Selector: beginSheet:completionHandler:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func beginSheetCompletionHandler(_ completionHandler: NSWindow, _ completionHandler1: JSValue)

  /**
    - Selector: canRepresentDisplayGamut:
    - Introduced: 10.12
  */
  @objc (canRepresentDisplayGamut:) @available(OSX 10.12, *) func canRepresent(_: NSDisplayGamut) -> Bool

  /**
    - Selector: cascadeTopLeftFromPoint:
  */
  @objc (cascadeTopLeftFromPoint:) func cascadeTopLeft(from: CGPoint) -> CGPoint

  /**
    - Selector: center
  */
  @objc func center()

  /**
    - Selector: close
  */
  @objc func close()

  /**
    - Selector: constrainFrameRect:toScreen:
  */
  @objc (constrainFrameRect:toScreen:) func constrainFrameRect(_: CGRect, to: NSScreen?) -> CGRect

  /**
    - Selector: contentBorderThicknessForEdge:
    - Introduced: 10.5
  */
  @objc (contentBorderThicknessForEdge:) @available(OSX 10.5, *) func contentBorderThickness(`for`: NSRectEdge) -> CGFloat

  /**
    - Selector: contentRectForFrameRect:
  */
  @objc (contentRectForFrameRect:) func contentRect(forFrameRect: CGRect) -> CGRect

  /**
    - Selector: convertPointFromBacking:
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func convertPointFromBacking(_: CGPoint) -> CGPoint

  /**
    - Selector: convertPointFromScreen:
    - Introduced: 10.12
  */
  @objc (convertPointFromScreen:) @available(OSX 10.12, *) func convertPoint(fromScreen: CGPoint) -> CGPoint

  /**
    - Selector: convertPointToBacking:
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func convertPointToBacking(_: CGPoint) -> CGPoint

  /**
    - Selector: convertPointToScreen:
    - Introduced: 10.12
  */
  @objc (convertPointToScreen:) @available(OSX 10.12, *) func convertPoint(toScreen: CGPoint) -> CGPoint

  /**
    - Selector: convertRectFromBacking:
    - Introduced: 10.7
  */
  @objc (convertRectFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGRect) -> CGRect

  /**
    - Selector: convertRectFromScreen:
    - Introduced: 10.7
  */
  @objc (convertRectFromScreen:) @available(OSX 10.7, *) func convertFromScreen(_: CGRect) -> CGRect

  /**
    - Selector: convertRectToBacking:
    - Introduced: 10.7
  */
  @objc (convertRectToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGRect) -> CGRect

  /**
    - Selector: convertRectToScreen:
    - Introduced: 10.7
  */
  @objc (convertRectToScreen:) @available(OSX 10.7, *) func convertToScreen(_: CGRect) -> CGRect

  /**
    - Selector: dataWithEPSInsideRect:
  */
  @objc (dataWithEPSInsideRect:) func dataWithEPS(inside: CGRect) -> Data

  /**
    - Selector: dataWithPDFInsideRect:
  */
  @objc (dataWithPDFInsideRect:) func dataWithPDF(inside: CGRect) -> Data

  /**
    - Selector: deminiaturize:
  */
  @objc func deminiaturize(_: Any?)

  /**
    - Selector: disableCursorRects
  */
  @objc func disableCursorRects()

  /**
    - Selector: disableKeyEquivalentForDefaultButtonCell
  */
  @objc func disableKeyEquivalentForDefaultButtonCell()

  /**
    - Selector: disableScreenUpdatesUntilFlush
  */
  @objc func disableScreenUpdatesUntilFlush()

  /**
    - Selector: disableSnapshotRestoration
  */
  @objc func disableSnapshotRestoration()

  /**
    - Selector: discardCursorRects
  */
  @objc func discardCursorRects()

  /**
    - Selector: discardEventsMatchingMask:beforeEvent:
  */
  @objc (discardEventsMatchingMask:beforeEvent:) func discardEvents(matching: NSEvent.EventTypeMask, before: NSEvent?)

  /**
    - Selector: display
  */
  @objc func display()

  /**
    - Selector: displayIfNeeded
  */
  @objc func displayIfNeeded()

  /**
    - Selector: dragImage:at:offset:event:pasteboard:source:slideBack:
  */
  @objc (dragImage:at:offset:event:pasteboard:source:slideBack:) func drag(_: NSImage, at: CGPoint, offset: CGSize, event: NSEvent, pasteboard: NSPasteboard, source: Any, slideBack: Bool)

  /**
    - Selector: enableCursorRects
  */
  @objc func enableCursorRects()

  /**
    - Selector: enableKeyEquivalentForDefaultButtonCell
  */
  @objc func enableKeyEquivalentForDefaultButtonCell()

  /**
    - Selector: enableSnapshotRestoration
  */
  @objc func enableSnapshotRestoration()

  /**
    - Selector: endEditingFor:
  */
  @objc (endEditingFor:) func endEditing(`for`: Any?)

  /**
    - Selector: endSheet:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func endSheet(_: NSWindow)

  /**
    - Selector: endSheet:returnCode:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func endSheet(_: NSWindow, returnCode: NSApplication.ModalResponse)

  /**
    - Selector: fieldEditor:forObject:
  */
  @objc (fieldEditor:forObject:) func fieldEditor(_: Bool, `for`: Any?) -> NSText?

  /**
    - Selector: frameRectForContentRect:
  */
  @objc (frameRectForContentRect:) func frameRect(forContentRect: CGRect) -> CGRect

  /**
    - Selector: handleCloseScriptCommand:
  */
  @objc (handleCloseScriptCommand:) func handleClose(_: NSCloseCommand) -> Any?

  /**
    - Selector: handlePrintScriptCommand:
  */
  @objc (handlePrintScriptCommand:) func handlePrint(_: NSScriptCommand) -> Any?

  /**
    - Selector: handleSaveScriptCommand:
  */
  @objc (handleSaveScriptCommand:) func handleSave(_: NSScriptCommand) -> Any?

  /**
    - Selector: initWithContentRect:styleMask:backing:defer:
  */
  @objc static func createWithContentRectWithStyleMaskWithBackingWithDefer(_ contentRect: CGRect, _ styleMask: NSWindow.StyleMask, _ backing: NSWindow.BackingStoreType, _ `defer`: Bool) -> Self

  /**
    - Selector: initWithContentRect:styleMask:backing:defer:screen:
  */
  @objc static func createWithContentRectWithStyleMaskWithBackingWithDeferWithScreen(_ contentRect: CGRect, _ styleMask: NSWindow.StyleMask, _ backing: NSWindow.BackingStoreType, _ `defer`: Bool, _ screen: NSScreen?) -> Self

  /**
    - Selector: initWithWindowRef:
  */
  @objc static func createWithWindowRef(_ windowRef: UnsafeMutableRawPointer) -> Self?

  /**
    - Selector: insertTitlebarAccessoryViewController:atIndex:
    - Introduced: 10.10
  */
  @objc (insertTitlebarAccessoryViewController:atIndex:) @available(OSX 10.10, *) func insertTitlebarAccessoryViewController(_: NSTitlebarAccessoryViewController, at: Int)

  /**
    - Selector: invalidateCursorRectsForView:
  */
  @objc (invalidateCursorRectsForView:) func invalidateCursorRects(`for`: NSView)

  /**
    - Selector: invalidateShadow
  */
  @objc func invalidateShadow()

  /**
    - Selector: layoutIfNeeded
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func layoutIfNeeded()

  /**
    - Selector: makeFirstResponder:
  */
  @objc func makeFirstResponder(_: NSResponder?) -> Bool

  /**
    - Selector: makeKeyAndOrderFront:
  */
  @objc func makeKeyAndOrderFront(_: Any?)

  /**
    - Selector: makeKeyWindow
  */
  @objc (makeKeyWindow) func makeKey()

  /**
    - Selector: makeMainWindow
  */
  @objc (makeMainWindow) func makeMain()

  /**
    - Selector: mergeAllWindows:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func mergeAllWindows(_: Any?)

  /**
    - Selector: miniaturize:
  */
  @objc func miniaturize(_: Any?)

  /**
    - Selector: moveTabToNewWindow:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func moveTabToNewWindow(_: Any?)

  /**
    - Selector: nextEventMatchingMask:
  */
  @objc (nextEventMatchingMask:) func nextEvent(matching: NSEvent.EventTypeMask) -> NSEvent?

  /**
    - Selector: nextEventMatchingMask:untilDate:inMode:dequeue:
  */
  @objc (nextEventMatchingMask:untilDate:inMode:dequeue:) func nextEvent(matching: NSEvent.EventTypeMask, until: Date?, inMode: RunLoop.Mode, dequeue: Bool) -> NSEvent?

  /**
    - Selector: orderBack:
  */
  @objc func orderBack(_: Any?)

  /**
    - Selector: orderFront:
  */
  @objc func orderFront(_: Any?)

  /**
    - Selector: orderFrontRegardless
  */
  @objc func orderFrontRegardless()

  /**
    - Selector: orderOut:
  */
  @objc func orderOut(_: Any?)

  /**
    - Selector: orderWindow:relativeTo:
  */
  @objc (orderWindow:relativeTo:) func order(_: NSWindow.OrderingMode, relativeTo: Int)

  /**
    - Selector: performClose:
  */
  @objc func performClose(_: Any?)

  /**
    - Selector: performMiniaturize:
  */
  @objc func performMiniaturize(_: Any?)

  /**
    - Selector: performWindowDragWithEvent:
    - Introduced: 10.11
  */
  @objc (performWindowDragWithEvent:) @available(OSX 10.11, *) func performDrag(with: NSEvent)

  /**
    - Selector: performZoom:
  */
  @objc func performZoom(_: Any?)

  /**
    - Selector: postEvent:atStart:
  */
  @objc (postEvent:atStart:) func postEvent(_: NSEvent, atStart: Bool)

  /**
    - Selector: print:
  */
  @objc (print:) func printWindow(_: Any?)

  /**
    - Selector: recalculateKeyViewLoop
  */
  @objc func recalculateKeyViewLoop()

  /**
    - Selector: registerForDraggedTypes:
  */
  @objc (registerForDraggedTypes:) func registerForDraggedTypes(_: [NSPasteboard.PasteboardType])

  /**
    - Selector: removeChildWindow:
  */
  @objc func removeChildWindow(_: NSWindow)

  /**
    - Selector: removeTitlebarAccessoryViewControllerAtIndex:
    - Introduced: 10.10
  */
  @objc (removeTitlebarAccessoryViewControllerAtIndex:) @available(OSX 10.10, *) func removeTitlebarAccessoryViewController(at: Int)

  /**
    - Selector: resetCursorRects
  */
  @objc func resetCursorRects()

  /**
    - Selector: resignKeyWindow
  */
  @objc (resignKeyWindow) func resignKey()

  /**
    - Selector: resignMainWindow
  */
  @objc (resignMainWindow) func resignMain()

  /**
    - Selector: runToolbarCustomizationPalette:
  */
  @objc func runToolbarCustomizationPalette(_: Any?)

  /**
    - Selector: saveFrameUsingName:
  */
  @objc (saveFrameUsingName:) func saveFrame(usingName: NSWindow.FrameAutosaveName)

  /**
    - Selector: selectKeyViewFollowingView:
  */
  @objc (selectKeyViewFollowingView:) func selectKeyView(following: NSView)

  /**
    - Selector: selectKeyViewPrecedingView:
  */
  @objc (selectKeyViewPrecedingView:) func selectKeyView(preceding: NSView)

  /**
    - Selector: selectNextKeyView:
  */
  @objc func selectNextKeyView(_: Any?)

  /**
    - Selector: selectNextTab:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func selectNextTab(_: Any?)

  /**
    - Selector: selectPreviousKeyView:
  */
  @objc func selectPreviousKeyView(_: Any?)

  /**
    - Selector: selectPreviousTab:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func selectPreviousTab(_: Any?)

  /**
    - Selector: sendEvent:
  */
  @objc (sendEvent:) func sendEvent(_: NSEvent)

  /**
    - Selector: setAnchorAttribute:forOrientation:
  */
  @objc (setAnchorAttribute:forOrientation:) func setAnchorAttribute(_: NSLayoutConstraint.Attribute, `for`: NSLayoutConstraint.Orientation)

  /**
    - Selector: setAutorecalculatesContentBorderThickness:forEdge:
    - Introduced: 10.5
  */
  @objc (setAutorecalculatesContentBorderThickness:forEdge:) @available(OSX 10.5, *) func setAutorecalculatesContentBorderThickness(_: Bool, `for`: NSRectEdge)

  /**
    - Selector: setContentBorderThickness:forEdge:
    - Introduced: 10.5
  */
  @objc (setContentBorderThickness:forEdge:) @available(OSX 10.5, *) func setContentBorderThickness(_: CGFloat, `for`: NSRectEdge)

  /**
    - Selector: setContentSize:
  */
  @objc func setContentSize(_: CGSize)

  /**
    - Selector: setDynamicDepthLimit:
  */
  @objc func setDynamicDepthLimit(_: Bool)

  /**
    - Selector: setFrame:display:
  */
  @objc func setFrame(_: CGRect, display: Bool)

  /**
    - Selector: setFrame:display:animate:
  */
  @objc func setFrame(_: CGRect, display: Bool, animate: Bool)

  /**
    - Selector: setFrameAutosaveName:
  */
  @objc func setFrameAutosaveName(_: NSWindow.FrameAutosaveName) -> Bool

  /**
    - Selector: setFrameFromString:
  */
  @objc (setFrameFromString:) func setFrame(from: NSWindow.PersistableFrameDescriptor)

  /**
    - Selector: setFrameOrigin:
  */
  @objc func setFrameOrigin(_: CGPoint)

  /**
    - Selector: setFrameTopLeftPoint:
  */
  @objc func setFrameTopLeftPoint(_: CGPoint)

  /**
    - Selector: setFrameUsingName:
  */
  @objc func setFrameUsingName(_: NSWindow.FrameAutosaveName) -> Bool

  /**
    - Selector: setFrameUsingName:force:
  */
  @objc func setFrameUsingName(_: NSWindow.FrameAutosaveName, force: Bool) -> Bool

  /**
    - Selector: setIsMiniaturized:
  */
  @objc func setIsMiniaturized(_: Bool)

  /**
    - Selector: setIsVisible:
  */
  @objc func setIsVisible(_: Bool)

  /**
    - Selector: setIsZoomed:
  */
  @objc func setIsZoomed(_: Bool)

  /**
    - Selector: setTitleWithRepresentedFilename:
  */
  @objc func setTitleWithRepresentedFilename(_: String)

  /**
    - Selector: standardWindowButton:
  */
  @objc func standardWindowButton(_: NSWindow.ButtonType) -> NSButton?

  /**
    - Selector: toggleFullScreen:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func toggleFullScreen(_: Any?)

  /**
    - Selector: toggleTabBar:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func toggleTabBar(_: Any?)

  /**
    - Selector: toggleTabOverview:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func toggleTabOverview(_: Any?)

  /**
    - Selector: toggleToolbarShown:
  */
  @objc func toggleToolbarShown(_: Any?)

  /**
    - Selector: trackEventsMatchingMask:timeout:mode:handler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func trackEventsMatchingMaskWithTimeoutWithModeWithHandler(_ matching: NSEvent.EventTypeMask, _ timeout: TimeInterval, _ mode: RunLoop.Mode, _ handler: JSValue)

  /**
    - Selector: unregisterDraggedTypes
  */
  @objc func unregisterDraggedTypes()

  /**
    - Selector: update
  */
  @objc func update()

  /**
    - Selector: updateConstraintsIfNeeded
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateConstraintsIfNeeded()

  /**
    - Selector: visualizeConstraints:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func visualizeConstraints(_: [NSLayoutConstraint]?)

  /**
    - Selector: zoom:
  */
  @objc func zoom(_: Any?)

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: acceptsMouseMovedEvents
  */
  @objc var acceptsMouseMovedEvents: Bool { @objc get @objc (setAcceptsMouseMovedEvents:) set }

  /**
    - Selector: allowsConcurrentViewDrawing
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var allowsConcurrentViewDrawing: Bool { @objc get @objc (setAllowsConcurrentViewDrawing:) set }

  /**
    - Selector: allowsToolTipsWhenApplicationIsInactive
  */
  @objc var allowsToolTipsWhenApplicationIsInactive: Bool { @objc get @objc (setAllowsToolTipsWhenApplicationIsInactive:) set }

  /**
    - Selector: alphaValue
  */
  @objc var alphaValue: CGFloat { @objc get @objc (setAlphaValue:) set }

  /**
    - Selector: animationBehavior
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var animationBehavior: NSWindow.AnimationBehavior { @objc get @objc (setAnimationBehavior:) set }

  /**
    - Selector: appearanceSource
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var appearanceSource: NSAppearanceCustomization! { @objc get @objc (setAppearanceSource:) set }

  /**
    - Selector: areCursorRectsEnabled
  */
  @objc var areCursorRectsEnabled: Bool { @objc get }

  /**
    - Selector: aspectRatio
  */
  @objc var aspectRatio: CGSize { @objc get @objc (setAspectRatio:) set }

  /**
    - Selector: attachedSheet
  */
  @objc var attachedSheet: NSWindow? { @objc get }

  /**
    - Selector: autorecalculatesKeyViewLoop
  */
  @objc var autorecalculatesKeyViewLoop: Bool { @objc get @objc (setAutorecalculatesKeyViewLoop:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor! { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: backingScaleFactor
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var backingScaleFactor: CGFloat { @objc get }

  /**
    - Selector: backingType
  */
  @objc var backingType: NSWindow.BackingStoreType { @objc get @objc (setBackingType:) set }

  /**
    - Selector: canBecomeKeyWindow
  */
  @objc var canBecomeKey: Bool { @objc (canBecomeKeyWindow) get }

  /**
    - Selector: canBecomeMainWindow
  */
  @objc var canBecomeMain: Bool { @objc (canBecomeMainWindow) get }

  /**
    - Selector: canBecomeVisibleWithoutLogin
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var canBecomeVisibleWithoutLogin: Bool { @objc get @objc (setCanBecomeVisibleWithoutLogin:) set }

  /**
    - Selector: canHide
  */
  @objc var canHide: Bool { @objc get @objc (setCanHide:) set }

  /**
    - Selector: childWindows
  */
  @objc var childWindows: [NSWindow]? { @objc get }

  /**
    - Selector: collectionBehavior
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var collectionBehavior: NSWindow.CollectionBehavior { @objc get @objc (setCollectionBehavior:) set }

  /**
    - Selector: colorSpace
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var colorSpace: NSColorSpace? { @objc get @objc (setColorSpace:) set }

  /**
    - Selector: contentAspectRatio
  */
  @objc var contentAspectRatio: CGSize { @objc get @objc (setContentAspectRatio:) set }

  /**
    - Selector: contentLayoutGuide
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentLayoutGuide: Any? { @objc get }

  /**
    - Selector: contentLayoutRect
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentLayoutRect: CGRect { @objc get }

  /**
    - Selector: contentMaxSize
  */
  @objc var contentMaxSize: CGSize { @objc get @objc (setContentMaxSize:) set }

  /**
    - Selector: contentMinSize
  */
  @objc var contentMinSize: CGSize { @objc get @objc (setContentMinSize:) set }

  /**
    - Selector: contentResizeIncrements
  */
  @objc var contentResizeIncrements: CGSize { @objc get @objc (setContentResizeIncrements:) set }

  /**
    - Selector: contentView
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - Selector: contentViewController
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentViewController: NSViewController? { @objc get @objc (setContentViewController:) set }

  /**
    - Selector: currentEvent
  */
  @objc var currentEvent: NSEvent? { @objc get }

  /**
    - Selector: deepestScreen
  */
  @objc var deepestScreen: NSScreen? { @objc get }

  /**
    - Selector: defaultButtonCell
  */
  @objc var defaultButtonCell: NSButtonCell? { @objc get @objc (setDefaultButtonCell:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSWindowDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: depthLimit
  */
  @objc var depthLimit: NSWindow.Depth { @objc get @objc (setDepthLimit:) set }

  /**
    - Selector: deviceDescription
  */
  @objc var deviceDescription: [NSDeviceDescriptionKey: Any] { @objc get }

  /**
    - Selector: displaysWhenScreenProfileChanges
  */
  @objc var displaysWhenScreenProfileChanges: Bool { @objc get @objc (setDisplaysWhenScreenProfileChanges:) set }

  /**
    - Selector: dockTile
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dockTile: NSDockTile { @objc get }

  /**
    - Selector: documentEdited
  */
  @objc var isDocumentEdited: Bool { @objc get @objc (setDocumentEdited:) set }

  /**
    - Selector: excludedFromWindowsMenu
  */
  @objc var isExcludedFromWindowsMenu: Bool { @objc get @objc (setExcludedFromWindowsMenu:) set }

  /**
    - Selector: firstResponder
  */
  @objc var firstResponder: NSResponder? { @objc get }

  /**
    - Selector: floatingPanel
  */
  @objc var isFloatingPanel: Bool { @objc get }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get }

  /**
    - Selector: frameAutosaveName
  */
  @objc var frameAutosaveName: NSWindow.FrameAutosaveName { @objc get }

  /**
    - Selector: hasCloseBox
  */
  @objc var hasCloseBox: Bool { @objc get }

  /**
    - Selector: hasDynamicDepthLimit
  */
  @objc var hasDynamicDepthLimit: Bool { @objc get }

  /**
    - Selector: hasShadow
  */
  @objc var hasShadow: Bool { @objc get @objc (setHasShadow:) set }

  /**
    - Selector: hasTitleBar
  */
  @objc var hasTitleBar: Bool { @objc get }

  /**
    - Selector: hidesOnDeactivate
  */
  @objc var hidesOnDeactivate: Bool { @objc get @objc (setHidesOnDeactivate:) set }

  /**
    - Selector: ignoresMouseEvents
  */
  @objc var ignoresMouseEvents: Bool { @objc get @objc (setIgnoresMouseEvents:) set }

  /**
    - Selector: inLiveResize
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var inLiveResize: Bool { @objc get }

  /**
    - Selector: initialFirstResponder
  */
  @objc var initialFirstResponder: NSView? { @objc get @objc (setInitialFirstResponder:) set }

  /**
    - Selector: keyViewSelectionDirection
  */
  @objc var keyViewSelectionDirection: NSWindow.SelectionDirection { @objc get }

  /**
    - Selector: keyWindow
  */
  @objc var isKeyWindow: Bool { @objc get }

  /**
    - Selector: level
  */
  @objc var level: NSWindow.Level { @objc get @objc (setLevel:) set }

  /**
    - Selector: mainWindow
  */
  @objc var isMainWindow: Bool { @objc get }

  /**
    - Selector: maxFullScreenContentSize
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maxFullScreenContentSize: CGSize { @objc get @objc (setMaxFullScreenContentSize:) set }

  /**
    - Selector: maxSize
  */
  @objc var maxSize: CGSize { @objc get @objc (setMaxSize:) set }

  /**
    - Selector: minFullScreenContentSize
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var minFullScreenContentSize: CGSize { @objc get @objc (setMinFullScreenContentSize:) set }

  /**
    - Selector: minSize
  */
  @objc var minSize: CGSize { @objc get @objc (setMinSize:) set }

  /**
    - Selector: miniaturizable
  */
  @objc var isMiniaturizable: Bool { @objc get }

  /**
    - Selector: miniaturized
  */
  @objc var isMiniaturized: Bool { @objc get }

  /**
    - Selector: miniwindowImage
  */
  @objc var miniwindowImage: NSImage? { @objc get @objc (setMiniwindowImage:) set }

  /**
    - Selector: miniwindowTitle
  */
  @objc var miniwindowTitle: String! { @objc get @objc (setMiniwindowTitle:) set }

  /**
    - Selector: modalPanel
  */
  @objc var isModalPanel: Bool { @objc get }

  /**
    - Selector: mouseLocationOutsideOfEventStream
  */
  @objc var mouseLocationOutsideOfEventStream: CGPoint { @objc get }

  /**
    - Selector: movable
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isMovable: Bool { @objc get @objc (setMovable:) set }

  /**
    - Selector: movableByWindowBackground
  */
  @objc var isMovableByWindowBackground: Bool { @objc get @objc (setMovableByWindowBackground:) set }

  /**
    - Selector: occlusionState
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var occlusionState: NSWindow.OcclusionState { @objc get }

  /**
    - Selector: onActiveSpace
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var isOnActiveSpace: Bool { @objc get }

  /**
    - Selector: opaque
  */
  @objc var isOpaque: Bool { @objc get @objc (setOpaque:) set }

  /**
    - Selector: orderedIndex
  */
  @objc var orderedIndex: Int { @objc get @objc (setOrderedIndex:) set }

  /**
    - Selector: parentWindow
  */
  @objc var parent: NSWindow? { @objc (parentWindow) get @objc (setParentWindow:) set }

  /**
    - Selector: preservesContentDuringLiveResize
  */
  @objc var preservesContentDuringLiveResize: Bool { @objc get @objc (setPreservesContentDuringLiveResize:) set }

  /**
    - Selector: preventsApplicationTerminationWhenModal
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var preventsApplicationTerminationWhenModal: Bool { @objc get @objc (setPreventsApplicationTerminationWhenModal:) set }

  /**
    - Selector: releasedWhenClosed
  */
  @objc var isReleasedWhenClosed: Bool { @objc get @objc (setReleasedWhenClosed:) set }

  /**
    - Selector: representedFilename
  */
  @objc var representedFilename: String { @objc get @objc (setRepresentedFilename:) set }

  /**
    - Selector: representedURL
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var representedURL: URL? { @objc get @objc (setRepresentedURL:) set }

  /**
    - Selector: resizable
  */
  @objc var isResizable: Bool { @objc get }

  /**
    - Selector: resizeFlags
  */
  @objc var resizeFlags: NSEvent.ModifierFlags { @objc get }

  /**
    - Selector: resizeIncrements
  */
  @objc var resizeIncrements: CGSize { @objc get @objc (setResizeIncrements:) set }

  /**
    - Selector: restorable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isRestorable: Bool { @objc get @objc (setRestorable:) set }

  /**
    - Selector: restorationClass
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var restorationClass: NSWindowRestoration.Type? { @objc get @objc (setRestorationClass:) set }

  /**
    - Selector: screen
  */
  @objc var screen: NSScreen? { @objc get }

  /**
    - Selector: sharingType
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var sharingType: NSWindow.SharingType { @objc get @objc (setSharingType:) set }

  /**
    - Selector: sheet
  */
  @objc var isSheet: Bool { @objc get }

  /**
    - Selector: sheetParent
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var sheetParent: NSWindow? { @objc get }

  /**
    - Selector: sheets
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var sheets: [NSWindow] { @objc get }

  /**
    - Selector: showsResizeIndicator
  */
  @objc var showsResizeIndicator: Bool { @objc get @objc (setShowsResizeIndicator:) set }

  /**
    - Selector: showsToolbarButton
  */
  @objc var showsToolbarButton: Bool { @objc get @objc (setShowsToolbarButton:) set }

  /**
    - Selector: stringWithSavedFrame
  */
  @objc var frameDescriptor: NSWindow.PersistableFrameDescriptor { @objc (stringWithSavedFrame) get }

  /**
    - Selector: styleMask
  */
  @objc var styleMask: NSWindow.StyleMask { @objc get @objc (setStyleMask:) set }

  /**
    - Selector: tab
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var tab: NSWindowTab { @objc get }

  /**
    - Selector: tabGroup
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var tabGroup: NSWindowTabGroup? { @objc get }

  /**
    - Selector: tabbedWindows
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabbedWindows: [NSWindow]? { @objc get }

  /**
    - Selector: tabbingIdentifier
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabbingIdentifier: NSWindow.TabbingIdentifier { @objc get @objc (setTabbingIdentifier:) set }

  /**
    - Selector: tabbingMode
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var tabbingMode: NSWindow.TabbingMode { @objc get @objc (setTabbingMode:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: titleVisibility
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var titleVisibility: NSWindow.TitleVisibility { @objc get @objc (setTitleVisibility:) set }

  /**
    - Selector: titlebarAccessoryViewControllers
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var titlebarAccessoryViewControllers: [NSTitlebarAccessoryViewController] { @objc get @objc (setTitlebarAccessoryViewControllers:) set }

  /**
    - Selector: titlebarAppearsTransparent
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var titlebarAppearsTransparent: Bool { @objc get @objc (setTitlebarAppearsTransparent:) set }

  /**
    - Selector: toolbar
  */
  @objc var toolbar: NSToolbar? { @objc get @objc (setToolbar:) set }

  /**
    - Selector: viewsNeedDisplay
  */
  @objc var viewsNeedDisplay: Bool { @objc get @objc (setViewsNeedDisplay:) set }

  /**
    - Selector: visible
  */
  @objc var isVisible: Bool { @objc get }

  /**
    - Selector: windowController
  */
  @objc var windowController: NSWindowController? { @objc get @objc (setWindowController:) set }

  /**
    - Selector: windowNumber
  */
  @objc var windowNumber: Int { @objc get }

  /**
    - Selector: windowRef
  */
  @objc var windowRef: UnsafeMutableRawPointer { @objc get }

  /**
    - Selector: windowTitlebarLayoutDirection
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var windowTitlebarLayoutDirection: NSUserInterfaceLayoutDirection { @objc get }

  /**
    - Selector: worksWhenModal
  */
  @objc var worksWhenModal: Bool { @objc get }

  /**
    - Selector: zoomable
  */
  @objc var isZoomable: Bool { @objc get }

  /**
    - Selector: zoomed
  */
  @objc var isZoomed: Bool { @objc get }
}

extension NSWindow: NSWindowExports {

  /**
    - Selector: windowWithContentViewController:
    - Introduced: 10.10
  */
  @objc public static func createWithContentViewController(_ contentViewController: NSViewController) -> Self {
    return self.init(contentViewController: contentViewController)
  }


  /**
    - Selector: initWithContentRect:styleMask:backing:defer:
  */
  @objc public static func createWithContentRectWithStyleMaskWithBackingWithDefer(_ contentRect: CGRect, _ styleMask: NSWindow.StyleMask, _ backing: NSWindow.BackingStoreType, _ `defer`: Bool) -> Self {
    return self.init(contentRect: contentRect, styleMask: styleMask, backing: backing, defer: `defer`)
  }


  /**
    - Selector: initWithContentRect:styleMask:backing:defer:screen:
  */
  @objc public static func createWithContentRectWithStyleMaskWithBackingWithDeferWithScreen(_ contentRect: CGRect, _ styleMask: NSWindow.StyleMask, _ backing: NSWindow.BackingStoreType, _ `defer`: Bool, _ screen: NSScreen?) -> Self {
    return self.init(contentRect: contentRect, styleMask: styleMask, backing: backing, defer: `defer`, screen: screen)
  }


  /**
    - Selector: initWithWindowRef:
  */
  @objc public static func createWithWindowRef(_ windowRef: UnsafeMutableRawPointer) -> Self? {
    return self.init(windowRef: windowRef)
  }

}
