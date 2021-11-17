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
    - Selector: AVAudioUnit
    - Introduced: 10.10
  */

@objc(AVAudioUnit) protocol AVAudioUnitExports: JSExport, AVAudioNodeExports {
  // Static Methods

  /**
    - Selector: instantiateWithComponentDescription:options:completionHandler:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func instantiate(with: AudioComponentDescription, options: AudioComponentInstantiationOptions, completionHandler: JSValue)

  // Instance Methods

  /**
    - Selector: loadAudioUnitPresetAtURL:error:
  */
  // throws - @objc func loadAudioUnitPresetAtURL(url: URL) -> Bool

  // Own Instance Properties

  /**
    - Selector: audioComponentDescription
  */
  @objc var audioComponentDescription: AudioComponentDescription { @objc get }

  /**
    - Selector: audioUnit
  */
  @objc var audioUnit: AudioUnit { @objc get }

  /**
    - Selector: manufacturerName
  */
  @objc var manufacturerName: String { @objc get }

  /**
    - Selector: name
  */
  @objc var name: String { @objc get }

  /**
    - Selector: version
  */
  @objc var version: Int { @objc get }
}

extension AVAudioUnit: AVAudioUnitExports {
}
