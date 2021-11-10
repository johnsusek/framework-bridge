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
    - Selector: AVAudioMixingDestination
    - Introduced: 10.11
  */

@objc(AVAudioMixingDestination) protocol AVAudioMixingDestinationExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: connectionPoint
  */
  @objc var connectionPoint: AVAudioConnectionPoint { @objc get }
}

extension AVAudioMixingDestination: AVAudioMixingDestinationExports {
}
