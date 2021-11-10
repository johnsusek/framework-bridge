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
    - Selector: AVAudioMix
    - Introduced: 10.7
  */

@objc(AVAudioMix) protocol AVAudioMixExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: inputParameters
  */
  @objc var inputParameters: [AVAudioMixInputParameters] { @objc get }
}

extension AVAudioMix: AVAudioMixExports {
}
