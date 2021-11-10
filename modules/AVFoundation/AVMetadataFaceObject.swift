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
    - Selector: AVMetadataFaceObject
    - Introduced: 10.10
  */

@objc(AVMetadataFaceObject) protocol AVMetadataFaceObjectExports: JSExport, AVMetadataObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: faceID
  */
  @objc var faceID: Int { @objc get }

  /**
    - Selector: hasRollAngle
  */
  @objc var hasRollAngle: Bool { @objc get }

  /**
    - Selector: hasYawAngle
  */
  @objc var hasYawAngle: Bool { @objc get }

  /**
    - Selector: rollAngle
  */
  @objc var rollAngle: CGFloat { @objc get }

  /**
    - Selector: yawAngle
  */
  @objc var yawAngle: CGFloat { @objc get }
}

extension AVMetadataFaceObject: AVMetadataFaceObjectExports {
}
