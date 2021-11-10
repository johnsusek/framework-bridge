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
    - Selector: AVFragmentedAsset
    - Introduced: 10.11
  */

@objc(AVFragmentedAsset) protocol AVFragmentedAssetExports: JSExport, AVURLAssetExports {
  // Static Methods

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
    - Selector: fragmentedAssetWithURL:options:
  */
  @objc static func createWithFragmentedAssetWithURLWithOptions(_ url: URL, _ options: [String: Any]?) -> Self

  /**
    - Selector: isPlayableExtendedMIMEType:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func isPlayableExtendedMIMEType(_: String) -> Bool

  // Instance Methods

  /**
    - Selector: trackWithTrackID:
  */
  @objc (trackWithTrackID:) func track(withTrackID: Int32) -> AVFragmentedAssetTrack?
}

extension AVFragmentedAsset: AVFragmentedAssetExports {

  /**
    - Selector: fragmentedAssetWithURL:options:
  */
  @objc public static func createWithFragmentedAssetWithURLWithOptions(_ url: URL, _ options: [String: Any]?) -> Self {
    return self.init(url: url, options: options)
  }

}
