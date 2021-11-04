import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUserActivity
    - Introduced: 10.10
  */

@objc(NSUserActivity) protocol NSUserActivityExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addUserInfoEntriesFromDictionary:
  */
  @objc (addUserInfoEntriesFromDictionary:) func addUserInfoEntries(from: [AnyHashable: Any])

  /**
    - Selector: becomeCurrent
  */
  @objc func becomeCurrent()

  /**
    - Selector: getContinuationStreamsWithCompletionHandler:
  */
  // jsvalue @objc func getContinuationStreams(completionHandler: JSValue)

  /**
    - Selector: initWithActivityType:
  */
  @objc static func createWithActivityType(_: String) -> Self

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  /**
    - Selector: resignCurrent
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func resignCurrent()

  // Own Instance Properties

  /**
    - Selector: activityType
  */
  @objc var activityType: String { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSUserActivityDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: detectedBarcodeDescriptor
    - Introduced: 10.13.4
  */
  @objc @available(OSX 10.13.4, *) var detectedBarcodeDescriptor: CIBarcodeDescriptor? { @objc get }

  /**
    - Selector: eligibleForHandoff
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isEligibleForHandoff: Bool { @objc get @objc (setEligibleForHandoff:) set }

  /**
    - Selector: eligibleForPublicIndexing
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isEligibleForPublicIndexing: Bool { @objc get @objc (setEligibleForPublicIndexing:) set }

  /**
    - Selector: eligibleForSearch
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isEligibleForSearch: Bool { @objc get @objc (setEligibleForSearch:) set }

  /**
    - Selector: expirationDate
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var expirationDate: Date? { @objc get @objc (setExpirationDate:) set }

  /**
    - Selector: keywords
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var keywords: Set<String> { @objc get @objc (setKeywords:) set }

  /**
    - Selector: needsSave
  */
  @objc var needsSave: Bool { @objc get @objc (setNeedsSave:) set }

  /**
    - Selector: referrerURL
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var referrerURL: URL? { @objc get @objc (setReferrerURL:) set }

  /**
    - Selector: requiredUserInfoKeys
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var requiredUserInfoKeys: Set<String>? { @objc get @objc (setRequiredUserInfoKeys:) set }

  /**
    - Selector: supportsContinuationStreams
  */
  @objc var supportsContinuationStreams: Bool { @objc get @objc (setSupportsContinuationStreams:) set }

  /**
    - Selector: targetContentIdentifier
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var targetContentIdentifier: String? { @objc get @objc (setTargetContentIdentifier:) set }

  /**
    - Selector: title
  */
  @objc var title: String? { @objc get @objc (setTitle:) set }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get @objc (setUserInfo:) set }

  /**
    - Selector: webpageURL
  */
  @objc var webpageURL: URL? { @objc get @objc (setWebpageURL:) set }
}

extension NSUserActivity: NSUserActivityExports {
  @objc public static func createWithActivityType(_ activityType: String) -> Self {
    return self.init(activityType: activityType)
  }

}
