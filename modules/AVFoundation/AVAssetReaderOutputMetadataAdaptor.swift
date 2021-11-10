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
    - Selector: AVAssetReaderOutputMetadataAdaptor
    - Introduced: 10.10
  */

@objc(AVAssetReaderOutputMetadataAdaptor) protocol AVAssetReaderOutputMetadataAdaptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:
  */
  @objc static func createWithAssetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput(_ assetReaderTrackOutput: AVAssetReaderTrackOutput) -> Self

  // Instance Methods

  /**
    - Selector: nextTimedMetadataGroup
  */
  @objc func nextTimedMetadataGroup() -> AVTimedMetadataGroup?

  // Own Instance Properties

  /**
    - Selector: assetReaderTrackOutput
  */
  @objc var assetReaderTrackOutput: AVAssetReaderTrackOutput { @objc get }
}

extension AVAssetReaderOutputMetadataAdaptor: AVAssetReaderOutputMetadataAdaptorExports {

  /**
    - Selector: assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:
  */
  @objc public static func createWithAssetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput(_ assetReaderTrackOutput: AVAssetReaderTrackOutput) -> Self {
    return self.init(assetReaderTrackOutput: assetReaderTrackOutput)
  }

}
