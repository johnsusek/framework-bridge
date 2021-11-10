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
    - Selector: AVMediaSelectionGroup
    - Introduced: 10.8
  */

@objc(AVMediaSelectionGroup) protocol AVMediaSelectionGroupExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:
    - Introduced: 10.8
  */
  @objc (mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:) @available(OSX 10.8, *) static func mediaSelectionOptions(from: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages: [String]) -> [AVMediaSelectionOption]

  /**
    - Selector: mediaSelectionOptionsFromArray:withLocale:
  */
  @objc (mediaSelectionOptionsFromArray:withLocale:) static func mediaSelectionOptions(from: [AVMediaSelectionOption], with: Locale) -> [AVMediaSelectionOption]

  /**
    - Selector: mediaSelectionOptionsFromArray:withMediaCharacteristics:
  */
  @objc (mediaSelectionOptionsFromArray:withMediaCharacteristics:) static func mediaSelectionOptions(from: [AVMediaSelectionOption], withMediaCharacteristics: [AVMediaCharacteristic]) -> [AVMediaSelectionOption]

  /**
    - Selector: mediaSelectionOptionsFromArray:withoutMediaCharacteristics:
  */
  @objc (mediaSelectionOptionsFromArray:withoutMediaCharacteristics:) static func mediaSelectionOptions(from: [AVMediaSelectionOption], withoutMediaCharacteristics: [AVMediaCharacteristic]) -> [AVMediaSelectionOption]

  /**
    - Selector: playableMediaSelectionOptionsFromArray:
  */
  @objc (playableMediaSelectionOptionsFromArray:) static func playableMediaSelectionOptions(from: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]

  // Instance Methods

  /**
    - Selector: mediaSelectionOptionWithPropertyList:
  */
  @objc (mediaSelectionOptionWithPropertyList:) func mediaSelectionOption(withPropertyList: Any) -> AVMediaSelectionOption?

  // Own Instance Properties

  /**
    - Selector: allowsEmptySelection
  */
  @objc var allowsEmptySelection: Bool { @objc get }

  /**
    - Selector: defaultOption
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var defaultOption: AVMediaSelectionOption? { @objc get }

  /**
    - Selector: options
  */
  @objc var options: [AVMediaSelectionOption] { @objc get }
}

extension AVMediaSelectionGroup: AVMediaSelectionGroupExports {
}
