import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVFoundation

// Interface 

  /**
    - Selector: AVContentKeySession
    - Introduced: 10.12.4
  */

@objc(AVContentKeySession) protocol AVContentKeySessionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: contentKeySessionWithKeySystem:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithKeySystem(_ keySystem: AVContentKeySystem) -> Self

  /**
    - Selector: contentKeySessionWithKeySystem:storageDirectoryAtURL:
  */
  @objc static func createWithKeySystem_StorageDirectoryAt(_ keySystem: AVContentKeySystem, _ storageDirectoryAt: URL) -> Self

  /**
    - Selector: pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:
  */
  @objc (pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:) static func pendingExpiredSessionReports(withAppIdentifier: Data, storageDirectoryAt: URL) -> [Data]

  /**
    - Selector: removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:
  */
  @objc (removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:) static func removePendingExpiredSessionReports(_ p0: [Data], withAppIdentifier: Data, storageDirectoryAt: URL)

  // Instance Methods

  /**
    - Selector: addContentKeyRecipient:
  */
  @objc func addContentKeyRecipient(_ p0: AVContentKeyRecipient)

  /**
    - Selector: expire
  */
  @objc func expire()

  /**
    - Selector: invalidateAllPersistableContentKeysForApp:options:completionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func invalidateAllPersistableContentKeys(forApp: Data, options: [AVContentKeySessionServerPlaybackContextOption: Any]?, completionHandler: JSValue)

  /**
    - Selector: invalidatePersistableContentKey:options:completionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func invalidatePersistableContentKey(_ p0: Data, options: [AVContentKeySessionServerPlaybackContextOption: Any]?, completionHandler: JSValue)

  /**
    - Selector: makeSecureTokenForExpirationDateOfPersistableContentKey:completionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func makeSecureTokenForExpirationDate(ofPersistableContentKey: Data, completionHandler: JSValue)

  /**
    - Selector: processContentKeyRequestWithIdentifier:initializationData:options:
  */
  @objc (processContentKeyRequestWithIdentifier:initializationData:options:) func processContentKeyRequest(withIdentifier: Any?, initializationData: Data?, options: [String: Any]?)

  /**
    - Selector: removeContentKeyRecipient:
  */
  @objc func removeContentKeyRecipient(_ p0: AVContentKeyRecipient)

  /**
    - Selector: renewExpiringResponseDataForContentKeyRequest:
  */
  @objc (renewExpiringResponseDataForContentKeyRequest:) func renewExpiringResponseData(`for`: AVContentKeyRequest)

  /**
    - Selector: setDelegate:queue:
  */
  @objc func setDelegate(_ p0: AVContentKeySessionDelegate?, queue: DispatchQueue?)

  // Own Instance Properties

  /**
    - Selector: contentKeyRecipients
  */
  @objc var contentKeyRecipients: [AVContentKeyRecipient] { @objc get }

  /**
    - Selector: contentProtectionSessionIdentifier
  */
  @objc var contentProtectionSessionIdentifier: Data? { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: AVContentKeySessionDelegate? { @objc get }

  /**
    - Selector: delegateQueue
  */
  @objc var delegateQueue: DispatchQueue? { @objc get }

  /**
    - Selector: keySystem
  */
  @objc var keySystem: AVContentKeySystem { @objc get }

  /**
    - Selector: storageURL
  */
  @objc var storageURL: URL? { @objc get }
}

extension AVContentKeySession: AVContentKeySessionExports {

  /**
    - Selector: contentKeySessionWithKeySystem:
    - Introduced: 10.13
  */
  @objc public static func createWithKeySystem(_ keySystem: AVContentKeySystem) -> Self {
    return self.init(keySystem: keySystem)
  }


  /**
    - Selector: contentKeySessionWithKeySystem:storageDirectoryAtURL:
  */
  @objc public static func createWithKeySystem_StorageDirectoryAt(_ keySystem: AVContentKeySystem, _ storageDirectoryAt: URL) -> Self {
    return self.init(keySystem: keySystem, storageDirectoryAt: storageDirectoryAt)
  }

}
