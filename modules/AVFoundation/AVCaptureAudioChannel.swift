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
    - Selector: AVCaptureAudioChannel
    - Introduced: 10.7
  */

@objc(AVCaptureAudioChannel) protocol AVCaptureAudioChannelExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: averagePowerLevel
  */
  @objc var averagePowerLevel: Float { @objc get }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: peakHoldLevel
  */
  @objc var peakHoldLevel: Float { @objc get }

  /**
    - Selector: volume
  */
  @objc var volume: Float { @objc get @objc (setVolume:) set }
}

extension AVCaptureAudioChannel: AVCaptureAudioChannelExports {
}
