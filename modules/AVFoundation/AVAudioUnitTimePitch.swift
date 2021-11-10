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
    - Selector: AVAudioUnitTimePitch
    - Introduced: 10.10
  */

@objc(AVAudioUnitTimePitch) protocol AVAudioUnitTimePitchExports: JSExport, AVAudioUnitTimeEffectExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiateWithComponentDescriptionWithOptionsWithCompletionHandler(_ with: AudioComponentDescription, _ options: AudioComponentInstantiationOptions, _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: overlap
  */
  @objc var overlap: Float { @objc get @objc (setOverlap:) set }

  /**
    - Selector: pitch
  */
  @objc var pitch: Float { @objc get @objc (setPitch:) set }

  /**
    - Selector: rate
  */
  @objc var rate: Float { @objc get @objc (setRate:) set }
}

extension AVAudioUnitTimePitch: AVAudioUnitTimePitchExports {
}
