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
    - Selector: AVMutableVideoCompositionLayerInstruction
    - Introduced: 10.7
  */

@objc(AVMutableVideoCompositionLayerInstruction) protocol AVMutableVideoCompositionLayerInstructionExports: JSExport, AVVideoCompositionLayerInstructionExports {
  // Static Methods

  /**
    - Selector: videoCompositionLayerInstructionWithAssetTrack:
  */
  @objc static func createWithAssetTrack(_ assetTrack: AVAssetTrack) -> Self

  // Instance Methods

  /**
    - Selector: setCropRectangle:atTime:
    - Introduced: 10.9
  */
  @objc (setCropRectangle:atTime:) @available(OSX 10.9, *) func setCropRectangle(_ p0: CGRect, at: CMTime)

  /**
    - Selector: setCropRectangleRampFromStartCropRectangle:toEndCropRectangle:timeRange:
    - Introduced: 10.9
  */
  @objc (setCropRectangleRampFromStartCropRectangle:toEndCropRectangle:timeRange:) @available(OSX 10.9, *) func setCropRectangleRamp(fromStartCropRectangle: CGRect, toEndCropRectangle: CGRect, timeRange: CMTimeRange)

  /**
    - Selector: setOpacity:atTime:
  */
  @objc (setOpacity:atTime:) func setOpacity(_ p0: Float, at: CMTime)

  /**
    - Selector: setOpacityRampFromStartOpacity:toEndOpacity:timeRange:
  */
  @objc (setOpacityRampFromStartOpacity:toEndOpacity:timeRange:) func setOpacityRamp(fromStartOpacity: Float, toEndOpacity: Float, timeRange: CMTimeRange)

  /**
    - Selector: setTransform:atTime:
  */
  @objc (setTransform:atTime:) func setTransform(_ p0: CGAffineTransform, at: CMTime)

  /**
    - Selector: setTransformRampFromStartTransform:toEndTransform:timeRange:
  */
  @objc (setTransformRampFromStartTransform:toEndTransform:timeRange:) func setTransformRamp(fromStart: CGAffineTransform, toEnd: CGAffineTransform, timeRange: CMTimeRange)

  // Own Instance Properties

  /**
    - Selector: trackID
  */
  @objc var trackID: Int32 { @objc get @objc (setTrackID:) set }
}

extension AVMutableVideoCompositionLayerInstruction: AVMutableVideoCompositionLayerInstructionExports {

  /**
    - Selector: videoCompositionLayerInstructionWithAssetTrack:
  */
  @objc public static func createWithAssetTrack(_ assetTrack: AVAssetTrack) -> Self {
    return self.init(assetTrack: assetTrack)
  }

}
