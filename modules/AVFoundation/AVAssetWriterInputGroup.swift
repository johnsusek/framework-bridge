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
    - Selector: AVAssetWriterInputGroup
    - Introduced: 10.9
  */

@objc(AVAssetWriterInputGroup) protocol AVAssetWriterInputGroupExports: JSExport, AVMediaSelectionGroupExports {
  // Static Methods

  /**
    - Selector: assetWriterInputGroupWithInputs:defaultInput:
  */
  @objc static func createWithInputs_DefaultInput(_ inputs: [AVAssetWriterInput], _ defaultInput: AVAssetWriterInput?) -> Self

  /**
    - Selector: mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:
    - Introduced: 10.8
  */
  @objc (mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:) @available(OSX 10.8, *) static func mediaSelectionOptions(from: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages: [String]) -> [AVMediaSelectionOption]

  /**
    - Selector: playableMediaSelectionOptionsFromArray:
  */
  @objc (playableMediaSelectionOptionsFromArray:) static func playableMediaSelectionOptions(from: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]

  // Own Instance Properties

  /**
    - Selector: defaultInput
  */
  @objc var defaultInput: AVAssetWriterInput? { @objc get }

  /**
    - Selector: inputs
  */
  @objc var inputs: [AVAssetWriterInput] { @objc get }
}

extension AVAssetWriterInputGroup: AVAssetWriterInputGroupExports {

  /**
    - Selector: assetWriterInputGroupWithInputs:defaultInput:
  */
  @objc public static func createWithInputs_DefaultInput(_ inputs: [AVAssetWriterInput], _ defaultInput: AVAssetWriterInput?) -> Self {
    return self.init(inputs: inputs, defaultInput: defaultInput)
  }

}
