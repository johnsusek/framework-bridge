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
    - Selector: AVAssetImageGenerator
    - Introduced: 10.7
  */

@objc(AVAssetImageGenerator) protocol AVAssetImageGeneratorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: assetImageGeneratorWithAsset:
  */
  @objc static func createWithAsset(_ asset: AVAsset) -> Self

  // Instance Methods

  /**
    - Selector: cancelAllCGImageGeneration
  */
  @objc func cancelAllCGImageGeneration()

  /**
    - Selector: copyCGImageAtTime:actualTime:error:
  */
  // throws - @objc func copyCGImageAtTime(actualTime: CMTime, error: UnsafeMutablePointer<CMTime>?) -> CGImage?

  /**
    - Selector: generateCGImagesAsynchronouslyForTimes:completionHandler:
  */
  // jsvalue @objc func generateCGImagesAsynchronouslyForTimesWithCallback(_ forTimes: [NSValue], _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: apertureMode
  */
  @objc var apertureMode: AVAssetImageGenerator.ApertureMode? { @objc get @objc (setApertureMode:) set }

  /**
    - Selector: appliesPreferredTrackTransform
  */
  @objc var appliesPreferredTrackTransform: Bool { @objc get @objc (setAppliesPreferredTrackTransform:) set }

  /**
    - Selector: asset
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var asset: AVAsset { @objc get }

  /**
    - Selector: customVideoCompositor
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var customVideoCompositor: AVVideoCompositing? { @objc get }

  /**
    - Selector: maximumSize
  */
  @objc var maximumSize: CGSize { @objc get @objc (setMaximumSize:) set }

  /**
    - Selector: requestedTimeToleranceAfter
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var requestedTimeToleranceAfter: CMTime { @objc get @objc (setRequestedTimeToleranceAfter:) set }

  /**
    - Selector: requestedTimeToleranceBefore
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var requestedTimeToleranceBefore: CMTime { @objc get @objc (setRequestedTimeToleranceBefore:) set }

  /**
    - Selector: videoComposition
  */
  @objc var videoComposition: AVVideoComposition? { @objc get @objc (setVideoComposition:) set }
}

extension AVAssetImageGenerator: AVAssetImageGeneratorExports {

  /**
    - Selector: assetImageGeneratorWithAsset:
  */
  @objc public static func createWithAsset(_ asset: AVAsset) -> Self {
    return self.init(asset: asset)
  }

}
