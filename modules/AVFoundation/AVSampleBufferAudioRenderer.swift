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
    - Selector: AVSampleBufferAudioRenderer
    - Introduced: 10.13
  */

@objc(AVSampleBufferAudioRenderer) protocol AVSampleBufferAudioRendererExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: flushFromSourceTime:completionHandler:
  */
  // jsvalue @objc func flush(fromSourceTime: CMTime, completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: audioOutputDeviceUniqueID
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var audioOutputDeviceUniqueID: String? { @objc get @objc (setAudioOutputDeviceUniqueID:) set }

  /**
    - Selector: audioTimePitchAlgorithm
  */
  @objc var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm { @objc get @objc (setAudioTimePitchAlgorithm:) set }

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: muted
  */
  @objc var isMuted: Bool { @objc get @objc (setMuted:) set }

  /**
    - Selector: status
  */
  @objc var status: AVQueuedSampleBufferRenderingStatus { @objc get }

  /**
    - Selector: volume
  */
  @objc var volume: Float { @objc get @objc (setVolume:) set }
}

extension AVSampleBufferAudioRenderer: AVSampleBufferAudioRendererExports {
}
