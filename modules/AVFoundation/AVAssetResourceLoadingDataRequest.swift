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
    - Selector: AVAssetResourceLoadingDataRequest
    - Introduced: 10.9
  */

@objc(AVAssetResourceLoadingDataRequest) protocol AVAssetResourceLoadingDataRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: respondWithData:
  */
  @objc (respondWithData:) func respond(with: Data)

  // Own Instance Properties

  /**
    - Selector: currentOffset
  */
  @objc var currentOffset: Int64 { @objc get }

  /**
    - Selector: requestedLength
  */
  @objc var requestedLength: Int { @objc get }

  /**
    - Selector: requestedOffset
  */
  @objc var requestedOffset: Int64 { @objc get }

  /**
    - Selector: requestsAllDataToEndOfResource
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var requestsAllDataToEndOfResource: Bool { @objc get }
}

extension AVAssetResourceLoadingDataRequest: AVAssetResourceLoadingDataRequestExports {
}
