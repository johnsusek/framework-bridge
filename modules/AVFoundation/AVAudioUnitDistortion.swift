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
    - Selector: AVAudioUnitDistortion
    - Introduced: 10.10
  */

@objc(AVAudioUnitDistortion) protocol AVAudioUnitDistortionExports: JSExport, AVAudioUnitEffectExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiateWithComponentDescriptionWithOptionsWithCallback(_ with: AudioComponentDescription, _ options: AudioComponentInstantiationOptions, _ completionHandler: JSValue)

  // Instance Methods

  /**
    - Selector: loadFactoryPreset:
  */
  @objc func loadFactoryPreset(_: AVAudioUnitDistortionPreset)

  // Own Instance Properties

  /**
    - Selector: preGain
  */
  @objc var preGain: Float { @objc get @objc (setPreGain:) set }

  /**
    - Selector: wetDryMix
  */
  @objc var wetDryMix: Float { @objc get @objc (setWetDryMix:) set }
}

extension AVAudioUnitDistortion: AVAudioUnitDistortionExports {
}
