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
    - Selector: AVCaptureAudioPreviewOutput
    - Introduced: 10.7
  */

@objc(AVCaptureAudioPreviewOutput) protocol AVCaptureAudioPreviewOutputExports: JSExport, AVCaptureOutputExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: outputDeviceUniqueID
  */
  @objc var outputDeviceUniqueID: String? { @objc get @objc (setOutputDeviceUniqueID:) set }

  /**
    - Selector: volume
  */
  @objc var volume: Float { @objc get @objc (setVolume:) set }
}

extension AVCaptureAudioPreviewOutput: AVCaptureAudioPreviewOutputExports {
}
