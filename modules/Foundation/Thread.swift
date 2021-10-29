import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Thread
    - name: NSThread
    - argLabels: 
  */

@objc(Thread) protocol ThreadExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: detachNewThreadSelector
    - name: detachNewThreadSelector:toTarget:withObject:
    - argLabels: _, toTarget, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: detachNewThreadSelector(_:toTarget:with:)
  */
  @objc (detachNewThreadSelector:toTarget:withObject:) static func detachNewThreadSelector(_: Selector, toTarget: Any, with: Any?)

  /**
    - jsName: detachNewThread
    - name: detachNewThreadWithBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: detachNewThread(_:)
    - Introduced: 10.12
  */
  // jsvalue - @objc (detachNewThreadWithBlock:) @available(OSX 10.12, *) static func detachNewThread(_: JSValue)

  /**
    - jsName: exit
    - name: exit
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func exit()

  /**
    - jsName: isMultiThreaded
    - name: isMultiThreaded
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func isMultiThreaded() -> Bool

  /**
    - jsName: setThreadPriority
    - name: setThreadPriority:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func setThreadPriority(_: Double) -> Bool

  /**
    - jsName: sleep
    - name: sleepForTimeInterval:
    - argLabels: forTimeInterval
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sleep(forTimeInterval:)
  */
  @objc (sleepForTimeInterval:) static func sleep(forTimeInterval: TimeInterval)

  /**
    - jsName: sleep
    - name: sleepUntilDate:
    - argLabels: until
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sleep(until:)
  */
  @objc (sleepUntilDate:) static func sleep(until: Date)

  // Own Static Properties

  /**
    - jsName: callStackReturnAddresses
    - name: callStackReturnAddresses
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var callStackReturnAddresses: [NSNumber] { @objc get }

  /**
    - jsName: callStackSymbols
    - name: callStackSymbols
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var callStackSymbols: [String] { @objc get }

  /**
    - jsName: current
    - name: currentThread
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: Thread { @objc (currentThread) get }

  /**
    - jsName: isMainThread
    - name: isMainThread
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var isMainThread: Bool { @objc get }

  /**
    - jsName: main
    - name: mainThread
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: main
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var main: Thread { @objc (mainThread) get }

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancel
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func cancel()

  /**
    - jsName: createWithTarget
    - name: initWithTarget:selector:object:
    - argLabels: selector, object
    - constructorTokens: target, selector, object
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func createWithTarget(_: Any, selector: Selector, object: Any?) -> Self

  /**
    - jsName: main
    - name: main
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func main()

  /**
    - jsName: start
    - name: start
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func start()

  // Own Instance Properties

  /**
    - jsName: isCancelled
    - name: cancelled
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isCancelled
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isCancelled: Bool { @objc get }

  /**
    - jsName: isExecuting
    - name: executing
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isExecuting
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isExecuting: Bool { @objc get }

  /**
    - jsName: isFinished
    - name: finished
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isFinished
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isFinished: Bool { @objc get }

  /**
    - jsName: isMainThread
    - name: isMainThread
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isMainThread: Bool { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var name: String? { @objc get @objc (setName:) set }

  /**
    - jsName: qualityOfService
    - name: qualityOfService
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - jsName: stackSize
    - name: stackSize
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var stackSize: Int { @objc get @objc (setStackSize:) set }

  /**
    - jsName: threadDictionary
    - name: threadDictionary
    - argLabels: 
  */
  @objc var threadDictionary: NSMutableDictionary { @objc get }

  /**
    - jsName: threadPriority
    - name: threadPriority
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var threadPriority: Double { @objc get @objc (setThreadPriority:) set }
}

extension Thread: ThreadExports {
  @objc public static func createWithTarget(_ target: Any, selector: Selector, object: Any?) -> Self {
    return self.init(target: target, selector: selector, object: object)
  }

}
