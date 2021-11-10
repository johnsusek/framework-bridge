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
    - Selector: AVMovieTrack
    - Introduced: 10.10
  */

@objc(AVMovieTrack) protocol AVMovieTrackExports: JSExport, AVAssetTrackExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: alternateGroupID
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var alternateGroupID: Int { @objc get }

  /**
    - Selector: mediaDataStorage
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var mediaDataStorage: AVMediaDataStorage? { @objc get }

  /**
    - Selector: mediaDecodeTimeRange
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var mediaDecodeTimeRange: CMTimeRange { @objc get }

  /**
    - Selector: mediaPresentationTimeRange
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var mediaPresentationTimeRange: CMTimeRange { @objc get }
}

extension AVMovieTrack: AVMovieTrackExports {
}
