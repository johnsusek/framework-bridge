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
    - Selector: AVAssetTrack
    - Introduced: 10.7
  */

@objc(AVAssetTrack) protocol AVAssetTrackExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: associatedTracksOfType:
    - Introduced: 10.9
  */
  @objc (associatedTracksOfType:) @available(OSX 10.9, *) func associatedTracks(ofType: AVAssetTrack.AssociationType) -> [AVAssetTrack]

  /**
    - Selector: hasMediaCharacteristic:
  */
  @objc func hasMediaCharacteristic(_: AVMediaCharacteristic) -> Bool

  /**
    - Selector: makeSampleCursorAtFirstSampleInDecodeOrder
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func makeSampleCursorAtFirstSampleInDecodeOrder() -> AVSampleCursor?

  /**
    - Selector: makeSampleCursorAtLastSampleInDecodeOrder
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func makeSampleCursorAtLastSampleInDecodeOrder() -> AVSampleCursor?

  /**
    - Selector: makeSampleCursorWithPresentationTimeStamp:
    - Introduced: 10.10
  */
  @objc (makeSampleCursorWithPresentationTimeStamp:) @available(OSX 10.10, *) func makeSampleCursor(presentationTimeStamp: CMTime) -> AVSampleCursor?

  /**
    - Selector: metadataForFormat:
  */
  @objc (metadataForFormat:) func metadata(forFormat: AVMetadataFormat) -> [AVMetadataItem]

  /**
    - Selector: samplePresentationTimeForTrackTime:
  */
  @objc (samplePresentationTimeForTrackTime:) func samplePresentationTime(forTrackTime: CMTime) -> CMTime

  /**
    - Selector: segmentForTrackTime:
  */
  @objc (segmentForTrackTime:) func segment(forTrackTime: CMTime) -> AVAssetTrackSegment?

  // Own Instance Properties

  /**
    - Selector: asset
  */
  @objc var asset: AVAsset? { @objc get }

  /**
    - Selector: availableMetadataFormats
  */
  @objc var availableMetadataFormats: [AVMetadataFormat] { @objc get }

  /**
    - Selector: availableTrackAssociationTypes
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var availableTrackAssociationTypes: [AVAssetTrack.AssociationType] { @objc get }

  /**
    - Selector: canProvideSampleCursors
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var canProvideSampleCursors: Bool { @objc get }

  /**
    - Selector: commonMetadata
  */
  @objc var commonMetadata: [AVMetadataItem] { @objc get }

  /**
    - Selector: decodable
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var isDecodable: Bool { @objc get }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get }

  /**
    - Selector: estimatedDataRate
  */
  @objc var estimatedDataRate: Float { @objc get }

  /**
    - Selector: extendedLanguageTag
  */
  @objc var extendedLanguageTag: String? { @objc get }

  /**
    - Selector: formatDescriptions
  */
  @objc var formatDescriptions: [Any] { @objc get }

  /**
    - Selector: hasAudioSampleDependencies
  */
  @objc var hasAudioSampleDependencies: Bool { @objc get }

  /**
    - Selector: languageCode
  */
  @objc var languageCode: String? { @objc get }

  /**
    - Selector: mediaType
  */
  @objc var mediaType: AVMediaType { @objc get }

  /**
    - Selector: metadata
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var metadata: [AVMetadataItem] { @objc get }

  /**
    - Selector: minFrameDuration
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var minFrameDuration: CMTime { @objc get }

  /**
    - Selector: naturalSize
  */
  @objc var naturalSize: CGSize { @objc get }

  /**
    - Selector: naturalTimeScale
  */
  @objc var naturalTimeScale: Int32 { @objc get }

  /**
    - Selector: nominalFrameRate
  */
  @objc var nominalFrameRate: Float { @objc get }

  /**
    - Selector: playable
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var isPlayable: Bool { @objc get }

  /**
    - Selector: preferredTransform
  */
  @objc var preferredTransform: CGAffineTransform { @objc get }

  /**
    - Selector: preferredVolume
  */
  @objc var preferredVolume: Float { @objc get }

  /**
    - Selector: requiresFrameReordering
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var requiresFrameReordering: Bool { @objc get }

  /**
    - Selector: segments
  */
  @objc var segments: [AVAssetTrackSegment] { @objc get }

  /**
    - Selector: selfContained
  */
  @objc var isSelfContained: Bool { @objc get }

  /**
    - Selector: timeRange
  */
  @objc var timeRange: CMTimeRange { @objc get }

  /**
    - Selector: totalSampleDataLength
  */
  @objc var totalSampleDataLength: Int64 { @objc get }

  /**
    - Selector: trackID
  */
  @objc var trackID: Int32 { @objc get }
}

extension AVAssetTrack: AVAssetTrackExports {
}
