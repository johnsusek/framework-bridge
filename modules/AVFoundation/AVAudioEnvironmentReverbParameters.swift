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
    - Selector: AVAudioEnvironmentReverbParameters
    - Introduced: 10.10
  */

@objc(AVAudioEnvironmentReverbParameters) protocol AVAudioEnvironmentReverbParametersExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: loadFactoryReverbPreset:
  */
  @objc func loadFactoryReverbPreset(_: AVAudioUnitReverbPreset)

  // Own Instance Properties

  /**
    - Selector: enable
  */
  @objc var enable: Bool { @objc get @objc (setEnable:) set }

  /**
    - Selector: filterParameters
  */
  @objc var filterParameters: AVAudioUnitEQFilterParameters { @objc get }

  /**
    - Selector: level
  */
  @objc var level: Float { @objc get @objc (setLevel:) set }
}

extension AVAudioEnvironmentReverbParameters: AVAudioEnvironmentReverbParametersExports {
}
