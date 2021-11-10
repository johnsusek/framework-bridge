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
    - Selector: AVCaptureFileOutput
    - Introduced: 10.7
  */

@objc(AVCaptureFileOutput) protocol AVCaptureFileOutputExports: JSExport, AVCaptureOutputExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: pauseRecording
  */
  @objc func pauseRecording()

  /**
    - Selector: resumeRecording
  */
  @objc func resumeRecording()

  /**
    - Selector: startRecordingToOutputFileURL:recordingDelegate:
  */
  @objc (startRecordingToOutputFileURL:recordingDelegate:) func startRecording(to: URL, recordingDelegate: AVCaptureFileOutputRecordingDelegate)

  /**
    - Selector: stopRecording
  */
  @objc func stopRecording()

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AVCaptureFileOutputDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: maxRecordedDuration
  */
  @objc var maxRecordedDuration: CMTime { @objc get @objc (setMaxRecordedDuration:) set }

  /**
    - Selector: maxRecordedFileSize
  */
  @objc var maxRecordedFileSize: Int64 { @objc get @objc (setMaxRecordedFileSize:) set }

  /**
    - Selector: minFreeDiskSpaceLimit
  */
  @objc var minFreeDiskSpaceLimit: Int64 { @objc get @objc (setMinFreeDiskSpaceLimit:) set }

  /**
    - Selector: outputFileURL
  */
  @objc var outputFileURL: URL? { @objc get }

  /**
    - Selector: recordedDuration
  */
  @objc var recordedDuration: CMTime { @objc get }

  /**
    - Selector: recordedFileSize
  */
  @objc var recordedFileSize: Int64 { @objc get }

  /**
    - Selector: recording
  */
  @objc var isRecording: Bool { @objc get }

  /**
    - Selector: recordingPaused
  */
  @objc var isRecordingPaused: Bool { @objc get }
}

extension AVCaptureFileOutput: AVCaptureFileOutputExports {
}
