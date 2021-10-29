import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserActivity
    - name: NSUserActivity
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSUserActivity) protocol NSUserActivityExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addUserInfoEntries
    - name: addUserInfoEntriesFromDictionary:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addUserInfoEntries(from:)
  */
  @objc (addUserInfoEntriesFromDictionary:) func addUserInfoEntries(from: [AnyHashable: Any])

  /**
    - jsName: becomeCurrent
    - name: becomeCurrent
    - argLabels: 
    - constructorTokens: 
  */
  @objc func becomeCurrent()

  /**
    - jsName: getContinuationStreams
    - name: getContinuationStreamsWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: getContinuationStreams(completionHandler:)
  */
  // jsvalue - @objc (getContinuationStreamsWithCompletionHandler:) func getContinuationStreams(completionHandler: JSValue)

  /**
    - jsName: createWithActivityType
    - name: initWithActivityType:
    - argLabels: 
    - constructorTokens: activityType
  */
  @objc static func createWithActivityType(_: String) -> Self

  /**
    - jsName: invalidate
    - name: invalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidate()

  /**
    - jsName: resignCurrent
    - name: resignCurrent
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func resignCurrent()

  // Own Instance Properties

  /**
    - jsName: activityType
    - name: activityType
    - argLabels: 
  */
  @objc var activityType: String { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSUserActivityDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: detectedBarcodeDescriptor
    - name: detectedBarcodeDescriptor
    - argLabels: 
    - available: 10.13.4
    - Introduced: 10.13.4
  */
  @objc @available(OSX 10.13.4, *) var detectedBarcodeDescriptor: CIBarcodeDescriptor? { @objc get }

  /**
    - jsName: isEligibleForHandoff
    - name: eligibleForHandoff
    - argLabels: 
    - available: 10.11
    - obsoleted: 3
    - renamed: isEligibleForHandoff
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isEligibleForHandoff: Bool { @objc get @objc (setEligibleForHandoff:) set }

  /**
    - jsName: isEligibleForPublicIndexing
    - name: eligibleForPublicIndexing
    - argLabels: 
    - available: 10.11
    - obsoleted: 3
    - renamed: isEligibleForPublicIndexing
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isEligibleForPublicIndexing: Bool { @objc get @objc (setEligibleForPublicIndexing:) set }

  /**
    - jsName: isEligibleForSearch
    - name: eligibleForSearch
    - argLabels: 
    - available: 10.11
    - obsoleted: 3
    - renamed: isEligibleForSearch
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isEligibleForSearch: Bool { @objc get @objc (setEligibleForSearch:) set }

  /**
    - jsName: expirationDate
    - name: expirationDate
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var expirationDate: Date? { @objc get @objc (setExpirationDate:) set }

  /**
    - jsName: keywords
    - name: keywords
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var keywords: Set<String> { @objc get @objc (setKeywords:) set }

  /**
    - jsName: needsSave
    - name: needsSave
    - argLabels: 
  */
  @objc var needsSave: Bool { @objc get @objc (setNeedsSave:) set }

  /**
    - jsName: referrerURL
    - name: referrerURL
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var referrerURL: URL? { @objc get @objc (setReferrerURL:) set }

  /**
    - jsName: requiredUserInfoKeys
    - name: requiredUserInfoKeys
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var requiredUserInfoKeys: Set<String>? { @objc get @objc (setRequiredUserInfoKeys:) set }

  /**
    - jsName: supportsContinuationStreams
    - name: supportsContinuationStreams
    - argLabels: 
  */
  @objc var supportsContinuationStreams: Bool { @objc get @objc (setSupportsContinuationStreams:) set }

  /**
    - jsName: targetContentIdentifier
    - name: targetContentIdentifier
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var targetContentIdentifier: String? { @objc get @objc (setTargetContentIdentifier:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String? { @objc get @objc (setTitle:) set }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get @objc (setUserInfo:) set }

  /**
    - jsName: webpageURL
    - name: webpageURL
    - argLabels: 
  */
  @objc var webpageURL: URL? { @objc get @objc (setWebpageURL:) set }
}

extension NSUserActivity: NSUserActivityExports {
  @objc public static func createWithActivityType(_ activityType: String) -> Self {
    return self.init(activityType: activityType)
  }

}
