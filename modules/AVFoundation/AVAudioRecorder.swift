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
    - Selector: AVAudioRecorder
    - Introduced: 10.7
  */

@objc(AVAudioRecorder) protocol AVAudioRecorderExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: averagePowerForChannel:
  */
  @objc (averagePowerForChannel:) func averagePower(forChannel: Int) -> Float

  /**
    - Selector: deleteRecording
  */
  @objc func deleteRecording() -> Bool

  /**
    - Selector: pause
  */
  @objc func pause()

  /**
    - Selector: peakPowerForChannel:
  */
  @objc (peakPowerForChannel:) func peakPower(forChannel: Int) -> Float

  /**
    - Selector: prepareToRecord
  */
  @objc func prepareToRecord() -> Bool

  /**
    - Selector: record
  */
  @objc func record() -> Bool

  /**
    - Selector: recordAtTime:
    - Introduced: 10.9
  */
  @objc (recordAtTime:) @available(OSX 10.9, *) func record(atTime: TimeInterval) -> Bool

  /**
    - Selector: recordAtTime:forDuration:
    - Introduced: 10.9
  */
  @objc (recordAtTime:forDuration:) @available(OSX 10.9, *) func record(atTime: TimeInterval, forDuration: TimeInterval) -> Bool

  /**
    - Selector: recordForDuration:
  */
  @objc (recordForDuration:) func record(forDuration: TimeInterval) -> Bool

  /**
    - Selector: stop
  */
  @objc func stop()

  /**
    - Selector: updateMeters
  */
  @objc func updateMeters()

  // Own Instance Properties

  /**
    - Selector: currentTime
  */
  @objc var currentTime: TimeInterval { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: AVAudioRecorderDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: deviceCurrentTime
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var deviceCurrentTime: TimeInterval { @objc get }

  /**
    - Selector: format
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var format: AVAudioFormat { @objc get }

  /**
    - Selector: meteringEnabled
  */
  @objc var isMeteringEnabled: Bool { @objc get @objc (setMeteringEnabled:) set }

  /**
    - Selector: recording
  */
  @objc var isRecording: Bool { @objc get }

  /**
    - Selector: settings
  */
  @objc var settings: [String: Any] { @objc get }

  /**
    - Selector: url
  */
  @objc var url: URL { @objc get }
}

extension AVAudioRecorder: AVAudioRecorderExports {
}
