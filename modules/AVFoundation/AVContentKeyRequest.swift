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
    - Selector: AVContentKeyRequest
    - Introduced: 10.12.4
  */

@objc(AVContentKeyRequest) protocol AVContentKeyRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: makeStreamingContentKeyRequestDataForApp:contentIdentifier:options:completionHandler:
  */
  // jsvalue @objc func makeStreamingContentKeyRequestData(forApp: Data, contentIdentifier: Data?, options: [String: Any]?, completionHandler: JSValue)

  /**
    - Selector: processContentKeyResponse:
  */
  @objc func processContentKeyResponse(_: AVContentKeyResponse)

  /**
    - Selector: processContentKeyResponseError:
  */
  @objc func processContentKeyResponseError(_: Error)

  /**
    - Selector: respondByRequestingPersistableContentKeyRequestAndReturnError:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func respondByRequestingPersistableContentKeyRequestAndReturnError() -> Bool

  // Own Instance Properties

  /**
    - Selector: canProvidePersistableContentKey
  */
  @objc var canProvidePersistableContentKey: Bool { @objc get }

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: identifier
  */
  @objc var identifier: Any? { @objc get }

  /**
    - Selector: initializationData
  */
  @objc var initializationData: Data? { @objc get }

  /**
    - Selector: options
    - Introduced: 10.14.4
  */
  @objc @available(OSX 10.14.4, *) var options: [String: Any] { @objc get }

  /**
    - Selector: renewsExpiringResponseData
  */
  @objc var renewsExpiringResponseData: Bool { @objc get }

  /**
    - Selector: status
  */
  @objc var status: AVContentKeyRequest.Status { @objc get }
}

extension AVContentKeyRequest: AVContentKeyRequestExports {
}
