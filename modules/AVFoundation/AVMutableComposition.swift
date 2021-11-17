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
    - Selector: AVMutableComposition
    - Introduced: 10.7
  */

@objc(AVMutableComposition) protocol AVMutableCompositionExports: JSExport, AVCompositionExports {
  // Static Methods

  /**
    - Selector: compositionWithURLAssetInitializationOptions:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func createWithURLAssetInitializationOptions(_ urlAssetInitializationOptions: [String: Any]?) -> Self

  // Instance Methods

  /**
    - Selector: addMutableTrackWithMediaType:preferredTrackID:
  */
  @objc (addMutableTrackWithMediaType:preferredTrackID:) func addMutableTrack(withMediaType: AVMediaType, preferredTrackID: Int32) -> AVMutableCompositionTrack?

  /**
    - Selector: insertEmptyTimeRange:
  */
  @objc (insertEmptyTimeRange:) func insertEmptyTimeRange(_: CMTimeRange)

  /**
    - Selector: insertTimeRange:ofAsset:atTime:error:
  */
  // throws - @objc (insertTimeRange:ofAsset:atTime:error:) func insertTimeRange(timeRange: CMTimeRange, _: AVAsset, of: CMTime) -> Bool

  /**
    - Selector: mutableTrackCompatibleWithTrack:
  */
  @objc (mutableTrackCompatibleWithTrack:) func mutableTrack(compatibleWith: AVAssetTrack) -> AVMutableCompositionTrack?

  /**
    - Selector: removeTimeRange:
  */
  @objc (removeTimeRange:) func removeTimeRange(_: CMTimeRange)

  /**
    - Selector: removeTrack:
  */
  @objc func removeTrack(_: AVCompositionTrack)

  /**
    - Selector: scaleTimeRange:toDuration:
  */
  @objc (scaleTimeRange:toDuration:) func scaleTimeRange(_: CMTimeRange, toDuration: CMTime)

  /**
    - Selector: trackWithTrackID:
  */
  @objc (trackWithTrackID:) func track(withTrackID: Int32) -> AVMutableCompositionTrack?

  // Own Instance Properties

  /**
    - Selector: naturalSize
  */
  @objc var naturalSize: CGSize { @objc get @objc (setNaturalSize:) set }
}

extension AVMutableComposition: AVMutableCompositionExports {

  /**
    - Selector: compositionWithURLAssetInitializationOptions:
    - Introduced: 10.11
  */
  @objc public static func createWithURLAssetInitializationOptions(_ urlAssetInitializationOptions: [String: Any]?) -> Self {
    return self.init(urlAssetInitializationOptions: urlAssetInitializationOptions)
  }

}
