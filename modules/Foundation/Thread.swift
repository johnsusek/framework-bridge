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
    - Selector: NSThread
  */

@objc(Thread) protocol ThreadExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: detachNewThreadSelector:toTarget:withObject:
  */
  @objc (detachNewThreadSelector:toTarget:withObject:) static func detachNewThreadSelector(_ p0: Selector, toTarget: Any, with: Any?)

  /**
    - Selector: detachNewThreadWithBlock:
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) static func detachNewThread(_ p0: JSValue)

  /**
    - Selector: exit
  */
  @objc static func exit()

  /**
    - Selector: isMultiThreaded
  */
  @objc static func isMultiThreaded() -> Bool

  /**
    - Selector: setThreadPriority:
  */
  @objc static func setThreadPriority(_ p0: Double) -> Bool

  /**
    - Selector: sleepForTimeInterval:
  */
  @objc (sleepForTimeInterval:) static func sleep(forTimeInterval: TimeInterval)

  /**
    - Selector: sleepUntilDate:
  */
  @objc (sleepUntilDate:) static func sleep(until: Date)

  // Own Static Properties

  /**
    - Selector: callStackReturnAddresses
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var callStackReturnAddresses: [NSNumber] { @objc get }

  /**
    - Selector: callStackSymbols
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var callStackSymbols: [String] { @objc get }

  /**
    - Selector: currentThread
  */
  @objc static var current: Thread { @objc (currentThread) get }

  /**
    - Selector: isMainThread
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var isMainThread: Bool { @objc get }

  /**
    - Selector: mainThread
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var main: Thread { @objc (mainThread) get }

  // Instance Methods

  /**
    - Selector: cancel
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func cancel()

  /**
    - Selector: main
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func main()

  /**
    - Selector: start
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func start()

  // Own Instance Properties

  /**
    - Selector: cancelled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isCancelled: Bool { @objc get }

  /**
    - Selector: executing
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isExecuting: Bool { @objc get }

  /**
    - Selector: finished
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isFinished: Bool { @objc get }

  /**
    - Selector: isMainThread
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isMainThread: Bool { @objc get }

  /**
    - Selector: name
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var name: String? { @objc get @objc (setName:) set }

  /**
    - Selector: qualityOfService
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - Selector: stackSize
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var stackSize: Int { @objc get @objc (setStackSize:) set }

  /**
    - Selector: threadDictionary
  */
  @objc var threadDictionary: NSMutableDictionary { @objc get }

  /**
    - Selector: threadPriority
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var threadPriority: Double { @objc get @objc (setThreadPriority:) set }
}

extension Thread: ThreadExports {
}
