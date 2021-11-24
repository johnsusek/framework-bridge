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
    - Selector: AVAssetWriterInputMetadataAdaptor
    - Introduced: 10.10
  */

@objc(AVAssetWriterInputMetadataAdaptor) protocol AVAssetWriterInputMetadataAdaptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: assetWriterInputMetadataAdaptorWithAssetWriterInput:
  */
  @objc static func createWithAssetWriterInput(_ assetWriterInput: AVAssetWriterInput) -> Self

  // Instance Methods

  /**
    - Selector: appendTimedMetadataGroup:
  */
  @objc (appendTimedMetadataGroup:) func append(_: AVTimedMetadataGroup) -> Bool

  // Own Instance Properties

  /**
    - Selector: assetWriterInput
  */
  @objc var assetWriterInput: AVAssetWriterInput { @objc get }
}

extension AVAssetWriterInputMetadataAdaptor: AVAssetWriterInputMetadataAdaptorExports {

  /**
    - Selector: assetWriterInputMetadataAdaptorWithAssetWriterInput:
  */
  @objc public static func createWithAssetWriterInput(_ assetWriterInput: AVAssetWriterInput) -> Self {
    return self.init(assetWriterInput: assetWriterInput)
  }

}
