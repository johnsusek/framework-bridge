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
    - Selector: AVAudioIONode
    - Introduced: 10.10
  */

@objc(AVAudioIONode) protocol AVAudioIONodeExports: JSExport, AVAudioNodeExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setVoiceProcessingEnabled:error:
    - Introduced: 10.15
  */
  // throws - @objc @available(OSX 10.15, *) func setVoiceProcessingEnabled(enabled: Bool) -> Bool

  // Own Instance Properties

  /**
    - Selector: audioUnit
  */
  @objc var audioUnit: AudioUnit? { @objc get }

  /**
    - Selector: presentationLatency
  */
  @objc var presentationLatency: TimeInterval { @objc get }

  /**
    - Selector: voiceProcessingEnabled
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isVoiceProcessingEnabled: Bool { @objc get }
}

extension AVAudioIONode: AVAudioIONodeExports {
}
