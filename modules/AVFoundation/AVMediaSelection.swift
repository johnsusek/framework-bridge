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
    - Selector: AVMediaSelection
    - Introduced: 10.11
  */

@objc(AVMediaSelection) protocol AVMediaSelectionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:
  */
  @objc (mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:) func mediaSelectionCriteriaCanBeAppliedAutomatically(to: AVMediaSelectionGroup) -> Bool

  /**
    - Selector: selectedMediaOptionInMediaSelectionGroup:
  */
  @objc (selectedMediaOptionInMediaSelectionGroup:) func selectedMediaOption(in: AVMediaSelectionGroup) -> AVMediaSelectionOption?

  // Own Instance Properties

  /**
    - Selector: asset
  */
  @objc var asset: AVAsset? { @objc get }
}

extension AVMediaSelection: AVMediaSelectionExports {
}
