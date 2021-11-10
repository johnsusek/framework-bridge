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
    - Selector: AVMediaDataStorage
    - Introduced: 10.11
  */

@objc(AVMediaDataStorage) protocol AVMediaDataStorageExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: URL
  */
  @objc (URL) func url() -> URL?
}

extension AVMediaDataStorage: AVMediaDataStorageExports {
}
