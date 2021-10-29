import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: OperationQueue
    - name: NSOperationQueue
    - argLabels: 
    - Introduced: 10.5
  */

@objc(OperationQueue) protocol OperationQueueExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: current
    - name: currentQueue
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: current
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var current: OperationQueue? { @objc (currentQueue) get }

  /**
    - jsName: main
    - name: mainQueue
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: main
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var main: OperationQueue { @objc (mainQueue) get }

  // Instance Methods

  /**
    - jsName: addBarrierBlock
    - name: addBarrierBlock:
    - argLabels: 
    - constructorTokens: 
    - available: 10.15
    - Introduced: 10.15
  */
  // jsvalue - @objc @available(OSX 10.15, *) func addBarrierBlock(_: JSValue)

  /**
    - jsName: addOperation
    - name: addOperation:
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
  */
  @objc func addOperation(_: Operation)

  /**
    - jsName: addOperation
    - name: addOperationWithBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: addOperation(_:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (addOperationWithBlock:) @available(OSX 10.6, *) func addOperation(_: JSValue)

  /**
    - jsName: addOperations
    - name: addOperations:waitUntilFinished:
    - argLabels: waitUntilFinished
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func addOperations(_: [Operation], waitUntilFinished: Bool)

  /**
    - jsName: cancelAllOperations
    - name: cancelAllOperations
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancelAllOperations()

  /**
    - jsName: waitUntilAllOperationsAreFinished
    - name: waitUntilAllOperationsAreFinished
    - argLabels: 
    - constructorTokens: 
  */
  @objc func waitUntilAllOperationsAreFinished()

  // Own Instance Properties

  /**
    - jsName: maxConcurrentOperationCount
    - name: maxConcurrentOperationCount
    - argLabels: 
  */
  @objc var maxConcurrentOperationCount: Int { @objc get @objc (setMaxConcurrentOperationCount:) set }

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var name: String? { @objc get @objc (setName:) set }

  /**
    - jsName: operationCount
    - name: operationCount
    - argLabels: 
    - introduced: 10.6
    - deprecated: 100000
    - Introduced: 10.6
    - Deprecated: 100000
    - Replacement: progress.completedUnitCount
  */
  @objc @available(OSX 10.6, *) var operationCount: Int { @objc get }

  /**
    - jsName: operations
    - name: operations
    - argLabels: 
    - introduced: 10.5
    - deprecated: 100000
    - message: access to operations is inherently a race condition, it should not be used. For barrier style behaviors please use addBarrierBlock: instead
    - Introduced: 10.5
    - Deprecated: 100000
    - Message: access to operations is inherently a race condition, it should not be used. For barrier style behaviors please use addBarrierBlock: instead
  */
  @objc @available(OSX 10.5, *) var operations: [Operation] { @objc get }

  /**
    - jsName: qualityOfService
    - name: qualityOfService
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - jsName: isSuspended
    - name: suspended
    - argLabels: 
    - obsoleted: 3
    - renamed: isSuspended
  */
  @objc var isSuspended: Bool { @objc get @objc (setSuspended:) set }

  /**
    - jsName: underlyingQueue
    - name: underlyingQueue
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var underlyingQueue: DispatchQueue? { @objc get @objc (setUnderlyingQueue:) set }
}

extension OperationQueue: OperationQueueExports {
}
