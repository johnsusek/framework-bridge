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
    - Selector: AVPlayerItemMetadataCollector
    - Introduced: 10.11.3
  */

@objc(AVPlayerItemMetadataCollector) protocol AVPlayerItemMetadataCollectorExports: JSExport, AVPlayerItemMediaDataCollectorExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setDelegate:queue:
  */
  @objc func setDelegate(_: AVPlayerItemMetadataCollectorPushDelegate?, queue: DispatchQueue?)

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AVPlayerItemMetadataCollectorPushDelegate? { @objc get }

  /**
    - Selector: delegateQueue
  */
  @objc var delegateQueue: DispatchQueue? { @objc get }
}

extension AVPlayerItemMetadataCollector: AVPlayerItemMetadataCollectorExports {
}
