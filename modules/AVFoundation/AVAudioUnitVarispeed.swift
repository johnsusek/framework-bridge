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
    - Selector: AVAudioUnitVarispeed
    - Introduced: 10.10
  */

@objc(AVAudioUnitVarispeed) protocol AVAudioUnitVarispeedExports: JSExport, AVAudioUnitTimeEffectExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiateWithComponentDescriptionWithOptionsWithCompletionHandler(with: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: rate
  */
  @objc var rate: Float { @objc get @objc (setRate:) set }
}

extension AVAudioUnitVarispeed: AVAudioUnitVarispeedExports {
}
