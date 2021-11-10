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
    - Selector: AVAssetTrackGroup
    - Introduced: 10.9
  */

@objc(AVAssetTrackGroup) protocol AVAssetTrackGroupExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: trackIDs
  */
  @objc var trackIDs: [NSNumber] { @objc get }
}

extension AVAssetTrackGroup: AVAssetTrackGroupExports {
}
