import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSResponder
  */

@objc(NSResponder) protocol NSResponderExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: restorableStateKeyPaths
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var restorableStateKeyPaths: [String] { @objc get }

  // Instance Methods

  /**
    - Selector: becomeFirstResponder
  */
  @objc func becomeFirstResponder() -> Bool

  /**
    - Selector: beginGestureWithEvent:
    - Introduced: 10.5
  */
  @objc (beginGestureWithEvent:) @available(OSX 10.5, *) func beginGesture(with: NSEvent)

  /**
    - Selector: changeModeWithEvent:
    - Introduced: 10.15
  */
  @objc (changeModeWithEvent:) @available(OSX 10.15, *) func changeMode(with: NSEvent)

  /**
    - Selector: cursorUpdate:
    - Introduced: 10.5
  */
  @objc (cursorUpdate:) @available(OSX 10.5, *) func cursorUpdate(with: NSEvent)

  /**
    - Selector: encodeRestorableStateWithCoder:
    - Introduced: 10.7
  */
  @objc (encodeRestorableStateWithCoder:) @available(OSX 10.7, *) func encodeRestorableState(with: NSCoder)

  /**
    - Selector: encodeRestorableStateWithCoder:backgroundQueue:
    - Introduced: 10.13
  */
  @objc (encodeRestorableStateWithCoder:backgroundQueue:) @available(OSX 10.13, *) func encodeRestorableState(with: NSCoder, backgroundQueue: OperationQueue)

  /**
    - Selector: endGestureWithEvent:
    - Introduced: 10.5
  */
  @objc (endGestureWithEvent:) @available(OSX 10.5, *) func endGesture(with: NSEvent)

  /**
    - Selector: flagsChanged:
  */
  @objc (flagsChanged:) func flagsChanged(with: NSEvent)

  /**
    - Selector: flushBufferedKeyEvents
  */
  @objc func flushBufferedKeyEvents()

  /**
    - Selector: helpRequested:
  */
  @objc func helpRequested(_: NSEvent)

  /**
    - Selector: interpretKeyEvents:
  */
  @objc func interpretKeyEvents(_: [NSEvent])

  /**
    - Selector: invalidateRestorableState
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func invalidateRestorableState()

  /**
    - Selector: keyDown:
  */
  @objc (keyDown:) func keyDown(with: NSEvent)

  /**
    - Selector: keyUp:
  */
  @objc (keyUp:) func keyUp(with: NSEvent)

  /**
    - Selector: magnifyWithEvent:
    - Introduced: 10.5
  */
  @objc (magnifyWithEvent:) @available(OSX 10.5, *) func magnify(with: NSEvent)

  /**
    - Selector: makeTouchBar
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func makeTouchBar() -> NSTouchBar?

  /**
    - Selector: mouseDown:
  */
  @objc (mouseDown:) func mouseDown(with: NSEvent)

  /**
    - Selector: mouseDragged:
  */
  @objc (mouseDragged:) func mouseDragged(with: NSEvent)

  /**
    - Selector: mouseEntered:
  */
  @objc (mouseEntered:) func mouseEntered(with: NSEvent)

  /**
    - Selector: mouseExited:
  */
  @objc (mouseExited:) func mouseExited(with: NSEvent)

  /**
    - Selector: mouseMoved:
  */
  @objc (mouseMoved:) func mouseMoved(with: NSEvent)

  /**
    - Selector: mouseUp:
  */
  @objc (mouseUp:) func mouseUp(with: NSEvent)

  /**
    - Selector: newWindowForTab:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func newWindowForTab(_: Any?)

  /**
    - Selector: noResponderFor:
  */
  @objc (noResponderFor:) func noResponder(`for`: Selector)

  /**
    - Selector: otherMouseDown:
  */
  @objc (otherMouseDown:) func otherMouseDown(with: NSEvent)

  /**
    - Selector: otherMouseDragged:
  */
  @objc (otherMouseDragged:) func otherMouseDragged(with: NSEvent)

  /**
    - Selector: otherMouseUp:
  */
  @objc (otherMouseUp:) func otherMouseUp(with: NSEvent)

  /**
    - Selector: performKeyEquivalent:
  */
  @objc (performKeyEquivalent:) func performKeyEquivalent(with: NSEvent) -> Bool

  /**
    - Selector: performTextFinderAction:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func performTextFinderAction(_: Any?)

  /**
    - Selector: presentError:
  */
  @objc func presentError(_: Error) -> Bool

  /**
    - Selector: presentError:modalForWindow:delegate:didPresentSelector:contextInfo:
  */
  @objc (presentError:modalForWindow:delegate:didPresentSelector:contextInfo:) func presentError(_: Error, modalFor: NSWindow, delegate: Any?, didPresent: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: pressureChangeWithEvent:
    - Introduced: 10.10.3
  */
  @objc (pressureChangeWithEvent:) @available(OSX 10.10.3, *) func pressureChange(with: NSEvent)

  /**
    - Selector: quickLookWithEvent:
    - Introduced: 10.8
  */
  @objc (quickLookWithEvent:) @available(OSX 10.8, *) func quickLook(with: NSEvent)

  /**
    - Selector: resignFirstResponder
  */
  @objc func resignFirstResponder() -> Bool

  /**
    - Selector: restoreStateWithCoder:
    - Introduced: 10.7
  */
  @objc (restoreStateWithCoder:) @available(OSX 10.7, *) func restoreState(with: NSCoder)

  /**
    - Selector: rightMouseDown:
  */
  @objc (rightMouseDown:) func rightMouseDown(with: NSEvent)

  /**
    - Selector: rightMouseDragged:
  */
  @objc (rightMouseDragged:) func rightMouseDragged(with: NSEvent)

  /**
    - Selector: rightMouseUp:
  */
  @objc (rightMouseUp:) func rightMouseUp(with: NSEvent)

  /**
    - Selector: rotateWithEvent:
    - Introduced: 10.5
  */
  @objc (rotateWithEvent:) @available(OSX 10.5, *) func rotate(with: NSEvent)

  /**
    - Selector: scrollWheel:
  */
  @objc (scrollWheel:) func scrollWheel(with: NSEvent)

  /**
    - Selector: shouldBeTreatedAsInkEvent:
  */
  @objc (shouldBeTreatedAsInkEvent:) func shouldBeTreatedAsInkEvent(_: NSEvent) -> Bool

  /**
    - Selector: showContextHelp:
  */
  @objc func showContextHelp(_: Any?)

  /**
    - Selector: smartMagnifyWithEvent:
    - Introduced: 10.8
  */
  @objc (smartMagnifyWithEvent:) @available(OSX 10.8, *) func smartMagnify(with: NSEvent)

  /**
    - Selector: supplementalTargetForAction:sender:
    - Introduced: 10.7
  */
  @objc (supplementalTargetForAction:sender:) @available(OSX 10.7, *) func supplementalTarget(forAction: Selector, sender: Any?) -> Any?

  /**
    - Selector: swipeWithEvent:
    - Introduced: 10.5
  */
  @objc (swipeWithEvent:) @available(OSX 10.5, *) func swipe(with: NSEvent)

  /**
    - Selector: tabletPoint:
  */
  @objc (tabletPoint:) func tabletPoint(with: NSEvent)

  /**
    - Selector: tabletProximity:
  */
  @objc (tabletProximity:) func tabletProximity(with: NSEvent)

  /**
    - Selector: touchesBeganWithEvent:
    - Introduced: 10.6
  */
  @objc (touchesBeganWithEvent:) @available(OSX 10.6, *) func touchesBegan(with: NSEvent)

  /**
    - Selector: touchesCancelledWithEvent:
    - Introduced: 10.6
  */
  @objc (touchesCancelledWithEvent:) @available(OSX 10.6, *) func touchesCancelled(with: NSEvent)

  /**
    - Selector: touchesEndedWithEvent:
    - Introduced: 10.6
  */
  @objc (touchesEndedWithEvent:) @available(OSX 10.6, *) func touchesEnded(with: NSEvent)

  /**
    - Selector: touchesMovedWithEvent:
    - Introduced: 10.6
  */
  @objc (touchesMovedWithEvent:) @available(OSX 10.6, *) func touchesMoved(with: NSEvent)

  /**
    - Selector: tryToPerform:with:
  */
  @objc (tryToPerform:with:) func tryToPerform(_: Selector, with: Any?) -> Bool

  /**
    - Selector: updateUserActivityState:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func updateUserActivityState(_: NSUserActivity)

  /**
    - Selector: validRequestorForSendType:returnType:
  */
  @objc (validRequestorForSendType:returnType:) func validRequestor(forSendType: NSPasteboard.PasteboardType?, returnType: NSPasteboard.PasteboardType?) -> Any?

  /**
    - Selector: validateProposedFirstResponder:forEvent:
    - Introduced: 10.7
  */
  @objc (validateProposedFirstResponder:forEvent:) @available(OSX 10.7, *) func validateProposedFirstResponder(_: NSResponder, `for`: NSEvent?) -> Bool

  /**
    - Selector: wantsForwardedScrollEventsForAxis:
    - Introduced: 10.7
  */
  @objc (wantsForwardedScrollEventsForAxis:) @available(OSX 10.7, *) func wantsForwardedScrollEvents(`for`: NSEvent.GestureAxis) -> Bool

  /**
    - Selector: wantsScrollEventsForSwipeTrackingOnAxis:
    - Introduced: 10.7
  */
  @objc (wantsScrollEventsForSwipeTrackingOnAxis:) @available(OSX 10.7, *) func wantsScrollEventsForSwipeTracking(on: NSEvent.GestureAxis) -> Bool

  /**
    - Selector: willPresentError:
  */
  @objc func willPresentError(_: Error) -> Error

  // Own Instance Properties

  /**
    - Selector: acceptsFirstResponder
  */
  @objc var acceptsFirstResponder: Bool { @objc get }

  /**
    - Selector: menu
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - Selector: nextResponder
  */
  @objc var nextResponder: NSResponder? { @objc get @objc (setNextResponder:) set }

  /**
    - Selector: touchBar
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var touchBar: NSTouchBar? { @objc get @objc (setTouchBar:) set }

  /**
    - Selector: undoManager
  */
  @objc var undoManager: UndoManager? { @objc get }

  /**
    - Selector: userActivity
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var userActivity: NSUserActivity? { @objc get @objc (setUserActivity:) set }
}

extension NSResponder: NSResponderExports {
}
