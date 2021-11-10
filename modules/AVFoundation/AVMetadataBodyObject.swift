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
    - Selector: AVMetadataBodyObject
    - Introduced: 10.15
  */

@objc(AVMetadataBodyObject) protocol AVMetadataBodyObjectExports: JSExport, AVMetadataObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: bodyID
  */
  @objc var bodyID: Int { @objc get }
}

extension AVMetadataBodyObject: AVMetadataBodyObjectExports {
}
