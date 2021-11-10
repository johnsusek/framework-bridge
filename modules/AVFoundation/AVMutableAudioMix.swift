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
    - Selector: AVMutableAudioMix
    - Introduced: 10.7
  */

@objc(AVMutableAudioMix) protocol AVMutableAudioMixExports: JSExport, AVAudioMixExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: inputParameters
  */
  @objc var inputParameters: [AVAudioMixInputParameters] { @objc get @objc (setInputParameters:) set }
}

extension AVMutableAudioMix: AVMutableAudioMixExports {
}
