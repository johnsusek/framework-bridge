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
    - Selector: AVAudioBuffer
    - Introduced: 10.10
  */

@objc(AVAudioBuffer) protocol AVAudioBufferExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: audioBufferList
  */
  @objc var audioBufferList: UnsafePointer<AudioBufferList> { @objc get }

  /**
    - Selector: format
  */
  @objc var format: AVAudioFormat { @objc get }

  /**
    - Selector: mutableAudioBufferList
  */
  @objc var mutableAudioBufferList: UnsafeMutablePointer<AudioBufferList> { @objc get }
}

extension AVAudioBuffer: AVAudioBufferExports {
}
