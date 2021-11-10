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
    - Selector: AVCaptureScreenInput
    - Introduced: 10.7
  */

@objc(AVCaptureScreenInput) protocol AVCaptureScreenInputExports: JSExport, AVCaptureInputExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: capturesCursor
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var capturesCursor: Bool { @objc get @objc (setCapturesCursor:) set }

  /**
    - Selector: capturesMouseClicks
  */
  @objc var capturesMouseClicks: Bool { @objc get @objc (setCapturesMouseClicks:) set }

  /**
    - Selector: cropRect
  */
  @objc var cropRect: CGRect { @objc get @objc (setCropRect:) set }

  /**
    - Selector: minFrameDuration
  */
  @objc var minFrameDuration: CMTime { @objc get @objc (setMinFrameDuration:) set }

  /**
    - Selector: scaleFactor
  */
  @objc var scaleFactor: CGFloat { @objc get @objc (setScaleFactor:) set }
}

extension AVCaptureScreenInput: AVCaptureScreenInputExports {
}
