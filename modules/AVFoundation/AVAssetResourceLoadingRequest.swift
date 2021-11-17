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
    - Selector: AVAssetResourceLoadingRequest
    - Introduced: 10.9
  */

@objc(AVAssetResourceLoadingRequest) protocol AVAssetResourceLoadingRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: finishLoading
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func finishLoading()

  /**
    - Selector: finishLoadingWithError:
  */
  @objc (finishLoadingWithError:) func finishLoading(with: Error?)

  /**
    - Selector: persistentContentKeyFromKeyVendorResponse:options:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func persistentContentKeyFromKeyVendorResponse(keyVendorResponse: Data, options: [String: Any]?) -> Data?

  /**
    - Selector: streamingContentKeyRequestDataForApp:contentIdentifier:options:error:
  */
  // throws - @objc func streamingContentKeyRequestDataForApp(appIdentifier: Data, contentIdentifier: Data, options: [String: Any]?) -> Data?

  // Own Instance Properties

  /**
    - Selector: cancelled
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var isCancelled: Bool { @objc get }

  /**
    - Selector: contentInformationRequest
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { @objc get }

  /**
    - Selector: dataRequest
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var dataRequest: AVAssetResourceLoadingDataRequest? { @objc get }

  /**
    - Selector: finished
  */
  @objc var isFinished: Bool { @objc get }

  /**
    - Selector: redirect
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var redirect: URLRequest? { @objc get @objc (setRedirect:) set }

  /**
    - Selector: request
  */
  @objc var request: URLRequest { @objc get }

  /**
    - Selector: requestor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var requestor: AVAssetResourceLoadingRequestor { @objc get }

  /**
    - Selector: response
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var response: URLResponse? { @objc get @objc (setResponse:) set }
}

extension AVAssetResourceLoadingRequest: AVAssetResourceLoadingRequestExports {
}
