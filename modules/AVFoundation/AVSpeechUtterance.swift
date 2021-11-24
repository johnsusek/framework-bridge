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
    - Selector: AVSpeechUtterance
    - Introduced: 10.14
  */

@objc(AVSpeechUtterance) protocol AVSpeechUtteranceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: speechUtteranceWithAttributedString:
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func createWithAttributedString(_ attributedString: NSAttributedString) -> Self

  /**
    - Selector: speechUtteranceWithString:
  */
  @objc static func createWithString(_ string: String) -> Self

  // Own Instance Properties

  /**
    - Selector: attributedSpeechString
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var attributedSpeechString: NSAttributedString { @objc get }

  /**
    - Selector: pitchMultiplier
  */
  @objc var pitchMultiplier: Float { @objc get @objc (setPitchMultiplier:) set }

  /**
    - Selector: postUtteranceDelay
  */
  @objc var postUtteranceDelay: TimeInterval { @objc get @objc (setPostUtteranceDelay:) set }

  /**
    - Selector: preUtteranceDelay
  */
  @objc var preUtteranceDelay: TimeInterval { @objc get @objc (setPreUtteranceDelay:) set }

  /**
    - Selector: rate
  */
  @objc var rate: Float { @objc get @objc (setRate:) set }

  /**
    - Selector: speechString
  */
  @objc var speechString: String { @objc get }

  /**
    - Selector: voice
  */
  @objc var voice: AVSpeechSynthesisVoice? { @objc get @objc (setVoice:) set }

  /**
    - Selector: volume
  */
  @objc var volume: Float { @objc get @objc (setVolume:) set }
}

extension AVSpeechUtterance: AVSpeechUtteranceExports {

  /**
    - Selector: speechUtteranceWithAttributedString:
    - Introduced: 10.14
  */
  @objc public static func createWithAttributedString(_ attributedString: NSAttributedString) -> Self {
    return self.init(attributedString: attributedString)
  }


  /**
    - Selector: speechUtteranceWithString:
  */
  @objc public static func createWithString(_ string: String) -> Self {
    return self.init(string: string)
  }

}
