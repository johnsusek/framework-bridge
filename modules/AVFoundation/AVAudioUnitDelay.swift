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
    - Selector: AVAudioUnitDelay
    - Introduced: 10.10
  */

@objc(AVAudioUnitDelay) protocol AVAudioUnitDelayExports: JSExport, AVAudioUnitEffectExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiateWithComponentDescriptionWithOptionsWithCallback(_ with: AudioComponentDescription, _ options: AudioComponentInstantiationOptions, _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: delayTime
  */
  @objc var delayTime: TimeInterval { @objc get @objc (setDelayTime:) set }

  /**
    - Selector: feedback
  */
  @objc var feedback: Float { @objc get @objc (setFeedback:) set }

  /**
    - Selector: lowPassCutoff
  */
  @objc var lowPassCutoff: Float { @objc get @objc (setLowPassCutoff:) set }

  /**
    - Selector: wetDryMix
  */
  @objc var wetDryMix: Float { @objc get @objc (setWetDryMix:) set }
}

extension AVAudioUnitDelay: AVAudioUnitDelayExports {
}
