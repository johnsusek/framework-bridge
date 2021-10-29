import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSResponder
    - name: NSResponder
    - argLabels: 
  */

@objc(NSResponder) protocol NSResponderExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: restorableStateKeyPaths
    - name: restorableStateKeyPaths
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var restorableStateKeyPaths: [String] { @objc get }

  // Instance Methods

  /**
    - jsName: becomeFirstResponder
    - name: becomeFirstResponder
    - argLabels: 
    - constructorTokens: 
  */
  @objc func becomeFirstResponder() -> Bool

  /**
    - jsName: beginGesture
    - name: beginGestureWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: beginGesture(with:)
    - Introduced: 10.5
  */
  @objc (beginGestureWithEvent:) @available(OSX 10.5, *) func beginGesture(with: NSEvent)

  /**
    - jsName: changeMode
    - name: changeModeWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: changeMode(with:)
    - Introduced: 10.15
  */
  @objc (changeModeWithEvent:) @available(OSX 10.15, *) func changeMode(with: NSEvent)

  /**
    - jsName: cursorUpdate
    - name: cursorUpdate:
    - argLabels: with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: cursorUpdate(with:)
    - Introduced: 10.5
  */
  @objc (cursorUpdate:) @available(OSX 10.5, *) func cursorUpdate(with: NSEvent)

  /**
    - jsName: encodeRestorableState
    - name: encodeRestorableStateWithCoder:
    - argLabels: with
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: encodeRestorableState(with:)
    - Introduced: 10.7
  */
  @objc (encodeRestorableStateWithCoder:) @available(OSX 10.7, *) func encodeRestorableState(with: NSCoder)

  /**
    - jsName: encodeRestorableState
    - name: encodeRestorableStateWithCoder:backgroundQueue:
    - argLabels: with, backgroundQueue
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: encodeRestorableState(with:backgroundQueue:)
    - Introduced: 10.13
  */
  @objc (encodeRestorableStateWithCoder:backgroundQueue:) @available(OSX 10.13, *) func encodeRestorableState(with: NSCoder, backgroundQueue: OperationQueue)

  /**
    - jsName: endGesture
    - name: endGestureWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: endGesture(with:)
    - Introduced: 10.5
  */
  @objc (endGestureWithEvent:) @available(OSX 10.5, *) func endGesture(with: NSEvent)

  /**
    - jsName: flagsChanged
    - name: flagsChanged:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: flagsChanged(with:)
  */
  @objc (flagsChanged:) func flagsChanged(with: NSEvent)

  /**
    - jsName: flushBufferedKeyEvents
    - name: flushBufferedKeyEvents
    - argLabels: 
    - constructorTokens: 
  */
  @objc func flushBufferedKeyEvents()

  /**
    - jsName: helpRequested
    - name: helpRequested:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func helpRequested(_: NSEvent)

  /**
    - jsName: interpretKeyEvents
    - name: interpretKeyEvents:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func interpretKeyEvents(_: [NSEvent])

  /**
    - jsName: invalidateRestorableState
    - name: invalidateRestorableState
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func invalidateRestorableState()

  /**
    - jsName: keyDown
    - name: keyDown:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: keyDown(with:)
  */
  @objc (keyDown:) func keyDown(with: NSEvent)

  /**
    - jsName: keyUp
    - name: keyUp:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: keyUp(with:)
  */
  @objc (keyUp:) func keyUp(with: NSEvent)

  /**
    - jsName: magnify
    - name: magnifyWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: magnify(with:)
    - Introduced: 10.5
  */
  @objc (magnifyWithEvent:) @available(OSX 10.5, *) func magnify(with: NSEvent)

  /**
    - jsName: makeTouchBar
    - name: makeTouchBar
    - argLabels: 
    - constructorTokens: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) func makeTouchBar() -> NSTouchBar?

  /**
    - jsName: mouseDown
    - name: mouseDown:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseDown(with:)
  */
  @objc (mouseDown:) func mouseDown(with: NSEvent)

  /**
    - jsName: mouseDragged
    - name: mouseDragged:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseDragged(with:)
  */
  @objc (mouseDragged:) func mouseDragged(with: NSEvent)

  /**
    - jsName: mouseEntered
    - name: mouseEntered:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseEntered(with:)
  */
  @objc (mouseEntered:) func mouseEntered(with: NSEvent)

  /**
    - jsName: mouseExited
    - name: mouseExited:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseExited(with:)
  */
  @objc (mouseExited:) func mouseExited(with: NSEvent)

  /**
    - jsName: mouseMoved
    - name: mouseMoved:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseMoved(with:)
  */
  @objc (mouseMoved:) func mouseMoved(with: NSEvent)

  /**
    - jsName: mouseUp
    - name: mouseUp:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseUp(with:)
  */
  @objc (mouseUp:) func mouseUp(with: NSEvent)

  /**
    - jsName: newWindowForTab
    - name: newWindowForTab:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) func newWindowForTab(_: Any?)

  /**
    - jsName: noResponder
    - name: noResponderFor:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: noResponder(for:)
  */
  @objc (noResponderFor:) func noResponder(`for`: Selector)

  /**
    - jsName: otherMouseDown
    - name: otherMouseDown:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: otherMouseDown(with:)
  */
  @objc (otherMouseDown:) func otherMouseDown(with: NSEvent)

  /**
    - jsName: otherMouseDragged
    - name: otherMouseDragged:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: otherMouseDragged(with:)
  */
  @objc (otherMouseDragged:) func otherMouseDragged(with: NSEvent)

  /**
    - jsName: otherMouseUp
    - name: otherMouseUp:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: otherMouseUp(with:)
  */
  @objc (otherMouseUp:) func otherMouseUp(with: NSEvent)

  /**
    - jsName: performKeyEquivalent
    - name: performKeyEquivalent:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: performKeyEquivalent(with:)
  */
  @objc (performKeyEquivalent:) func performKeyEquivalent(with: NSEvent) -> Bool

  /**
    - jsName: performTextFinderAction
    - name: performTextFinderAction:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func performTextFinderAction(_: Any?)

  /**
    - jsName: presentError
    - name: presentError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func presentError(_: Error) -> Bool

  /**
    - jsName: presentError
    - name: presentError:modalForWindow:delegate:didPresentSelector:contextInfo:
    - argLabels: _, modalFor, delegate, didPresent, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: presentError(_:modalFor:delegate:didPresent:contextInfo:)
  */
  @objc (presentError:modalForWindow:delegate:didPresentSelector:contextInfo:) func presentError(_: Error, modalFor: NSWindow, delegate: Any?, didPresent: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: pressureChange
    - name: pressureChangeWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.10.3
    - obsoleted: 3
    - renamed: pressureChange(with:)
    - Introduced: 10.10.3
  */
  @objc (pressureChangeWithEvent:) @available(OSX 10.10.3, *) func pressureChange(with: NSEvent)

  /**
    - jsName: quickLook
    - name: quickLookWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: quickLook(with:)
    - Introduced: 10.8
  */
  @objc (quickLookWithEvent:) @available(OSX 10.8, *) func quickLook(with: NSEvent)

  /**
    - jsName: resignFirstResponder
    - name: resignFirstResponder
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resignFirstResponder() -> Bool

  /**
    - jsName: restoreState
    - name: restoreStateWithCoder:
    - argLabels: with
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: restoreState(with:)
    - Introduced: 10.7
  */
  @objc (restoreStateWithCoder:) @available(OSX 10.7, *) func restoreState(with: NSCoder)

  /**
    - jsName: rightMouseDown
    - name: rightMouseDown:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rightMouseDown(with:)
  */
  @objc (rightMouseDown:) func rightMouseDown(with: NSEvent)

  /**
    - jsName: rightMouseDragged
    - name: rightMouseDragged:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rightMouseDragged(with:)
  */
  @objc (rightMouseDragged:) func rightMouseDragged(with: NSEvent)

  /**
    - jsName: rightMouseUp
    - name: rightMouseUp:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rightMouseUp(with:)
  */
  @objc (rightMouseUp:) func rightMouseUp(with: NSEvent)

  /**
    - jsName: rotate
    - name: rotateWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: rotate(with:)
    - Introduced: 10.5
  */
  @objc (rotateWithEvent:) @available(OSX 10.5, *) func rotate(with: NSEvent)

  /**
    - jsName: scrollWheel
    - name: scrollWheel:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scrollWheel(with:)
  */
  @objc (scrollWheel:) func scrollWheel(with: NSEvent)

  /**
    - jsName: shouldBeTreatedAsInkEvent
    - name: shouldBeTreatedAsInkEvent:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (shouldBeTreatedAsInkEvent:) func shouldBeTreatedAsInkEvent(_: NSEvent) -> Bool

  /**
    - jsName: showContextHelp
    - name: showContextHelp:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func showContextHelp(_: Any?)

  /**
    - jsName: smartMagnify
    - name: smartMagnifyWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: smartMagnify(with:)
    - Introduced: 10.8
  */
  @objc (smartMagnifyWithEvent:) @available(OSX 10.8, *) func smartMagnify(with: NSEvent)

  /**
    - jsName: supplementalTarget
    - name: supplementalTargetForAction:sender:
    - argLabels: forAction, sender
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: supplementalTarget(forAction:sender:)
    - Introduced: 10.7
  */
  @objc (supplementalTargetForAction:sender:) @available(OSX 10.7, *) func supplementalTarget(forAction: Selector, sender: Any?) -> Any?

  /**
    - jsName: swipe
    - name: swipeWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: swipe(with:)
    - Introduced: 10.5
  */
  @objc (swipeWithEvent:) @available(OSX 10.5, *) func swipe(with: NSEvent)

  /**
    - jsName: tabletPoint
    - name: tabletPoint:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tabletPoint(with:)
  */
  @objc (tabletPoint:) func tabletPoint(with: NSEvent)

  /**
    - jsName: tabletProximity
    - name: tabletProximity:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tabletProximity(with:)
  */
  @objc (tabletProximity:) func tabletProximity(with: NSEvent)

  /**
    - jsName: touchesBegan
    - name: touchesBeganWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: touchesBegan(with:)
    - Introduced: 10.6
  */
  @objc (touchesBeganWithEvent:) @available(OSX 10.6, *) func touchesBegan(with: NSEvent)

  /**
    - jsName: touchesCancelled
    - name: touchesCancelledWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: touchesCancelled(with:)
    - Introduced: 10.6
  */
  @objc (touchesCancelledWithEvent:) @available(OSX 10.6, *) func touchesCancelled(with: NSEvent)

  /**
    - jsName: touchesEnded
    - name: touchesEndedWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: touchesEnded(with:)
    - Introduced: 10.6
  */
  @objc (touchesEndedWithEvent:) @available(OSX 10.6, *) func touchesEnded(with: NSEvent)

  /**
    - jsName: touchesMoved
    - name: touchesMovedWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: touchesMoved(with:)
    - Introduced: 10.6
  */
  @objc (touchesMovedWithEvent:) @available(OSX 10.6, *) func touchesMoved(with: NSEvent)

  /**
    - jsName: tryToPerform
    - name: tryToPerform:with:
    - argLabels: _, with
    - constructorTokens: 
  */
  @objc (tryToPerform:with:) func tryToPerform(_: Selector, with: Any?) -> Bool

  /**
    - jsName: updateUserActivityState
    - name: updateUserActivityState:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func updateUserActivityState(_: NSUserActivity)

  /**
    - jsName: validRequestor
    - name: validRequestorForSendType:returnType:
    - argLabels: forSendType, returnType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: validRequestor(forSendType:returnType:)
  */
  @objc (validRequestorForSendType:returnType:) func validRequestor(forSendType: NSPasteboard.PasteboardType?, returnType: NSPasteboard.PasteboardType?) -> Any?

  /**
    - jsName: validateProposedFirstResponder
    - name: validateProposedFirstResponder:forEvent:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: validateProposedFirstResponder(_:for:)
    - Introduced: 10.7
  */
  @objc (validateProposedFirstResponder:forEvent:) @available(OSX 10.7, *) func validateProposedFirstResponder(_: NSResponder, `for`: NSEvent?) -> Bool

  /**
    - jsName: wantsForwardedScrollEvents
    - name: wantsForwardedScrollEventsForAxis:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: wantsForwardedScrollEvents(for:)
    - Introduced: 10.7
  */
  @objc (wantsForwardedScrollEventsForAxis:) @available(OSX 10.7, *) func wantsForwardedScrollEvents(`for`: NSEvent.GestureAxis) -> Bool

  /**
    - jsName: wantsScrollEventsForSwipeTracking
    - name: wantsScrollEventsForSwipeTrackingOnAxis:
    - argLabels: on
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: wantsScrollEventsForSwipeTracking(on:)
    - Introduced: 10.7
  */
  @objc (wantsScrollEventsForSwipeTrackingOnAxis:) @available(OSX 10.7, *) func wantsScrollEventsForSwipeTracking(on: NSEvent.GestureAxis) -> Bool

  /**
    - jsName: willPresentError
    - name: willPresentError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func willPresentError(_: Error) -> Error

  // Own Instance Properties

  /**
    - jsName: acceptsFirstResponder
    - name: acceptsFirstResponder
    - argLabels: 
  */
  @objc var acceptsFirstResponder: Bool { @objc get }

  /**
    - jsName: menu
    - name: menu
    - argLabels: 
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - jsName: nextResponder
    - name: nextResponder
    - argLabels: 
  */
  @objc var nextResponder: NSResponder? { @objc get @objc (setNextResponder:) set }

  /**
    - jsName: touchBar
    - name: touchBar
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var touchBar: NSTouchBar? { @objc get @objc (setTouchBar:) set }

  /**
    - jsName: undoManager
    - name: undoManager
    - argLabels: 
  */
  @objc var undoManager: UndoManager? { @objc get }

  /**
    - jsName: userActivity
    - name: userActivity
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var userActivity: NSUserActivity? { @objc get @objc (setUserActivity:) set }
}

extension NSResponder: NSResponderExports {
}
