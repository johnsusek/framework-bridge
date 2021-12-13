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
    - Selector: AVMediaSelectionOption
    - Introduced: 10.8
  */

@objc(AVMediaSelectionOption) protocol AVMediaSelectionOptionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: associatedMediaSelectionOptionInMediaSelectionGroup:
  */
  @objc (associatedMediaSelectionOptionInMediaSelectionGroup:) func associatedMediaSelectionOption(in: AVMediaSelectionGroup) -> AVMediaSelectionOption?

  /**
    - Selector: displayNameWithLocale:
    - Introduced: 10.9
  */
  @objc (displayNameWithLocale:) @available(OSX 10.9, *) func displayName(with: Locale) -> String

  /**
    - Selector: hasMediaCharacteristic:
  */
  @objc func hasMediaCharacteristic(_ p0: AVMediaCharacteristic) -> Bool

  /**
    - Selector: metadataForFormat:
  */
  @objc (metadataForFormat:) func metadata(forFormat: String) -> [AVMetadataItem]

  /**
    - Selector: propertyList
  */
  @objc func propertyList() -> Any

  // Own Instance Properties

  /**
    - Selector: availableMetadataFormats
  */
  @objc var availableMetadataFormats: [String] { @objc get }

  /**
    - Selector: commonMetadata
  */
  @objc var commonMetadata: [AVMetadataItem] { @objc get }

  /**
    - Selector: displayName
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var displayName: String { @objc get }

  /**
    - Selector: extendedLanguageTag
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var extendedLanguageTag: String? { @objc get }

  /**
    - Selector: locale
  */
  @objc var locale: Locale? { @objc get }

  /**
    - Selector: mediaSubTypes
  */
  @objc var mediaSubTypes: [NSNumber] { @objc get }

  /**
    - Selector: mediaType
  */
  @objc var mediaType: AVMediaType { @objc get }

  /**
    - Selector: playable
  */
  @objc var isPlayable: Bool { @objc get }
}

extension AVMediaSelectionOption: AVMediaSelectionOptionExports {
}
