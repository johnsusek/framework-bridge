import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSMetadataQuery
    - name: NSMetadataQuery
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSMetadataQuery) protocol NSMetadataQueryExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: disableUpdates
    - name: disableUpdates
    - argLabels: 
    - constructorTokens: 
  */
  @objc func disableUpdates()

  /**
    - jsName: enableUpdates
    - name: enableUpdates
    - argLabels: 
    - constructorTokens: 
  */
  @objc func enableUpdates()

  /**
    - jsName: enumerateResults
    - name: enumerateResultsUsingBlock:
    - argLabels: _
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: enumerateResults(_:)
    - Introduced: 10.9
  */
  // jsvalue - @objc (enumerateResultsUsingBlock:) @available(OSX 10.9, *) func enumerateResults(_: JSValue)

  /**
    - jsName: enumerateResults
    - name: enumerateResultsWithOptions:usingBlock:
    - argLabels: options, using
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: enumerateResults(options:using:)
    - Introduced: 10.9
  */
  // jsvalue - @objc (enumerateResultsWithOptions:usingBlock:) @available(OSX 10.9, *) func enumerateResults(options: NSEnumerationOptions, using: JSValue)

  /**
    - jsName: index
    - name: indexOfResult:
    - argLabels: ofResult
    - constructorTokens: 
    - obsoleted: 3
    - renamed: index(ofResult:)
  */
  @objc (indexOfResult:) func index(ofResult: Any) -> Int

  /**
    - jsName: result
    - name: resultAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: result(at:)
  */
  @objc (resultAtIndex:) func result(at: Int) -> Any

  /**
    - jsName: start
    - name: startQuery
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: start()
  */
  @objc (startQuery) func start() -> Bool

  /**
    - jsName: stop
    - name: stopQuery
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stop()
  */
  @objc (stopQuery) func stop()

  /**
    - jsName: value
    - name: valueOfAttribute:forResultAtIndex:
    - argLabels: ofAttribute, forResultAt
    - constructorTokens: 
    - obsoleted: 3
    - renamed: value(ofAttribute:forResultAt:)
  */
  @objc (valueOfAttribute:forResultAtIndex:) func value(ofAttribute: String, forResultAt: Int) -> Any?

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSMetadataQueryDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: isGathering
    - name: gathering
    - argLabels: 
    - obsoleted: 3
    - renamed: isGathering
  */
  @objc var isGathering: Bool { @objc get }

  /**
    - jsName: groupedResults
    - name: groupedResults
    - argLabels: 
  */
  @objc var groupedResults: [NSMetadataQueryResultGroup] { @objc get }

  /**
    - jsName: groupingAttributes
    - name: groupingAttributes
    - argLabels: 
  */
  @objc var groupingAttributes: [String]? { @objc get @objc (setGroupingAttributes:) set }

  /**
    - jsName: notificationBatchingInterval
    - name: notificationBatchingInterval
    - argLabels: 
  */
  @objc var notificationBatchingInterval: TimeInterval { @objc get @objc (setNotificationBatchingInterval:) set }

  /**
    - jsName: operationQueue
    - name: operationQueue
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var operationQueue: OperationQueue? { @objc get @objc (setOperationQueue:) set }

  /**
    - jsName: predicate
    - name: predicate
    - argLabels: 
  */
  @objc var predicate: NSPredicate? { @objc get @objc (setPredicate:) set }

  /**
    - jsName: resultCount
    - name: resultCount
    - argLabels: 
  */
  @objc var resultCount: Int { @objc get }

  /**
    - jsName: results
    - name: results
    - argLabels: 
  */
  @objc var results: [Any] { @objc get }

  /**
    - jsName: searchItems
    - name: searchItems
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var searchItems: [Any]? { @objc get @objc (setSearchItems:) set }

  /**
    - jsName: searchScopes
    - name: searchScopes
    - argLabels: 
  */
  @objc var searchScopes: [Any] { @objc get @objc (setSearchScopes:) set }

  /**
    - jsName: sortDescriptors
    - name: sortDescriptors
    - argLabels: 
  */
  @objc var sortDescriptors: [NSSortDescriptor] { @objc get @objc (setSortDescriptors:) set }

  /**
    - jsName: isStarted
    - name: started
    - argLabels: 
    - obsoleted: 3
    - renamed: isStarted
  */
  @objc var isStarted: Bool { @objc get }

  /**
    - jsName: isStopped
    - name: stopped
    - argLabels: 
    - obsoleted: 3
    - renamed: isStopped
  */
  @objc var isStopped: Bool { @objc get }

  /**
    - jsName: valueListAttributes
    - name: valueListAttributes
    - argLabels: 
  */
  @objc var valueListAttributes: [String] { @objc get @objc (setValueListAttributes:) set }

  /**
    - jsName: valueLists
    - name: valueLists
    - argLabels: 
  */
  @objc var valueLists: [String: [NSMetadataQueryAttributeValueTuple]] { @objc get }
}

extension NSMetadataQuery: NSMetadataQueryExports {
}
