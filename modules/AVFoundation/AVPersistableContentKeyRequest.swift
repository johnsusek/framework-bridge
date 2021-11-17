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
    - Selector: AVPersistableContentKeyRequest
    - Introduced: 10.15
  */

@objc(AVPersistableContentKeyRequest) protocol AVPersistableContentKeyRequestExports: JSExport, AVContentKeyRequestExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: persistableContentKeyFromKeyVendorResponse:options:error:
  */
  // throws - @objc func persistableContentKeyFromKeyVendorResponse(keyVendorResponse: Data, options: [String: Any]?) -> Data?
}

extension AVPersistableContentKeyRequest: AVPersistableContentKeyRequestExports {
}
