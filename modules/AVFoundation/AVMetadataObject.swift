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
    - Selector: AVMetadataObject
    - Introduced: 10.10
  */

@objc(AVMetadataObject) protocol AVMetadataObjectExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: bounds
  */
  @objc var bounds: CGRect { @objc get }

  /**
    - Selector: duration
  */
  @objc var duration: CMTime { @objc get }

  /**
    - Selector: time
  */
  @objc var time: CMTime { @objc get }

  /**
    - Selector: type
  */
  @objc var type: AVMetadataObject.ObjectType { @objc get }
}

extension AVMetadataObject: AVMetadataObjectExports {
}
