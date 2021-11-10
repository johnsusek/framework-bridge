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
    - Selector: AVAssetResourceLoadingRequestor
    - Introduced: 10.14
  */

@objc(AVAssetResourceLoadingRequestor) protocol AVAssetResourceLoadingRequestorExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: providesExpiredSessionReports
  */
  @objc var providesExpiredSessionReports: Bool { @objc get }
}

extension AVAssetResourceLoadingRequestor: AVAssetResourceLoadingRequestorExports {
}
