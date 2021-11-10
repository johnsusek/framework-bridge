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
    - Selector: AVAudioMixerNode
    - Introduced: 10.10
  */

@objc(AVAudioMixerNode) protocol AVAudioMixerNodeExports: JSExport, AVAudioNodeExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: nextAvailableInputBus
  */
  @objc var nextAvailableInputBus: Int { @objc get }

  /**
    - Selector: outputVolume
  */
  @objc var outputVolume: Float { @objc get @objc (setOutputVolume:) set }
}

extension AVAudioMixerNode: AVAudioMixerNodeExports {
}
