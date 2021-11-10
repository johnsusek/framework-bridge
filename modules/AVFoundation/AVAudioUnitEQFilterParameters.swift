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
    - Selector: AVAudioUnitEQFilterParameters
    - Introduced: 10.10
  */

@objc(AVAudioUnitEQFilterParameters) protocol AVAudioUnitEQFilterParametersExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: bandwidth
  */
  @objc var bandwidth: Float { @objc get @objc (setBandwidth:) set }

  /**
    - Selector: bypass
  */
  @objc var bypass: Bool { @objc get @objc (setBypass:) set }

  /**
    - Selector: filterType
  */
  @objc var filterType: AVAudioUnitEQFilterType { @objc get @objc (setFilterType:) set }

  /**
    - Selector: frequency
  */
  @objc var frequency: Float { @objc get @objc (setFrequency:) set }

  /**
    - Selector: gain
  */
  @objc var gain: Float { @objc get @objc (setGain:) set }
}

extension AVAudioUnitEQFilterParameters: AVAudioUnitEQFilterParametersExports {
}
