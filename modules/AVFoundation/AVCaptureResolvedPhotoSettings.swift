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
    - Selector: AVCaptureResolvedPhotoSettings
    - Introduced: 10.15
  */

@objc(AVCaptureResolvedPhotoSettings) protocol AVCaptureResolvedPhotoSettingsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: expectedPhotoCount
  */
  @objc var expectedPhotoCount: Int { @objc get }

  /**
    - Selector: photoDimensions
  */
  @objc var photoDimensions: CMVideoDimensions { @objc get }

  /**
    - Selector: uniqueID
  */
  @objc var uniqueID: Int64 { @objc get }
}

extension AVCaptureResolvedPhotoSettings: AVCaptureResolvedPhotoSettingsExports {
}
