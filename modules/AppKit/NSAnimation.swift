import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSAnimation
  */

@objc(NSAnimation) protocol NSAnimationExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addProgressMark:
  */
  @objc func addProgressMark(_: NSAnimation.Progress)

  /**
    - Selector: clearStartAnimation
  */
  @objc (clearStartAnimation) func clearStart()

  /**
    - Selector: clearStopAnimation
  */
  @objc (clearStopAnimation) func clearStop()

  /**
    - Selector: initWithDuration:animationCurve:
  */
  @objc static func createWithDuration(_: TimeInterval, animationCurve: NSAnimation.Curve) -> Self

  /**
    - Selector: removeProgressMark:
  */
  @objc func removeProgressMark(_: NSAnimation.Progress)

  /**
    - Selector: startAnimation
  */
  @objc (startAnimation) func start()

  /**
    - Selector: startWhenAnimation:reachesProgress:
  */
  @objc (startWhenAnimation:reachesProgress:) func start(when: NSAnimation, reachesProgress: NSAnimation.Progress)

  /**
    - Selector: stopAnimation
  */
  @objc (stopAnimation) func stop()

  /**
    - Selector: stopWhenAnimation:reachesProgress:
  */
  @objc (stopWhenAnimation:reachesProgress:) func stop(when: NSAnimation, reachesProgress: NSAnimation.Progress)

  // Own Instance Properties

  /**
    - Selector: animating
  */
  @objc var isAnimating: Bool { @objc get }

  /**
    - Selector: animationBlockingMode
  */
  @objc var animationBlockingMode: NSAnimation.BlockingMode { @objc get @objc (setAnimationBlockingMode:) set }

  /**
    - Selector: animationCurve
  */
  @objc var animationCurve: NSAnimation.Curve { @objc get @objc (setAnimationCurve:) set }

  /**
    - Selector: currentProgress
  */
  @objc var currentProgress: NSAnimation.Progress { @objc get @objc (setCurrentProgress:) set }

  /**
    - Selector: currentValue
  */
  @objc var currentValue: Float { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSAnimationDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: duration
  */
  @objc var duration: TimeInterval { @objc get @objc (setDuration:) set }

  /**
    - Selector: frameRate
  */
  @objc var frameRate: Float { @objc get @objc (setFrameRate:) set }

  /**
    - Selector: progressMarks
  */
  @objc var progressMarks: [NSNumber] { @objc get @objc (setProgressMarks:) set }

  /**
    - Selector: runLoopModesForAnimating
  */
  @objc var runLoopModesForAnimating: [RunLoop.Mode]? { @objc get }
}

extension NSAnimation: NSAnimationExports {
  @objc public static func createWithDuration(_ duration: TimeInterval, animationCurve: NSAnimation.Curve) -> Self {
    return self.init(duration: duration, animationCurve: animationCurve)
  }

}
