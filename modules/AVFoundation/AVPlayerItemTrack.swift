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
    - Selector: AVPlayerItemTrack
    - Introduced: 10.7
  */

@objc(AVPlayerItemTrack) protocol AVPlayerItemTrackExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: assetTrack
  */
  @objc var assetTrack: AVAssetTrack? { @objc get }

  /**
    - Selector: currentVideoFrameRate
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var currentVideoFrameRate: Float { @objc get }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: videoFieldMode
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var videoFieldMode: String? { @objc get @objc (setVideoFieldMode:) set }
}

extension AVPlayerItemTrack: AVPlayerItemTrackExports {
}
