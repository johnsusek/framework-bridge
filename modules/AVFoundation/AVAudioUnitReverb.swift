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
    - Selector: AVAudioUnitReverb
    - Introduced: 10.10
  */

@objc(AVAudioUnitReverb) protocol AVAudioUnitReverbExports: JSExport, AVAudioUnitEffectExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiate(with: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: JSValue)

  // Instance Methods

  /**
    - Selector: loadFactoryPreset:
  */
  @objc func loadFactoryPreset(_ p0: AVAudioUnitReverbPreset)

  // Own Instance Properties

  /**
    - Selector: wetDryMix
  */
  @objc var wetDryMix: Float { @objc get @objc (setWetDryMix:) set }
}

extension AVAudioUnitReverb: AVAudioUnitReverbExports {
}
