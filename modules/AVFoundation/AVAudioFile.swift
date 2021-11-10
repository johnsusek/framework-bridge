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
    - Selector: AVAudioFile
    - Introduced: 10.10
  */

@objc(AVAudioFile) protocol AVAudioFileExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: readIntoBuffer:error:
  */
  // throws - @objc func readIntoBuffer(error: AVAudioPCMBuffer) -> Bool

  /**
    - Selector: readIntoBuffer:frameCount:error:
  */
  // throws - @objc func readIntoBuffer(frameCount: AVAudioPCMBuffer, error: AVAudioFrameCount) -> Bool

  /**
    - Selector: writeFromBuffer:error:
  */
  // throws - @objc func writeFromBuffer(error: AVAudioPCMBuffer) -> Bool

  // Own Instance Properties

  /**
    - Selector: fileFormat
  */
  @objc var fileFormat: AVAudioFormat { @objc get }

  /**
    - Selector: framePosition
  */
  @objc var framePosition: Int64 { @objc get @objc (setFramePosition:) set }

  /**
    - Selector: length
  */
  @objc var length: Int64 { @objc get }

  /**
    - Selector: processingFormat
  */
  @objc var processingFormat: AVAudioFormat { @objc get }

  /**
    - Selector: url
  */
  @objc var url: URL { @objc get }
}

extension AVAudioFile: AVAudioFileExports {
}
