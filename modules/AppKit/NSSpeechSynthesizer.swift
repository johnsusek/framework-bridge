import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSpeechSynthesizer
  */

@objc(NSSpeechSynthesizer) protocol NSSpeechSynthesizerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: attributesForVoice:
  */
  @objc (attributesForVoice:) static func attributes(forVoice: NSSpeechSynthesizer.VoiceName) -> [NSSpeechSynthesizer.VoiceAttributeKey: Any]

  // Own Static Properties

  /**
    - Selector: anyApplicationSpeaking
  */
  @objc static var isAnyApplicationSpeaking: Bool { @objc get }

  /**
    - Selector: availableVoices
  */
  @objc static var availableVoices: [NSSpeechSynthesizer.VoiceName] { @objc get }

  /**
    - Selector: defaultVoice
  */
  @objc static var defaultVoice: NSSpeechSynthesizer.VoiceName { @objc get }

  // Instance Methods

  /**
    - Selector: addSpeechDictionary:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addSpeechDictionary(_ p0: [NSSpeechSynthesizer.DictionaryKey: Any])

  /**
    - Selector: continueSpeaking
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func continueSpeaking()

  /**
    - Selector: objectForProperty:error:
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func objectForProperty(property: NSSpeechSynthesizer.SpeechPropertyKey) -> Any?

  /**
    - Selector: pauseSpeakingAtBoundary:
    - Introduced: 10.5
  */
  @objc (pauseSpeakingAtBoundary:) @available(OSX 10.5, *) func pauseSpeaking(at: NSSpeechSynthesizer.Boundary)

  /**
    - Selector: phonemesFromText:
    - Introduced: 10.5
  */
  @objc (phonemesFromText:) @available(OSX 10.5, *) func phonemes(from: String) -> String

  /**
    - Selector: setObject:forProperty:error:
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func setObject(object: Any?, forProperty: NSSpeechSynthesizer.SpeechPropertyKey) -> Bool

  /**
    - Selector: setVoice:
  */
  @objc func setVoice(_ p0: NSSpeechSynthesizer.VoiceName?) -> Bool

  /**
    - Selector: startSpeakingString:
  */
  @objc (startSpeakingString:) func startSpeaking(_ p0: String) -> Bool

  /**
    - Selector: startSpeakingString:toURL:
  */
  @objc (startSpeakingString:toURL:) func startSpeaking(_ p0: String, to: URL) -> Bool

  /**
    - Selector: stopSpeaking
  */
  @objc func stopSpeaking()

  /**
    - Selector: stopSpeakingAtBoundary:
    - Introduced: 10.5
  */
  @objc (stopSpeakingAtBoundary:) @available(OSX 10.5, *) func stopSpeaking(at: NSSpeechSynthesizer.Boundary)

  /**
    - Selector: voice
  */
  @objc func voice() -> NSSpeechSynthesizer.VoiceName?

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSpeechSynthesizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: rate
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var rate: Float { @objc get @objc (setRate:) set }

  /**
    - Selector: speaking
  */
  @objc var isSpeaking: Bool { @objc get }

  /**
    - Selector: usesFeedbackWindow
  */
  @objc var usesFeedbackWindow: Bool { @objc get @objc (setUsesFeedbackWindow:) set }

  /**
    - Selector: volume
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var volume: Float { @objc get @objc (setVolume:) set }
}

extension NSSpeechSynthesizer: NSSpeechSynthesizerExports {
}
