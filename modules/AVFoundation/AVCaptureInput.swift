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
    - Selector: AVCaptureInput
    - Introduced: 10.7
  */

@objc(AVCaptureInput) protocol AVCaptureInputExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: ports
  */
  @objc var ports: [AVCaptureInput.Port] { @objc get }
}

extension AVCaptureInput: AVCaptureInputExports {
}
