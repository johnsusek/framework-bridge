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
    - Selector: AVMetadataItemFilter
    - Introduced: 10.9
  */

@objc(AVMetadataItemFilter) protocol AVMetadataItemFilterExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: metadataItemFilterForSharing
  */
  @objc (metadataItemFilterForSharing) static func forSharing() -> AVMetadataItemFilter
}

extension AVMetadataItemFilter: AVMetadataItemFilterExports {
}
