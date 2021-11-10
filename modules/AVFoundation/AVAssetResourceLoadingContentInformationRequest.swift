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
    - Selector: AVAssetResourceLoadingContentInformationRequest
    - Introduced: 10.9
  */

@objc(AVAssetResourceLoadingContentInformationRequest) protocol AVAssetResourceLoadingContentInformationRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: allowedContentTypes
    - Introduced: 10.13.2
  */
  @objc @available(OSX 10.13.2, *) var allowedContentTypes: [String]? { @objc get }

  /**
    - Selector: byteRangeAccessSupported
  */
  @objc var isByteRangeAccessSupported: Bool { @objc get @objc (setByteRangeAccessSupported:) set }

  /**
    - Selector: contentLength
  */
  @objc var contentLength: Int64 { @objc get @objc (setContentLength:) set }

  /**
    - Selector: contentType
  */
  @objc var contentType: String? { @objc get @objc (setContentType:) set }

  /**
    - Selector: renewalDate
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var renewalDate: Date? { @objc get @objc (setRenewalDate:) set }
}

extension AVAssetResourceLoadingContentInformationRequest: AVAssetResourceLoadingContentInformationRequestExports {
}
