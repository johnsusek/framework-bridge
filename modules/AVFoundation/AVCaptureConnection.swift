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
    - Selector: AVCaptureConnection
    - Introduced: 10.7
  */

@objc(AVCaptureConnection) protocol AVCaptureConnectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: connectionWithInputPort:videoPreviewLayer:
  */
  @objc static func createWithInputPort_VideoPreviewLayer(_ inputPort: AVCaptureInput.Port, _ videoPreviewLayer: AVCaptureVideoPreviewLayer) -> Self

  /**
    - Selector: connectionWithInputPorts:output:
  */
  @objc static func createWithInputPorts_Output(_ inputPorts: [AVCaptureInput.Port], _ output: AVCaptureOutput) -> Self

  // Own Instance Properties

  /**
    - Selector: active
  */
  @objc var isActive: Bool { @objc get }

  /**
    - Selector: audioChannels
  */
  @objc var audioChannels: [AVCaptureAudioChannel] { @objc get }

  /**
    - Selector: automaticallyAdjustsVideoMirroring
  */
  @objc var automaticallyAdjustsVideoMirroring: Bool { @objc get @objc (setAutomaticallyAdjustsVideoMirroring:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: inputPorts
  */
  @objc var inputPorts: [AVCaptureInput.Port] { @objc get }

  /**
    - Selector: output
  */
  @objc var output: AVCaptureOutput? { @objc get }

  /**
    - Selector: supportsVideoFieldMode
  */
  @objc var isVideoFieldModeSupported: Bool { @objc get }

  /**
    - Selector: supportsVideoMaxFrameDuration
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var isVideoMaxFrameDurationSupported: Bool { @objc get }

  /**
    - Selector: supportsVideoMinFrameDuration
  */
  @objc var isVideoMinFrameDurationSupported: Bool { @objc get }

  /**
    - Selector: supportsVideoMirroring
  */
  @objc var isVideoMirroringSupported: Bool { @objc get }

  /**
    - Selector: supportsVideoOrientation
  */
  @objc var isVideoOrientationSupported: Bool { @objc get }

  /**
    - Selector: videoFieldMode
  */
  @objc var videoFieldMode: AVVideoFieldMode { @objc get @objc (setVideoFieldMode:) set }

  /**
    - Selector: videoMaxFrameDuration
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var videoMaxFrameDuration: CMTime { @objc get @objc (setVideoMaxFrameDuration:) set }

  /**
    - Selector: videoMinFrameDuration
  */
  @objc var videoMinFrameDuration: CMTime { @objc get @objc (setVideoMinFrameDuration:) set }

  /**
    - Selector: videoMirrored
  */
  @objc var isVideoMirrored: Bool { @objc get @objc (setVideoMirrored:) set }

  /**
    - Selector: videoOrientation
  */
  @objc var videoOrientation: AVCaptureVideoOrientation { @objc get @objc (setVideoOrientation:) set }

  /**
    - Selector: videoPreviewLayer
  */
  @objc var videoPreviewLayer: AVCaptureVideoPreviewLayer? { @objc get }
}

extension AVCaptureConnection: AVCaptureConnectionExports {

  /**
    - Selector: connectionWithInputPort:videoPreviewLayer:
  */
  @objc public static func createWithInputPort_VideoPreviewLayer(_ inputPort: AVCaptureInput.Port, _ videoPreviewLayer: AVCaptureVideoPreviewLayer) -> Self {
    return self.init(inputPort: inputPort, videoPreviewLayer: videoPreviewLayer)
  }


  /**
    - Selector: connectionWithInputPorts:output:
  */
  @objc public static func createWithInputPorts_Output(_ inputPorts: [AVCaptureInput.Port], _ output: AVCaptureOutput) -> Self {
    return self.init(inputPorts: inputPorts, output: output)
  }

}
