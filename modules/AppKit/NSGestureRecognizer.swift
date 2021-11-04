import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSGestureRecognizer
    - Introduced: 10.10
  */

@objc(NSGestureRecognizer) protocol NSGestureRecognizerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: canBePreventedByGestureRecognizer:
  */
  @objc (canBePreventedByGestureRecognizer:) func canBePrevented(by: NSGestureRecognizer) -> Bool

  /**
    - Selector: canPreventGestureRecognizer:
  */
  @objc (canPreventGestureRecognizer:) func canPrevent(_: NSGestureRecognizer) -> Bool

  /**
    - Selector: flagsChanged:
  */
  @objc (flagsChanged:) func flagsChanged(with: NSEvent)

  /**
    - Selector: initWithTarget:action:
  */
  @objc static func createWithTarget(_: Any?, action: Selector?) -> Self

  /**
    - Selector: keyDown:
  */
  @objc (keyDown:) func keyDown(with: NSEvent)

  /**
    - Selector: keyUp:
  */
  @objc (keyUp:) func keyUp(with: NSEvent)

  /**
    - Selector: locationInView:
  */
  @objc (locationInView:) func location(in: NSView?) -> CGPoint

  /**
    - Selector: magnifyWithEvent:
  */
  @objc (magnifyWithEvent:) func magnify(with: NSEvent)

  /**
    - Selector: mouseDown:
  */
  @objc (mouseDown:) func mouseDown(with: NSEvent)

  /**
    - Selector: mouseDragged:
  */
  @objc (mouseDragged:) func mouseDragged(with: NSEvent)

  /**
    - Selector: mouseUp:
  */
  @objc (mouseUp:) func mouseUp(with: NSEvent)

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
    - Selector: pressureChangeWithEvent:
    - Introduced: 10.10.3
  */
  @objc (pressureChangeWithEvent:) @available(OSX 10.10.3, *) func pressureChange(with: NSEvent)

  /**
    - Selector: reset
  */
  @objc func reset()

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
  */
  @objc (rotateWithEvent:) func rotate(with: NSEvent)

  /**
    - Selector: shouldBeRequiredToFailByGestureRecognizer:
  */
  @objc (shouldBeRequiredToFailByGestureRecognizer:) func shouldBeRequiredToFail(by: NSGestureRecognizer) -> Bool

  /**
    - Selector: shouldRequireFailureOfGestureRecognizer:
  */
  @objc (shouldRequireFailureOfGestureRecognizer:) func shouldRequireFailure(of: NSGestureRecognizer) -> Bool

  /**
    - Selector: tabletPoint:
  */
  @objc (tabletPoint:) func tabletPoint(with: NSEvent)

  /**
    - Selector: touchesBeganWithEvent:
    - Introduced: 10.12.2
  */
  @objc (touchesBeganWithEvent:) @available(OSX 10.12.2, *) func touchesBegan(with: NSEvent)

  /**
    - Selector: touchesCancelledWithEvent:
    - Introduced: 10.12.2
  */
  @objc (touchesCancelledWithEvent:) @available(OSX 10.12.2, *) func touchesCancelled(with: NSEvent)

  /**
    - Selector: touchesEndedWithEvent:
    - Introduced: 10.12.2
  */
  @objc (touchesEndedWithEvent:) @available(OSX 10.12.2, *) func touchesEnded(with: NSEvent)

  /**
    - Selector: touchesMovedWithEvent:
    - Introduced: 10.12.2
  */
  @objc (touchesMovedWithEvent:) @available(OSX 10.12.2, *) func touchesMoved(with: NSEvent)

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: allowedTouchTypes
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowedTouchTypes: NSTouch.TouchTypeMask { @objc get @objc (setAllowedTouchTypes:) set }

  /**
    - Selector: delaysKeyEvents
  */
  @objc var delaysKeyEvents: Bool { @objc get @objc (setDelaysKeyEvents:) set }

  /**
    - Selector: delaysMagnificationEvents
  */
  @objc var delaysMagnificationEvents: Bool { @objc get @objc (setDelaysMagnificationEvents:) set }

  /**
    - Selector: delaysOtherMouseButtonEvents
  */
  @objc var delaysOtherMouseButtonEvents: Bool { @objc get @objc (setDelaysOtherMouseButtonEvents:) set }

  /**
    - Selector: delaysPrimaryMouseButtonEvents
  */
  @objc var delaysPrimaryMouseButtonEvents: Bool { @objc get @objc (setDelaysPrimaryMouseButtonEvents:) set }

  /**
    - Selector: delaysRotationEvents
  */
  @objc var delaysRotationEvents: Bool { @objc get @objc (setDelaysRotationEvents:) set }

  /**
    - Selector: delaysSecondaryMouseButtonEvents
  */
  @objc var delaysSecondaryMouseButtonEvents: Bool { @objc get @objc (setDelaysSecondaryMouseButtonEvents:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSGestureRecognizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: pressureConfiguration
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var pressureConfiguration: NSPressureConfiguration { @objc get @objc (setPressureConfiguration:) set }

  /**
    - Selector: state
  */
  @objc var state: NSGestureRecognizer.State { @objc get @objc (setState:) set }

  /**
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - Selector: view
  */
  @objc var view: NSView? { @objc get }
}

extension NSGestureRecognizer: NSGestureRecognizerExports {
  @objc public static func createWithTarget(_ target: Any?, action: Selector?) -> Self {
    return self.init(target: target, action: action)
  }

}
