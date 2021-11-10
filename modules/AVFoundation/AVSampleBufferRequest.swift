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
    - Selector: AVSampleBufferRequest
    - Introduced: 10.10
  */

@objc(AVSampleBufferRequest) protocol AVSampleBufferRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: direction
  */
  @objc var direction: AVSampleBufferRequest.Direction { @objc get @objc (setDirection:) set }

  /**
    - Selector: limitCursor
  */
  @objc var limitCursor: AVSampleCursor? { @objc get @objc (setLimitCursor:) set }

  /**
    - Selector: maxSampleCount
  */
  @objc var maxSampleCount: Int { @objc get @objc (setMaxSampleCount:) set }

  /**
    - Selector: mode
  */
  @objc var mode: AVSampleBufferRequest.Mode { @objc get @objc (setMode:) set }

  /**
    - Selector: overrideTime
  */
  @objc var overrideTime: CMTime { @objc get @objc (setOverrideTime:) set }

  /**
    - Selector: preferredMinSampleCount
  */
  @objc var preferredMinSampleCount: Int { @objc get @objc (setPreferredMinSampleCount:) set }

  /**
    - Selector: startCursor
  */
  @objc var startCursor: AVSampleCursor { @objc get }
}

extension AVSampleBufferRequest: AVSampleBufferRequestExports {
}
