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
    - Selector: AVComposition
    - Introduced: 10.7
  */

@objc(AVComposition) protocol AVCompositionExports: JSExport, AVAssetExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: trackWithTrackID:
  */
  @objc (trackWithTrackID:) func track(withTrackID: Int32) -> AVCompositionTrack?

  // Own Instance Properties

  /**
    - Selector: URLAssetInitializationOptions
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var urlAssetInitializationOptions: [String: Any] { @objc (URLAssetInitializationOptions) get }

  /**
    - Selector: naturalSize
  */
  @objc var naturalSize: CGSize { @objc get }
}

extension AVComposition: AVCompositionExports {
}
