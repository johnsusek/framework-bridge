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
    - Selector: AVSpeechSynthesisVoice
    - Introduced: 10.14
  */

@objc(AVSpeechSynthesisVoice) protocol AVSpeechSynthesisVoiceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: currentLanguageCode
  */
  @objc static func currentLanguageCode() -> String

  /**
    - Selector: speechVoices
  */
  @objc static func speechVoices() -> [AVSpeechSynthesisVoice]

  /**
    - Selector: voiceWithIdentifier:
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static func createWithVoiceWithIdentifier(_ identifier: String) -> AVSpeechSynthesisVoice?

  /**
    - Selector: voiceWithLanguage:
  */
  @objc static func createWithVoiceWithLanguage(_ language: String?) -> AVSpeechSynthesisVoice?

  // Own Instance Properties

  /**
    - Selector: audioFileSettings
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var audioFileSettings: [String: Any] { @objc get }

  /**
    - Selector: gender
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var gender: AVSpeechSynthesisVoiceGender { @objc get }

  /**
    - Selector: identifier
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var identifier: String { @objc get }

  /**
    - Selector: language
  */
  @objc var language: String { @objc get }

  /**
    - Selector: name
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var name: String { @objc get }

  /**
    - Selector: quality
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var quality: AVSpeechSynthesisVoiceQuality { @objc get }
}

extension AVSpeechSynthesisVoice: AVSpeechSynthesisVoiceExports {

  /**
    - Selector: voiceWithIdentifier:
    - Introduced: 10.14
  */
  @objc public static func createWithVoiceWithIdentifier(_ identifier: String) -> AVSpeechSynthesisVoice? {
    return self.init(identifier: identifier)
  }


  /**
    - Selector: voiceWithLanguage:
  */
  @objc public static func createWithVoiceWithLanguage(_ language: String?) -> AVSpeechSynthesisVoice? {
    return self.init(language: language)
  }

}
