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
    - Selector: AVCompositionTrackSegment
    - Introduced: 10.7
  */

@objc(AVCompositionTrackSegment) protocol AVCompositionTrackSegmentExports: JSExport, AVAssetTrackSegmentExports {
  // Static Methods

  /**
    - Selector: compositionTrackSegmentWithTimeRange:
  */
  @objc static func createWithCompositionTrackSegmentWithTimeRange(_ timeRange: CMTimeRange) -> Self

  /**
    - Selector: compositionTrackSegmentWithURL:trackID:sourceTimeRange:targetTimeRange:
  */
  @objc static func createWithCompositionTrackSegmentWithURLWithTrackIDWithSourceTimeRangeWithTargetTimeRange(_ url: URL, _ trackID: Int32, _ sourceTimeRange: CMTimeRange, _ targetTimeRange: CMTimeRange) -> Self

  // Own Instance Properties

  /**
    - Selector: sourceTrackID
  */
  @objc var sourceTrackID: Int32 { @objc get }

  /**
    - Selector: sourceURL
  */
  @objc var sourceURL: URL? { @objc get }
}

extension AVCompositionTrackSegment: AVCompositionTrackSegmentExports {

  /**
    - Selector: compositionTrackSegmentWithTimeRange:
  */
  @objc public static func createWithCompositionTrackSegmentWithTimeRange(_ timeRange: CMTimeRange) -> Self {
    return self.init(timeRange: timeRange)
  }


  /**
    - Selector: compositionTrackSegmentWithURL:trackID:sourceTimeRange:targetTimeRange:
  */
  @objc public static func createWithCompositionTrackSegmentWithURLWithTrackIDWithSourceTimeRangeWithTargetTimeRange(_ url: URL, _ trackID: Int32, _ sourceTimeRange: CMTimeRange, _ targetTimeRange: CMTimeRange) -> Self {
    return self.init(url: url, trackID: trackID, sourceTimeRange: sourceTimeRange, targetTimeRange: targetTimeRange)
  }

}
