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
    - Selector: AVAssetExportSession
    - Introduced: 10.7
  */

@objc(AVAssetExportSession) protocol AVAssetExportSessionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: allExportPresets
  */
  @objc static func allExportPresets() -> [String]

  /**
    - Selector: determineCompatibilityOfExportPreset:withAsset:outputFileType:completionHandler:
    - Introduced: 10.9
  */
// jsvalue   @objc @available(OSX 10.9, *) static func determineCompatibility(ofExportPreset: String, with: AVAsset, outputFileType: AVFileType?, completionHandler: JSValue)

  /**
    - Selector: exportPresetsCompatibleWithAsset:
  */
  @objc (exportPresetsCompatibleWithAsset:) static func exportPresets(compatibleWith: AVAsset) -> [String]

  /**
    - Selector: exportSessionWithAsset:presetName:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithAsset_PresetName(_ asset: AVAsset, _ presetName: String) -> Self?

  // Instance Methods

  /**
    - Selector: cancelExport
  */
  @objc func cancelExport()

  /**
    - Selector: determineCompatibleFileTypesWithCompletionHandler:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func determineCompatibleFileTypes(completionHandler: JSValue)

  /**
    - Selector: estimateMaximumDurationWithCompletionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func estimateMaximumDuration(completionHandler: JSValue)

  /**
    - Selector: estimateOutputFileLengthWithCompletionHandler:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func estimateOutputFileLength(completionHandler: JSValue)

  /**
    - Selector: exportAsynchronouslyWithCompletionHandler:
  */
  // jsvalue @objc func exportAsynchronously(completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: asset
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var asset: AVAsset { @objc get }

  /**
    - Selector: audioMix
  */
  @objc var audioMix: AVAudioMix? { @objc get @objc (setAudioMix:) set }

  /**
    - Selector: audioTimePitchAlgorithm
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm { @objc get @objc (setAudioTimePitchAlgorithm:) set }

  /**
    - Selector: canPerformMultiplePassesOverSourceMediaData
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var canPerformMultiplePassesOverSourceMediaData: Bool { @objc get @objc (setCanPerformMultiplePassesOverSourceMediaData:) set }

  /**
    - Selector: customVideoCompositor
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var customVideoCompositor: AVVideoCompositing? { @objc get }

  /**
    - Selector: directoryForTemporaryFiles
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var directoryForTemporaryFiles: URL? { @objc get @objc (setDirectoryForTemporaryFiles:) set }

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: estimatedOutputFileLength
    - Introduced: 10.9
    - Deprecated: 100000
    - Replacement: estimateOutputFileLengthWithCompletionHandler
  */
  @objc @available(OSX 10.9, *) var estimatedOutputFileLength: Int64 { @objc get }

  /**
    - Selector: fileLengthLimit
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var fileLengthLimit: Int64 { @objc get @objc (setFileLengthLimit:) set }

  /**
    - Selector: maxDuration
    - Introduced: 10.14
    - Deprecated: 100000
    - Replacement: estimateMaximumDurationWithCompletionHandler
  */
  @objc @available(OSX 10.14, *) var maxDuration: CMTime { @objc get }

  /**
    - Selector: metadata
  */
  @objc var metadata: [AVMetadataItem]? { @objc get @objc (setMetadata:) set }

  /**
    - Selector: metadataItemFilter
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var metadataItemFilter: AVMetadataItemFilter? { @objc get @objc (setMetadataItemFilter:) set }

  /**
    - Selector: outputFileType
  */
  @objc var outputFileType: AVFileType? { @objc get @objc (setOutputFileType:) set }

  /**
    - Selector: outputURL
  */
  @objc var outputURL: URL? { @objc get @objc (setOutputURL:) set }

  /**
    - Selector: presetName
  */
  @objc var presetName: String { @objc get }

  /**
    - Selector: progress
  */
  @objc var progress: Float { @objc get }

  /**
    - Selector: shouldOptimizeForNetworkUse
  */
  @objc var shouldOptimizeForNetworkUse: Bool { @objc get @objc (setShouldOptimizeForNetworkUse:) set }

  /**
    - Selector: status
  */
  @objc var status: AVAssetExportSession.Status { @objc get }

  /**
    - Selector: supportedFileTypes
  */
  @objc var supportedFileTypes: [AVFileType] { @objc get }

  /**
    - Selector: timeRange
  */
  @objc var timeRange: CMTimeRange { @objc get @objc (setTimeRange:) set }

  /**
    - Selector: videoComposition
  */
  @objc var videoComposition: AVVideoComposition? { @objc get @objc (setVideoComposition:) set }
}

extension AVAssetExportSession: AVAssetExportSessionExports {

  /**
    - Selector: exportSessionWithAsset:presetName:
    - Introduced: 10.7
  */
  @objc public static func createWithAsset_PresetName(_ asset: AVAsset, _ presetName: String) -> Self? {
    return self.init(asset: asset, presetName: presetName)
  }

}
