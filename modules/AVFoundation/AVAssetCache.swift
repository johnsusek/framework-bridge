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
    - Selector: AVAssetCache
    - Introduced: 10.12
  */

@objc(AVAssetCache) protocol AVAssetCacheExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: mediaSelectionOptionsInMediaSelectionGroup:
  */
  @objc (mediaSelectionOptionsInMediaSelectionGroup:) func mediaSelectionOptions(in: AVMediaSelectionGroup) -> [AVMediaSelectionOption]

  // Own Instance Properties

  /**
    - Selector: playableOffline
  */
  @objc var isPlayableOffline: Bool { @objc get }
}

extension AVAssetCache: AVAssetCacheExports {
}
