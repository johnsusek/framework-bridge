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
    - Selector: AVContentKeyResponse
    - Introduced: 10.12.4
  */

@objc(AVContentKeyResponse) protocol AVContentKeyResponseExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: contentKeyResponseWithAuthorizationTokenData:
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func createWithAuthorizationTokenData(_ authorizationTokenData: Data) -> Self

  /**
    - Selector: contentKeyResponseWithClearKeyData:initializationVector:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithClearKeyData_InitializationVector(_ clearKeyData: Data, _ initializationVector: Data?) -> Self

  /**
    - Selector: contentKeyResponseWithFairPlayStreamingKeyResponseData:
  */
  @objc static func createWithFairPlayStreamingKeyResponseData(_ fairPlayStreamingKeyResponseData: Data) -> Self
}

extension AVContentKeyResponse: AVContentKeyResponseExports {

  /**
    - Selector: contentKeyResponseWithAuthorizationTokenData:
    - Introduced: 10.15
  */
  @objc public static func createWithAuthorizationTokenData(_ authorizationTokenData: Data) -> Self {
    return self.init(authorizationTokenData: authorizationTokenData)
  }


  /**
    - Selector: contentKeyResponseWithClearKeyData:initializationVector:
    - Introduced: 10.13
  */
  @objc public static func createWithClearKeyData_InitializationVector(_ clearKeyData: Data, _ initializationVector: Data?) -> Self {
    return self.init(clearKeyData: clearKeyData, initializationVector: initializationVector)
  }


  /**
    - Selector: contentKeyResponseWithFairPlayStreamingKeyResponseData:
  */
  @objc public static func createWithFairPlayStreamingKeyResponseData(_ fairPlayStreamingKeyResponseData: Data) -> Self {
    return self.init(fairPlayStreamingKeyResponseData: fairPlayStreamingKeyResponseData)
  }

}
