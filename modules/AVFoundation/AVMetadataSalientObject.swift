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
    - Selector: AVMetadataSalientObject
    - Introduced: 10.15
  */

@objc(AVMetadataSalientObject) protocol AVMetadataSalientObjectExports: JSExport, AVMetadataObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: objectID
  */
  @objc var objectID: Int { @objc get }
}

extension AVMetadataSalientObject: AVMetadataSalientObjectExports {
}
