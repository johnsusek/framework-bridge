import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSOperation
    - Introduced: 10.5
  */

@objc(Operation) protocol OperationExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addDependency:
  */
  @objc func addDependency(_: Operation)

  /**
    - Selector: cancel
  */
  @objc func cancel()

  /**
    - Selector: main
  */
  @objc func main()

  /**
    - Selector: removeDependency:
  */
  @objc func removeDependency(_: Operation)

  /**
    - Selector: start
  */
  @objc func start()

  /**
    - Selector: waitUntilFinished
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func waitUntilFinished()

  // Own Instance Properties

  /**
    - Selector: asynchronous
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isAsynchronous: Bool { @objc get }

  /**
    - Selector: cancelled
  */
  @objc var isCancelled: Bool { @objc get }

  /**
    - Selector: completionBlock
    - Introduced: 10.6
  */
// jsvalue   @objc @available(OSX 10.6, *) var completionBlock: JSValue? { @objc get @objc (setCompletionBlock:) set }

  /**
    - Selector: concurrent
  */
  @objc var isConcurrent: Bool { @objc get }

  /**
    - Selector: dependencies
  */
  @objc var dependencies: [Operation] { @objc get }

  /**
    - Selector: executing
  */
  @objc var isExecuting: Bool { @objc get }

  /**
    - Selector: finished
  */
  @objc var isFinished: Bool { @objc get }

  /**
    - Selector: name
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var name: String? { @objc get @objc (setName:) set }

  /**
    - Selector: qualityOfService
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - Selector: queuePriority
  */
  @objc var queuePriority: Operation.QueuePriority { @objc get @objc (setQueuePriority:) set }

  /**
    - Selector: ready
  */
  @objc var isReady: Bool { @objc get }
}

extension Operation: OperationExports {
}
