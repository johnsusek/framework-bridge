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
    - Selector: AVAudioUnitEQ
    - Introduced: 10.10
  */

@objc(AVAudioUnitEQ) protocol AVAudioUnitEQExports: JSExport, AVAudioUnitEffectExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiateWithComponentDescriptionWithOptionsWithCompletionHandler(_ with: AudioComponentDescription, _ options: AudioComponentInstantiationOptions, _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: bands
  */
  @objc var bands: [AVAudioUnitEQFilterParameters] { @objc get }

  /**
    - Selector: globalGain
  */
  @objc var globalGain: Float { @objc get @objc (setGlobalGain:) set }
}

extension AVAudioUnitEQ: AVAudioUnitEQExports {
}
