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
    - Selector: AVAssetTrackSegment
    - Introduced: 10.7
  */

@objc(AVAssetTrackSegment) protocol AVAssetTrackSegmentExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: empty
  */
  @objc var isEmpty: Bool { @objc get }

  /**
    - Selector: timeMapping
  */
  @objc var timeMapping: CMTimeMapping { @objc get }
}

extension AVAssetTrackSegment: AVAssetTrackSegmentExports {
}
