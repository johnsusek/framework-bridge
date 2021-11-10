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
    - Selector: AVCaptureAudioDataOutput
    - Introduced: 10.7
  */

@objc(AVCaptureAudioDataOutput) protocol AVCaptureAudioDataOutputExports: JSExport, AVCaptureOutputExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: recommendedAudioSettingsForAssetWriterWithOutputFileType:
    - Introduced: 10.15
  */
  @objc (recommendedAudioSettingsForAssetWriterWithOutputFileType:) @available(OSX 10.15, *) func recommendedAudioSettingsForAssetWriter(writingTo: AVFileType) -> [AnyHashable: Any]?

  /**
    - Selector: setSampleBufferDelegate:queue:
  */
  @objc func setSampleBufferDelegate(_: AVCaptureAudioDataOutputSampleBufferDelegate?, queue: DispatchQueue?)

  // Own Instance Properties

  /**
    - Selector: audioSettings
  */
  @objc var audioSettings: [String: Any]! { @objc get @objc (setAudioSettings:) set }

  /**
    - Selector: sampleBufferCallbackQueue
  */
  @objc var sampleBufferCallbackQueue: DispatchQueue? { @objc get }

  /**
    - Selector: sampleBufferDelegate
  */
  @objc var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate? { @objc get }
}

extension AVCaptureAudioDataOutput: AVCaptureAudioDataOutputExports {
}
