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
    - Selector: AVAudioUnitTimeEffect
    - Introduced: 10.10
  */

@objc(AVAudioUnitTimeEffect) protocol AVAudioUnitTimeEffectExports: JSExport, AVAudioUnitExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiate(with: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: bypass
  */
  @objc var bypass: Bool { @objc get @objc (setBypass:) set }
}

extension AVAudioUnitTimeEffect: AVAudioUnitTimeEffectExports {
}
