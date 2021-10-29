import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGestureRecognizer
    - name: NSGestureRecognizer
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSGestureRecognizer) protocol NSGestureRecognizerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: canBePrevented
    - name: canBePreventedByGestureRecognizer:
    - argLabels: by
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canBePrevented(by:)
  */
  @objc (canBePreventedByGestureRecognizer:) func canBePrevented(by: NSGestureRecognizer) -> Bool

  /**
    - jsName: canPrevent
    - name: canPreventGestureRecognizer:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canPrevent(_:)
  */
  @objc (canPreventGestureRecognizer:) func canPrevent(_: NSGestureRecognizer) -> Bool

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
    - jsName: createWithTarget
    - name: initWithTarget:action:
    - argLabels: action
    - constructorTokens: target, action
  */
  @objc static func createWithTarget(_: Any?, action: Selector?) -> Self

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
    - jsName: location
    - name: locationInView:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: location(in:)
  */
  @objc (locationInView:) func location(in: NSView?) -> CGPoint

  /**
    - jsName: magnify
    - name: magnifyWithEvent:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: magnify(with:)
  */
  @objc (magnifyWithEvent:) func magnify(with: NSEvent)

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
    - jsName: mouseUp
    - name: mouseUp:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mouseUp(with:)
  */
  @objc (mouseUp:) func mouseUp(with: NSEvent)

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
    - jsName: reset
    - name: reset
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reset()

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
    - obsoleted: 3
    - renamed: rotate(with:)
  */
  @objc (rotateWithEvent:) func rotate(with: NSEvent)

  /**
    - jsName: shouldBeRequiredToFail
    - name: shouldBeRequiredToFailByGestureRecognizer:
    - argLabels: by
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldBeRequiredToFail(by:)
  */
  @objc (shouldBeRequiredToFailByGestureRecognizer:) func shouldBeRequiredToFail(by: NSGestureRecognizer) -> Bool

  /**
    - jsName: shouldRequireFailure
    - name: shouldRequireFailureOfGestureRecognizer:
    - argLabels: of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldRequireFailure(of:)
  */
  @objc (shouldRequireFailureOfGestureRecognizer:) func shouldRequireFailure(of: NSGestureRecognizer) -> Bool

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
    - jsName: touchesBegan
    - name: touchesBeganWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: touchesBegan(with:)
    - Introduced: 10.12.2
  */
  @objc (touchesBeganWithEvent:) @available(OSX 10.12.2, *) func touchesBegan(with: NSEvent)

  /**
    - jsName: touchesCancelled
    - name: touchesCancelledWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: touchesCancelled(with:)
    - Introduced: 10.12.2
  */
  @objc (touchesCancelledWithEvent:) @available(OSX 10.12.2, *) func touchesCancelled(with: NSEvent)

  /**
    - jsName: touchesEnded
    - name: touchesEndedWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: touchesEnded(with:)
    - Introduced: 10.12.2
  */
  @objc (touchesEndedWithEvent:) @available(OSX 10.12.2, *) func touchesEnded(with: NSEvent)

  /**
    - jsName: touchesMoved
    - name: touchesMovedWithEvent:
    - argLabels: with
    - constructorTokens: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: touchesMoved(with:)
    - Introduced: 10.12.2
  */
  @objc (touchesMovedWithEvent:) @available(OSX 10.12.2, *) func touchesMoved(with: NSEvent)

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: allowedTouchTypes
    - name: allowedTouchTypes
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowedTouchTypes: NSTouch.TouchTypeMask { @objc get @objc (setAllowedTouchTypes:) set }

  /**
    - jsName: delaysKeyEvents
    - name: delaysKeyEvents
    - argLabels: 
  */
  @objc var delaysKeyEvents: Bool { @objc get @objc (setDelaysKeyEvents:) set }

  /**
    - jsName: delaysMagnificationEvents
    - name: delaysMagnificationEvents
    - argLabels: 
  */
  @objc var delaysMagnificationEvents: Bool { @objc get @objc (setDelaysMagnificationEvents:) set }

  /**
    - jsName: delaysOtherMouseButtonEvents
    - name: delaysOtherMouseButtonEvents
    - argLabels: 
  */
  @objc var delaysOtherMouseButtonEvents: Bool { @objc get @objc (setDelaysOtherMouseButtonEvents:) set }

  /**
    - jsName: delaysPrimaryMouseButtonEvents
    - name: delaysPrimaryMouseButtonEvents
    - argLabels: 
  */
  @objc var delaysPrimaryMouseButtonEvents: Bool { @objc get @objc (setDelaysPrimaryMouseButtonEvents:) set }

  /**
    - jsName: delaysRotationEvents
    - name: delaysRotationEvents
    - argLabels: 
  */
  @objc var delaysRotationEvents: Bool { @objc get @objc (setDelaysRotationEvents:) set }

  /**
    - jsName: delaysSecondaryMouseButtonEvents
    - name: delaysSecondaryMouseButtonEvents
    - argLabels: 
  */
  @objc var delaysSecondaryMouseButtonEvents: Bool { @objc get @objc (setDelaysSecondaryMouseButtonEvents:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSGestureRecognizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - jsName: pressureConfiguration
    - name: pressureConfiguration
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var pressureConfiguration: NSPressureConfiguration { @objc get @objc (setPressureConfiguration:) set }

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: NSGestureRecognizer.State { @objc get @objc (setState:) set }

  /**
    - jsName: target
    - name: target
    - argLabels: 
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView? { @objc get }
}

extension NSGestureRecognizer: NSGestureRecognizerExports {
  @objc public static func createWithTarget(_ target: Any?, action: Selector?) -> Self {
    return self.init(target: target, action: action)
  }

}
