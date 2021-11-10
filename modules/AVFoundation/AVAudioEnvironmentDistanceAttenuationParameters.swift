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
    - Selector: AVAudioEnvironmentDistanceAttenuationParameters
    - Introduced: 10.10
  */

@objc(AVAudioEnvironmentDistanceAttenuationParameters) protocol AVAudioEnvironmentDistanceAttenuationParametersExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: distanceAttenuationModel
  */
  @objc var distanceAttenuationModel: AVAudioEnvironmentDistanceAttenuationModel { @objc get @objc (setDistanceAttenuationModel:) set }

  /**
    - Selector: maximumDistance
  */
  @objc var maximumDistance: Float { @objc get @objc (setMaximumDistance:) set }

  /**
    - Selector: referenceDistance
  */
  @objc var referenceDistance: Float { @objc get @objc (setReferenceDistance:) set }

  /**
    - Selector: rolloffFactor
  */
  @objc var rolloffFactor: Float { @objc get @objc (setRolloffFactor:) set }
}

extension AVAudioEnvironmentDistanceAttenuationParameters: AVAudioEnvironmentDistanceAttenuationParametersExports {
}
