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
    - Selector: AVDateRangeMetadataGroup
    - Introduced: 10.11
  */

@objc(AVDateRangeMetadataGroup) protocol AVDateRangeMetadataGroupExports: JSExport, AVMetadataGroupExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: endDate
  */
  @objc var endDate: Date? { @objc get }

  /**
    - Selector: startDate
  */
  @objc var startDate: Date { @objc get }
}

extension AVDateRangeMetadataGroup: AVDateRangeMetadataGroupExports {
}
