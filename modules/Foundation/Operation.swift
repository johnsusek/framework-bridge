import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Operation
    - name: NSOperation
    - argLabels: 
    - Introduced: 10.5
  */

@objc(Operation) protocol OperationExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addDependency
    - name: addDependency:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addDependency(_: Operation)

  /**
    - jsName: cancel
    - name: cancel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancel()

  /**
    - jsName: main
    - name: main
    - argLabels: 
    - constructorTokens: 
  */
  @objc func main()

  /**
    - jsName: removeDependency
    - name: removeDependency:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeDependency(_: Operation)

  /**
    - jsName: start
    - name: start
    - argLabels: 
    - constructorTokens: 
  */
  @objc func start()

  /**
    - jsName: waitUntilFinished
    - name: waitUntilFinished
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func waitUntilFinished()

  // Own Instance Properties

  /**
    - jsName: isAsynchronous
    - name: asynchronous
    - argLabels: 
    - available: 10.8
    - obsoleted: 3
    - renamed: isAsynchronous
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isAsynchronous: Bool { @objc get }

  /**
    - jsName: isCancelled
    - name: cancelled
    - argLabels: 
    - obsoleted: 3
    - renamed: isCancelled
  */
  @objc var isCancelled: Bool { @objc get }

  /**
    - jsName: completionBlock
    - name: completionBlock
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
// jsvalue   @objc @available(OSX 10.6, *) var completionBlock: JSValue? { @objc get @objc (setCompletionBlock:) set }

  /**
    - jsName: isConcurrent
    - name: concurrent
    - argLabels: 
    - obsoleted: 3
    - renamed: isConcurrent
  */
  @objc var isConcurrent: Bool { @objc get }

  /**
    - jsName: dependencies
    - name: dependencies
    - argLabels: 
  */
  @objc var dependencies: [Operation] { @objc get }

  /**
    - jsName: isExecuting
    - name: executing
    - argLabels: 
    - obsoleted: 3
    - renamed: isExecuting
  */
  @objc var isExecuting: Bool { @objc get }

  /**
    - jsName: isFinished
    - name: finished
    - argLabels: 
    - obsoleted: 3
    - renamed: isFinished
  */
  @objc var isFinished: Bool { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var name: String? { @objc get @objc (setName:) set }

  /**
    - jsName: qualityOfService
    - name: qualityOfService
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - jsName: queuePriority
    - name: queuePriority
    - argLabels: 
  */
  @objc var queuePriority: Operation.QueuePriority { @objc get @objc (setQueuePriority:) set }

  /**
    - jsName: isReady
    - name: ready
    - argLabels: 
    - obsoleted: 3
    - renamed: isReady
  */
  @objc var isReady: Bool { @objc get }
}

extension Operation: OperationExports {
}
