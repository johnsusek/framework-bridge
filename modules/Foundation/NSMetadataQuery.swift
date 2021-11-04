import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSMetadataQuery
    - Introduced: 10.4
  */

@objc(NSMetadataQuery) protocol NSMetadataQueryExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: disableUpdates
  */
  @objc func disableUpdates()

  /**
    - Selector: enableUpdates
  */
  @objc func enableUpdates()

  /**
    - Selector: enumerateResultsUsingBlock:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func enumerateResults(_: JSValue)

  /**
    - Selector: enumerateResultsWithOptions:usingBlock:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func enumerateResults(options: NSEnumerationOptions, using: JSValue)

  /**
    - Selector: indexOfResult:
  */
  @objc (indexOfResult:) func index(ofResult: Any) -> Int

  /**
    - Selector: resultAtIndex:
  */
  @objc (resultAtIndex:) func result(at: Int) -> Any

  /**
    - Selector: startQuery
  */
  @objc (startQuery) func start() -> Bool

  /**
    - Selector: stopQuery
  */
  @objc (stopQuery) func stop()

  /**
    - Selector: valueOfAttribute:forResultAtIndex:
  */
  @objc (valueOfAttribute:forResultAtIndex:) func value(ofAttribute: String, forResultAt: Int) -> Any?

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSMetadataQueryDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: gathering
  */
  @objc var isGathering: Bool { @objc get }

  /**
    - Selector: groupedResults
  */
  @objc var groupedResults: [NSMetadataQueryResultGroup] { @objc get }

  /**
    - Selector: groupingAttributes
  */
  @objc var groupingAttributes: [String]? { @objc get @objc (setGroupingAttributes:) set }

  /**
    - Selector: notificationBatchingInterval
  */
  @objc var notificationBatchingInterval: TimeInterval { @objc get @objc (setNotificationBatchingInterval:) set }

  /**
    - Selector: operationQueue
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var operationQueue: OperationQueue? { @objc get @objc (setOperationQueue:) set }

  /**
    - Selector: predicate
  */
  @objc var predicate: NSPredicate? { @objc get @objc (setPredicate:) set }

  /**
    - Selector: resultCount
  */
  @objc var resultCount: Int { @objc get }

  /**
    - Selector: results
  */
  @objc var results: [Any] { @objc get }

  /**
    - Selector: searchItems
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var searchItems: [Any]? { @objc get @objc (setSearchItems:) set }

  /**
    - Selector: searchScopes
  */
  @objc var searchScopes: [Any] { @objc get @objc (setSearchScopes:) set }

  /**
    - Selector: sortDescriptors
  */
  @objc var sortDescriptors: [NSSortDescriptor] { @objc get @objc (setSortDescriptors:) set }

  /**
    - Selector: started
  */
  @objc var isStarted: Bool { @objc get }

  /**
    - Selector: stopped
  */
  @objc var isStopped: Bool { @objc get }

  /**
    - Selector: valueListAttributes
  */
  @objc var valueListAttributes: [String] { @objc get @objc (setValueListAttributes:) set }

  /**
    - Selector: valueLists
  */
  @objc var valueLists: [String: [NSMetadataQueryAttributeValueTuple]] { @objc get }
}

extension NSMetadataQuery: NSMetadataQueryExports {
}
