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
    - Selector: NSOperationQueue
    - Introduced: 10.5
  */

@objc(OperationQueue) protocol OperationQueueExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: currentQueue
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var current: OperationQueue? { @objc (currentQueue) get }

  /**
    - Selector: mainQueue
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var main: OperationQueue { @objc (mainQueue) get }

  // Instance Methods

  /**
    - Selector: addBarrierBlock:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func addBarrierBlock(_ p0: JSValue)

  /**
    - Selector: addOperation:
  */
  @objc func addOperation(_ p0: Operation)

  /**
    - Selector: addOperationWithBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func addOperation(_ p0: JSValue)

  /**
    - Selector: addOperations:waitUntilFinished:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func addOperations(_ p0: [Operation], waitUntilFinished: Bool)

  /**
    - Selector: cancelAllOperations
  */
  @objc func cancelAllOperations()

  /**
    - Selector: waitUntilAllOperationsAreFinished
  */
  @objc func waitUntilAllOperationsAreFinished()

  // Own Instance Properties

  /**
    - Selector: maxConcurrentOperationCount
  */
  @objc var maxConcurrentOperationCount: Int { @objc get @objc (setMaxConcurrentOperationCount:) set }

  /**
    - Selector: name
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var name: String? { @objc get @objc (setName:) set }

  /**
    - Selector: operationCount
    - Introduced: 10.6
    - Deprecated: 100000
    - Replacement: progress.completedUnitCount
  */
  @objc @available(OSX 10.6, *) var operationCount: Int { @objc get }

  /**
    - Selector: operations
    - Introduced: 10.5
    - Deprecated: 100000
    - Message: access to operations is inherently a race condition, it should not be used. For barrier style behaviors please use addBarrierBlock: instead
  */
  @objc @available(OSX 10.5, *) var operations: [Operation] { @objc get }

  /**
    - Selector: qualityOfService
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - Selector: suspended
  */
  @objc var isSuspended: Bool { @objc get @objc (setSuspended:) set }

  /**
    - Selector: underlyingQueue
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var underlyingQueue: DispatchQueue? { @objc get @objc (setUnderlyingQueue:) set }
}

extension OperationQueue: OperationQueueExports {
}
