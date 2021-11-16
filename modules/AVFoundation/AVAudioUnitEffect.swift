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
    - Selector: AVAudioUnitEffect
    - Introduced: 10.10
  */

@objc(AVAudioUnitEffect) protocol AVAudioUnitEffectExports: JSExport, AVAudioUnitExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiateWithComponentDescriptionWithOptionsWithCallback(_ with: AudioComponentDescription, _ options: AudioComponentInstantiationOptions, _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: bypass
  */
  @objc var bypass: Bool { @objc get @objc (setBypass:) set }
}

extension AVAudioUnitEffect: AVAudioUnitEffectExports {
}
