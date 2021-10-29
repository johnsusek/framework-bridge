import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Timer
    - name: NSTimer
    - argLabels: 
  */

@objc(Timer) protocol TimerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: scheduledTimer
    - name: scheduledTimerWithTimeInterval:repeats:block:
    - argLabels: withTimeInterval, repeats, block
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: scheduledTimer(withTimeInterval:repeats:block:)
    - Introduced: 10.12
  */
  // jsvalue - @objc (scheduledTimerWithTimeInterval:repeats:block:) @available(OSX 10.12, *) static func scheduledTimer(withTimeInterval: TimeInterval, repeats: Bool, block: JSValue) -> Timer

  /**
    - jsName: scheduledTimer
    - name: scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:
    - argLabels: timeInterval, target, selector, userInfo, repeats
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scheduledTimer(timeInterval:target:selector:userInfo:repeats:)
  */
  @objc (scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:) static func scheduledTimer(timeInterval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Timer

  /**
    - jsName: create
    - name: timerWithTimeInterval:repeats:block:
    - argLabels: timeInterval, repeats, block
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(timeInterval:repeats:block:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(timeInterval: TimeInterval, repeats: Bool, block: JSValue) -> Timer

  /**
    - jsName: create
    - name: timerWithTimeInterval:target:selector:userInfo:repeats:
    - argLabels: timeInterval, target, selector, userInfo, repeats
    - constructorTokens: 
    - unavailable: true
    - renamed: init(timeInterval:target:selector:userInfo:repeats:)
    - message: Not available in Swift
  */
  @objc static func create(timeInterval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Timer

  // Instance Methods

  /**
    - jsName: fire
    - name: fire
    - argLabels: 
    - constructorTokens: 
  */
  @objc func fire()

  /**
    - jsName: createWithFireDate
    - name: initWithFireDate:interval:repeats:block:
    - argLabels: interval, repeats, block
    - constructorTokens: fireDate, interval, repeats, block
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithFireDate(_: Date, interval: TimeInterval, repeats: Bool, block: JSValue) -> Self

  /**
    - jsName: createWithFireDate
    - name: initWithFireDate:interval:target:selector:userInfo:repeats:
    - argLabels: interval, target, selector, userInfo, repeats
    - constructorTokens: fireDate, interval, target, selector, userInfo, repeats
  */
  @objc static func createWithFireDate(_: Date, interval: TimeInterval, target: Any, selector: Selector, userInfo: Any?, repeats: Bool) -> Self

  /**
    - jsName: invalidate
    - name: invalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidate()

  // Own Instance Properties

  /**
    - jsName: fireDate
    - name: fireDate
    - argLabels: 
  */
  @objc var fireDate: Date { @objc get @objc (setFireDate:) set }

  /**
    - jsName: timeInterval
    - name: timeInterval
    - argLabels: 
  */
  @objc var timeInterval: TimeInterval { @objc get }

  /**
    - jsName: tolerance
    - name: tolerance
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var tolerance: TimeInterval { @objc get @objc (setTolerance:) set }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: Any? { @objc get }

  /**
    - jsName: isValid
    - name: valid
    - argLabels: 
    - obsoleted: 3
    - renamed: isValid
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
