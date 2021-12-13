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
    - Selector: AVURLAsset
    - Introduced: 10.7
  */

@objc(AVURLAsset) protocol AVURLAssetExports: JSExport, AVAssetExports {
  // Static Methods

  /**
    - Selector: URLAssetWithURL:options:
  */
  @objc static func createWithUrl_Options(_ url: URL, _ options: [String: Any]?) -> Self

  /**
    - Selector: audiovisualMIMETypes
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func audiovisualMIMETypes() -> [String]

  /**
    - Selector: audiovisualTypes
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func audiovisualTypes() -> [AVFileType]

  /**
    - Selector: isPlayableExtendedMIMEType:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func isPlayableExtendedMIMEType(_ p0: String) -> Bool

  // Instance Methods

  /**
    - Selector: compatibleTrackForCompositionTrack:
  */
  @objc (compatibleTrackForCompositionTrack:) func compatibleTrack(`for`: AVCompositionTrack) -> AVAssetTrack?

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL { @objc (URL) get }

  /**
    - Selector: assetCache
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var assetCache: AVAssetCache? { @objc get }

  /**
    - Selector: resourceLoader
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var resourceLoader: AVAssetResourceLoader { @objc get }
}

extension AVURLAsset: AVURLAssetExports {

  /**
    - Selector: URLAssetWithURL:options:
  */
  @objc public static func createWithUrl_Options(_ url: URL, _ options: [String: Any]?) -> Self {
    return self.init(url: url, options: options)
  }

}
