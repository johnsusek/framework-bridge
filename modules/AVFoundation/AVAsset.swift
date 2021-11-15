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
    - Selector: AVAsset
    - Introduced: 10.7
  */

@objc(AVAsset) protocol AVAssetExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: assetWithURL:
  */
  @objc static func createWithURL(_ url: URL) -> Self

  // Instance Methods

  /**
    - Selector: cancelLoading
  */
  @objc func cancelLoading()

  /**
    - Selector: chapterMetadataGroupsBestMatchingPreferredLanguages:
    - Introduced: 10.8
  */
  @objc (chapterMetadataGroupsBestMatchingPreferredLanguages:) @available(OSX 10.8, *) func chapterMetadataGroups(bestMatchingPreferredLanguages: [String]) -> [AVTimedMetadataGroup]

  /**
    - Selector: chapterMetadataGroupsWithTitleLocale:containingItemsWithCommonKeys:
    - Introduced: 10.7
  */
  @objc (chapterMetadataGroupsWithTitleLocale:containingItemsWithCommonKeys:) @available(OSX 10.7, *) func chapterMetadataGroups(withTitleLocale: Locale, containingItemsWithCommonKeys: [AVMetadataKey]?) -> [AVTimedMetadataGroup]

  /**
    - Selector: mediaSelectionGroupForMediaCharacteristic:
    - Introduced: 10.8
  */
  @objc (mediaSelectionGroupForMediaCharacteristic:) @available(OSX 10.8, *) func mediaSelectionGroup(forMediaCharacteristic: AVMediaCharacteristic) -> AVMediaSelectionGroup?

  /**
    - Selector: metadataForFormat:
  */
  @objc (metadataForFormat:) func metadata(forFormat: AVMetadataFormat) -> [AVMetadataItem]

  /**
    - Selector: trackWithTrackID:
  */
  @objc (trackWithTrackID:) func track(withTrackID: Int32) -> AVAssetTrack?

  /**
    - Selector: tracksWithMediaCharacteristic:
  */
  @objc (tracksWithMediaCharacteristic:) func tracks(withMediaCharacteristic: AVMediaCharacteristic) -> [AVAssetTrack]

  /**
    - Selector: tracksWithMediaType:
  */
  @objc (tracksWithMediaType:) func tracks(withMediaType: AVMediaType) -> [AVAssetTrack]

  /**
    - Selector: unusedTrackID
  */
  @objc func unusedTrackID() -> Int32

  // Own Instance Properties

  /**
    - Selector: allMediaSelections
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allMediaSelections: [AVMediaSelection] { @objc get }

  /**
    - Selector: availableChapterLocales
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var availableChapterLocales: [Locale] { @objc get }

  /**
    - Selector: availableMediaCharacteristicsWithMediaSelectionOptions
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var availableMediaCharacteristicsWithMediaSelectionOptions: [AVMediaCharacteristic] { @objc get }

  /**
    - Selector: availableMetadataFormats
  */
  @objc var availableMetadataFormats: [AVMetadataFormat] { @objc get }

  /**
    - Selector: canContainFragments
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var canContainFragments: Bool { @objc get }

  /**
    - Selector: commonMetadata
  */
  @objc var commonMetadata: [AVMetadataItem] { @objc get }

  /**
    - Selector: compatibleWithAirPlayVideo
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isCompatibleWithAirPlayVideo: Bool { @objc get }

  /**
    - Selector: composable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isComposable: Bool { @objc get }

  /**
    - Selector: containsFragments
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var containsFragments: Bool { @objc get }

  /**
    - Selector: creationDate
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var creationDate: AVMetadataItem? { @objc get }

  /**
    - Selector: duration
  */
  @objc var duration: CMTime { @objc get }

  /**
    - Selector: exportable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isExportable: Bool { @objc get }

  /**
    - Selector: hasProtectedContent
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var hasProtectedContent: Bool { @objc get }

  /**
    - Selector: lyrics
  */
  @objc var lyrics: String? { @objc get }

  /**
    - Selector: metadata
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var metadata: [AVMetadataItem] { @objc get }

  /**
    - Selector: minimumTimeOffsetFromLive
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var minimumTimeOffsetFromLive: CMTime { @objc get }

  /**
    - Selector: overallDurationHint
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var overallDurationHint: CMTime { @objc get }

  /**
    - Selector: playable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isPlayable: Bool { @objc get }

  /**
    - Selector: preferredMediaSelection
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var preferredMediaSelection: AVMediaSelection { @objc get }

  /**
    - Selector: preferredRate
  */
  @objc var preferredRate: Float { @objc get }

  /**
    - Selector: preferredTransform
  */
  @objc var preferredTransform: CGAffineTransform { @objc get }

  /**
    - Selector: preferredVolume
  */
  @objc var preferredVolume: Float { @objc get }

  /**
    - Selector: providesPreciseDurationAndTiming
  */
  @objc var providesPreciseDurationAndTiming: Bool { @objc get }

  /**
    - Selector: readable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isReadable: Bool { @objc get }

  /**
    - Selector: referenceRestrictions
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var referenceRestrictions: AVAssetReferenceRestrictions { @objc get }

  /**
    - Selector: trackGroups
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var trackGroups: [AVAssetTrackGroup] { @objc get }

  /**
    - Selector: tracks
  */
  @objc var tracks: [AVAssetTrack] { @objc get }
}

extension AVAsset: AVAssetExports {

  /**
    - Selector: assetWithURL:
  */
  @objc public static func createWithURL(_ url: URL) -> Self {
    return self.init(url: url)
  }

}
