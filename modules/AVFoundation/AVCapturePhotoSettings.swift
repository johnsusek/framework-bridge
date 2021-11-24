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
    - Selector: AVCapturePhotoSettings
    - Introduced: 10.15
  */

@objc(AVCapturePhotoSettings) protocol AVCapturePhotoSettingsExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: photoSettingsFromPhotoSettings:
  */
  @objc static func createWithFrom(_ from: AVCapturePhotoSettings) -> Self

  /**
    - Selector: photoSettingsWithFormat:
  */
  @objc static func createWithFormat(_ format: [String: Any]?) -> Self

  // Own Instance Properties

  /**
    - Selector: format
  */
  @objc var format: [String: Any]? { @objc get }

  /**
    - Selector: processedFileType
  */
  @objc var processedFileType: AVFileType? { @objc get }

  /**
    - Selector: uniqueID
  */
  @objc var uniqueID: Int64 { @objc get }
}

extension AVCapturePhotoSettings: AVCapturePhotoSettingsExports {

  /**
    - Selector: photoSettingsFromPhotoSettings:
  */
  @objc public static func createWithFrom(_ from: AVCapturePhotoSettings) -> Self {
    return self.init(from: from)
  }


  /**
    - Selector: photoSettingsWithFormat:
  */
  @objc public static func createWithFormat(_ format: [String: Any]?) -> Self {
    return self.init(format: format)
  }

}
