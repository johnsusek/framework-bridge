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
    - Selector: AVAudioEnvironmentNode
    - Introduced: 10.10
  */

@objc(AVAudioEnvironmentNode) protocol AVAudioEnvironmentNodeExports: JSExport, AVAudioNodeExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: applicableRenderingAlgorithms
  */
  @objc var applicableRenderingAlgorithms: [NSNumber] { @objc get }

  /**
    - Selector: distanceAttenuationParameters
  */
  @objc var distanceAttenuationParameters: AVAudioEnvironmentDistanceAttenuationParameters { @objc get }

  /**
    - Selector: listenerAngularOrientation
  */
  @objc var listenerAngularOrientation: AVAudio3DAngularOrientation { @objc get @objc (setListenerAngularOrientation:) set }

  /**
    - Selector: listenerPosition
  */
  @objc var listenerPosition: AVAudio3DPoint { @objc get @objc (setListenerPosition:) set }

  /**
    - Selector: listenerVectorOrientation
  */
  @objc var listenerVectorOrientation: AVAudio3DVectorOrientation { @objc get @objc (setListenerVectorOrientation:) set }

  /**
    - Selector: nextAvailableInputBus
  */
  @objc var nextAvailableInputBus: Int { @objc get }

  /**
    - Selector: outputType
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var outputType: AVAudioEnvironmentOutputType { @objc get @objc (setOutputType:) set }

  /**
    - Selector: outputVolume
  */
  @objc var outputVolume: Float { @objc get @objc (setOutputVolume:) set }

  /**
    - Selector: reverbParameters
  */
  @objc var reverbParameters: AVAudioEnvironmentReverbParameters { @objc get }
}

extension AVAudioEnvironmentNode: AVAudioEnvironmentNodeExports {
}
