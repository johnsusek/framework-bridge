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
    - Selector: AVVideoComposition
    - Introduced: 10.7
  */

@objc(AVVideoComposition) protocol AVVideoCompositionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: videoCompositionWithAsset:applyingCIFiltersWithHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func createWithAssetWithApplyingCIFiltersWithHandler(_ asset: AVAsset, _ applyingCIFiltersWithHandler: JSValue) -> AVVideoComposition

  /**
    - Selector: videoCompositionWithPropertiesOfAsset:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithPropertiesOfAsset(_ propertiesOf: AVAsset) -> AVVideoComposition

  // Instance Methods

  /**
    - Selector: isValidForAsset:timeRange:validationDelegate:
    - Introduced: 10.8
  */
  @objc (isValidForAsset:timeRange:validationDelegate:) @available(OSX 10.8, *) func isValid(`for`: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool

  // Own Instance Properties

  /**
    - Selector: animationTool
  */
  @objc var animationTool: AVVideoCompositionCoreAnimationTool? { @objc get }

  /**
    - Selector: colorPrimaries
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var colorPrimaries: String? { @objc get }

  /**
    - Selector: colorTransferFunction
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var colorTransferFunction: String? { @objc get }

  /**
    - Selector: colorYCbCrMatrix
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var colorYCbCrMatrix: String? { @objc get }

  /**
    - Selector: customVideoCompositorClass
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var customVideoCompositorClass: AVVideoCompositing.Type? { @objc get }

  /**
    - Selector: frameDuration
  */
  @objc var frameDuration: CMTime { @objc get }

  /**
    - Selector: instructions
  */
  @objc var instructions: [AVVideoCompositionInstructionProtocol] { @objc get }

  /**
    - Selector: renderScale
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var renderScale: Float { @objc get }

  /**
    - Selector: renderSize
  */
  @objc var renderSize: CGSize { @objc get }

  /**
    - Selector: sourceTrackIDForFrameTiming
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var sourceTrackIDForFrameTiming: Int32 { @objc get }
}

extension AVVideoComposition: AVVideoCompositionExports {

  /**
    - Selector: videoCompositionWithAsset:applyingCIFiltersWithHandler:
    - Introduced: 10.11
  */
  @objc public static func createWithAssetWithApplyingCIFiltersWithHandler(_ asset: AVAsset, _ applyingCIFiltersWithHandler: JSValue) -> AVVideoComposition {
    return self.init(asset: asset, applyingCIFiltersWithHandler: { p1 in
      applyingCIFiltersWithHandler.call(withArguments: [p1 as AnyObject])!
    })
  }


  /**
    - Selector: videoCompositionWithPropertiesOfAsset:
    - Introduced: 10.9
  */
  @objc public static func createWithPropertiesOfAsset(_ propertiesOf: AVAsset) -> AVVideoComposition {
    return self.init(propertiesOf: propertiesOf)
  }

}
