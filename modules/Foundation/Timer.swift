import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
// jsvalue   @objc @available(OSX 10.12, *) static func scheduledTimer(withTimeInterval: TimeInterval, repeats: Bool, block: JSValue) -> Timer

  /**
    - Selector: scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:
  */
  @objc (scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:) static func scheduledTimer(timeInterval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Timer

  /**
    - Selector: timerWithTimeInterval:repeats:block:
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) static func create(timeInterval: TimeInterval, repeats: Bool, block: JSValue) -> Timer

  /**
    - Selector: timerWithTimeInterval:target:selector:userInfo:repeats:
  */
  @objc static func create(timeInterval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Timer

  // Instance Methods

  /**
    - Selector: fire
  */
  @objc func fire()

  /**
    - Selector: initWithFireDate:interval:repeats:block:
    - Introduced: 10.12
  */
  // jsvalue @objc @available(OSX 10.12, *) static func createWithFireDate(_: Date, interval: TimeInterval, repeats: Bool, block: JSValue) -> Self

  /**
    - Selector: initWithFireDate:interval:target:selector:userInfo:repeats:
  */
  @objc static func createWithFireDate(_: Date, interval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Self

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
  @objc public static func create(timeInterval: TimeInterval, repeats: Bool, block: JSValue) -> Timer {
    return self.init(timeInterval: timeInterval, repeats: repeats, block: { p1 in
      block.call(withArguments: [p1 as AnyObject])!
    })
  }

  @objc public static func create(timeInterval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Timer {
    return self.init(timeInterval: timeInterval, target: target, selector: selector, userInfo: userInfo, repeats: repeats)
  }

  @objc public static func createWithFireDate(_ fireDate: Date, interval: TimeInterval, repeats: Bool, block: JSValue) -> Self {
    return self.init(fire: fireDate, interval: interval, repeats: repeats, block: { p1 in
      block.call(withArguments: [p1 as AnyObject])!
    })
  }

  @objc public static func createWithFireDate(_ fireDate: Date, interval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Self {
    return self.init(fireAt: fireDate, interval: interval, target: target, selector: selector, userInfo: userInfo, repeats: repeats)
  }

}
