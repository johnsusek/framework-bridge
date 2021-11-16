import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSTimer
  */

@objc(Timer) protocol TimerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: scheduledTimerWithTimeInterval:repeats:block:
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) static func scheduledTimerWithTimeIntervalWithRepeatsWithBlock(withTimeInterval: TimeInterval, repeats: Bool, block: JSValue) -> Timer

  /**
    - Selector: scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:
  */
  @objc (scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:) static func scheduledTimer(timeInterval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Timer

  /**
    - Selector: timerWithTimeInterval:repeats:block:
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) static func createWithTimeIntervalWithRepeatsWithBlock(_ timeInterval: TimeInterval, _ repeats: Bool, _ block: JSValue) -> Timer

  /**
    - Selector: timerWithTimeInterval:target:selector:userInfo:repeats:
  */
  @objc static func createWithTimeIntervalWithTargetWithSelectorWithUserInfoWithRepeats(_ timeInterval: TimeInterval, _ target: Any, _ selector: Selector, _ userInfo: Any?, _ repeats: Bool) -> Timer

  // Instance Methods

  /**
    - Selector: fire
  */
  @objc func fire()

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  // Own Instance Properties

  /**
    - Selector: fireDate
  */
  @objc var fireDate: Date { @objc get @objc (setFireDate:) set }

  /**
    - Selector: timeInterval
  */
  @objc var timeInterval: TimeInterval { @objc get }

  /**
    - Selector: tolerance
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var tolerance: TimeInterval { @objc get @objc (setTolerance:) set }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: Any? { @objc get }

  /**
    - Selector: valid
  */
  @objc var isValid: Bool { @objc get }
}

extension Timer: TimerExports {

  /**
    - Selector: timerWithTimeInterval:repeats:block:
    - Introduced: 10.12
  */
  @objc public static func createWithTimeIntervalWithRepeatsWithBlock(_ timeInterval: TimeInterval, _ repeats: Bool, _ block: JSValue) -> Timer {
    return self.init(timeInterval: timeInterval, repeats: repeats, block: { p1 in
      block.call(withArguments: [p1 as AnyObject])
    })
  }


  /**
    - Selector: timerWithTimeInterval:target:selector:userInfo:repeats:
  */
  @objc public static func createWithTimeIntervalWithTargetWithSelectorWithUserInfoWithRepeats(_ timeInterval: TimeInterval, _ target: Any, _ selector: Selector, _ userInfo: Any?, _ repeats: Bool) -> Timer {
    return self.init(timeInterval: timeInterval, target: target, selector: selector, userInfo: userInfo, repeats: repeats)
  }

}
