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
    - Selector: AVMutableDateRangeMetadataGroup
    - Introduced: 10.11
  */

@objc(AVMutableDateRangeMetadataGroup) protocol AVMutableDateRangeMetadataGroupExports: JSExport, AVDateRangeMetadataGroupExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: endDate
  */
  @objc var endDate: Date? { @objc get @objc (setEndDate:) set }

  /**
    - Selector: items
  */
  @objc var items: [AVMetadataItem] { @objc get @objc (setItems:) set }

  /**
    - Selector: startDate
  */
  @objc var startDate: Date { @objc get @objc (setStartDate:) set }
}

extension AVMutableDateRangeMetadataGroup: AVMutableDateRangeMetadataGroupExports {
}
