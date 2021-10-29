import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSAnimation
    - name: NSAnimation
    - argLabels: 
  */

@objc(NSAnimation) protocol NSAnimationExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addProgressMark
    - name: addProgressMark:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addProgressMark(_: NSAnimation.Progress)

  /**
    - jsName: clearStart
    - name: clearStartAnimation
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: clearStart()
  */
  @objc (clearStartAnimation) func clearStart()

  /**
    - jsName: clearStop
    - name: clearStopAnimation
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: clearStop()
  */
  @objc (clearStopAnimation) func clearStop()

  /**
    - jsName: createWithDuration
    - name: initWithDuration:animationCurve:
    - argLabels: animationCurve
    - constructorTokens: duration, animationCurve
  */
  @objc static func createWithDuration(_: TimeInterval, animationCurve: NSAnimation.Curve) -> Self

  /**
    - jsName: removeProgressMark
    - name: removeProgressMark:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeProgressMark(_: NSAnimation.Progress)

  /**
    - jsName: start
    - name: startAnimation
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: start()
  */
  @objc (startAnimation) func start()

  /**
    - jsName: start
    - name: startWhenAnimation:reachesProgress:
    - argLabels: when, reachesProgress
    - constructorTokens: 
    - obsoleted: 3
    - renamed: start(when:reachesProgress:)
  */
  @objc (startWhenAnimation:reachesProgress:) func start(when: NSAnimation, reachesProgress: NSAnimation.Progress)

  /**
    - jsName: stop
    - name: stopAnimation
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stop()
  */
  @objc (stopAnimation) func stop()

  /**
    - jsName: stop
    - name: stopWhenAnimation:reachesProgress:
    - argLabels: when, reachesProgress
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stop(when:reachesProgress:)
  */
  @objc (stopWhenAnimation:reachesProgress:) func stop(when: NSAnimation, reachesProgress: NSAnimation.Progress)

  // Own Instance Properties

  /**
    - jsName: isAnimating
    - name: animating
    - argLabels: 
    - obsoleted: 3
    - renamed: isAnimating
  */
  @objc var isAnimating: Bool { @objc get }

  /**
    - jsName: animationBlockingMode
    - name: animationBlockingMode
    - argLabels: 
  */
  @objc var animationBlockingMode: NSAnimation.BlockingMode { @objc get @objc (setAnimationBlockingMode:) set }

  /**
    - jsName: animationCurve
    - name: animationCurve
    - argLabels: 
  */
  @objc var animationCurve: NSAnimation.Curve { @objc get @objc (setAnimationCurve:) set }

  /**
    - jsName: currentProgress
    - name: currentProgress
    - argLabels: 
  */
  @objc var currentProgress: NSAnimation.Progress { @objc get @objc (setCurrentProgress:) set }

  /**
    - jsName: currentValue
    - name: currentValue
    - argLabels: 
  */
  @objc var currentValue: Float { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSAnimationDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: duration
    - name: duration
    - argLabels: 
  */
  @objc var duration: TimeInterval { @objc get @objc (setDuration:) set }

  /**
    - jsName: frameRate
    - name: frameRate
    - argLabels: 
  */
  @objc var frameRate: Float { @objc get @objc (setFrameRate:) set }

  /**
    - jsName: progressMarks
    - name: progressMarks
    - argLabels: 
  */
  @objc var progressMarks: [NSNumber] { @objc get @objc (setProgressMarks:) set }

  /**
    - jsName: runLoopModesForAnimating
    - name: runLoopModesForAnimating
    - argLabels: 
  */
  @objc var runLoopModesForAnimating: [RunLoop.Mode]? { @objc get }
}

extension NSAnimation: NSAnimationExports {
  @objc public static func createWithDuration(_ duration: TimeInterval, animationCurve: NSAnimation.Curve) -> Self {
    return self.init(duration: duration, animationCurve: animationCurve)
  }

}
