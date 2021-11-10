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
    - Selector: AVFrameRateRange
    - Introduced: 10.7
  */

@objc(AVFrameRateRange) protocol AVFrameRateRangeExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: maxFrameDuration
  */
  @objc var maxFrameDuration: CMTime { @objc get }

  /**
    - Selector: maxFrameRate
  */
  @objc var maxFrameRate: Float64 { @objc get }

  /**
    - Selector: minFrameDuration
  */
  @objc var minFrameDuration: CMTime { @objc get }

  /**
    - Selector: minFrameRate
  */
  @objc var minFrameRate: Float64 { @objc get }
}

extension AVFrameRateRange: AVFrameRateRangeExports {
}
