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
    - Selector: AVAudioConnectionPoint
    - Introduced: 10.11
  */

@objc(AVAudioConnectionPoint) protocol AVAudioConnectionPointExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: bus
  */
  @objc var bus: Int { @objc get }

  /**
    - Selector: node
  */
  @objc var node: AVAudioNode? { @objc get }
}

extension AVAudioConnectionPoint: AVAudioConnectionPointExports {
}
