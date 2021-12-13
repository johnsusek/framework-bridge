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
    - Selector: AVAssetResourceLoader
    - Introduced: 10.9
  */

@objc(AVAssetResourceLoader) protocol AVAssetResourceLoaderExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setDelegate:queue:
  */
  @objc func setDelegate(_ p0: AVAssetResourceLoaderDelegate?, queue: DispatchQueue?)

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AVAssetResourceLoaderDelegate? { @objc get }

  /**
    - Selector: delegateQueue
  */
  @objc var delegateQueue: DispatchQueue? { @objc get }

  /**
    - Selector: preloadsEligibleContentKeys
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var preloadsEligibleContentKeys: Bool { @objc get @objc (setPreloadsEligibleContentKeys:) set }
}

extension AVAssetResourceLoader: AVAssetResourceLoaderExports {
}
