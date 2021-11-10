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
    - Selector: AVCaptureAudioFileOutput
    - Introduced: 10.7
  */

@objc(AVCaptureAudioFileOutput) protocol AVCaptureAudioFileOutputExports: JSExport, AVCaptureFileOutputExports {
  // Static Methods

  /**
    - Selector: availableOutputFileTypes
  */
  @objc static func availableOutputFileTypes() -> [AVFileType]

  // Instance Methods

  /**
    - Selector: startRecordingToOutputFileURL:outputFileType:recordingDelegate:
  */
  @objc (startRecordingToOutputFileURL:outputFileType:recordingDelegate:) func startRecording(to: URL, outputFileType: AVFileType, recordingDelegate: AVCaptureFileOutputRecordingDelegate)

  // Own Instance Properties

  /**
    - Selector: audioSettings
  */
  @objc var audioSettings: [String: Any]? { @objc get @objc (setAudioSettings:) set }

  /**
    - Selector: metadata
  */
  @objc var metadata: [AVMetadataItem] { @objc get @objc (setMetadata:) set }
}

extension AVCaptureAudioFileOutput: AVCaptureAudioFileOutputExports {
}
