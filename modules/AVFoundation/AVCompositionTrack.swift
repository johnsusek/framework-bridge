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
    - Selector: AVCompositionTrack
    - Introduced: 10.7
  */

@objc(AVCompositionTrack) protocol AVCompositionTrackExports: JSExport, AVAssetTrackExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: segmentForTrackTime:
  */
  @objc (segmentForTrackTime:) func segment(forTrackTime: CMTime) -> AVCompositionTrackSegment?

  // Own Instance Properties

  /**
    - Selector: formatDescriptionReplacements
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var formatDescriptionReplacements: [AVCompositionTrackFormatDescriptionReplacement] { @objc get }
}

extension AVCompositionTrack: AVCompositionTrackExports {
}
