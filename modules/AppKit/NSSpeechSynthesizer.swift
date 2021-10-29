import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSpeechSynthesizer
    - name: NSSpeechSynthesizer
    - argLabels: 
  */

@objc(NSSpeechSynthesizer) protocol NSSpeechSynthesizerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: attributes
    - name: attributesForVoice:
    - argLabels: forVoice
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attributes(forVoice:)
  */
  @objc (attributesForVoice:) static func attributes(forVoice: NSSpeechSynthesizer.VoiceName) -> [NSSpeechSynthesizer.VoiceAttributeKey: Any]

  // Own Static Properties

  /**
    - jsName: isAnyApplicationSpeaking
    - name: anyApplicationSpeaking
    - argLabels: 
    - obsoleted: 3
    - renamed: isAnyApplicationSpeaking
  */
  @objc static var isAnyApplicationSpeaking: Bool { @objc get }

  /**
    - jsName: availableVoices
    - name: availableVoices
    - argLabels: 
  */
  @objc static var availableVoices: [NSSpeechSynthesizer.VoiceName] { @objc get }

  /**
    - jsName: defaultVoice
    - name: defaultVoice
    - argLabels: 
  */
  @objc static var defaultVoice: NSSpeechSynthesizer.VoiceName { @objc get }

  // Instance Methods

  /**
    - jsName: addSpeechDictionary
    - name: addSpeechDictionary:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addSpeechDictionary(_: [NSSpeechSynthesizer.DictionaryKey: Any])

  /**
    - jsName: continueSpeaking
    - name: continueSpeaking
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func continueSpeaking()

  /**
    - jsName: createWithVoice
    - name: initWithVoice:
    - argLabels: 
    - constructorTokens: voice
  */
  @objc static func createWithVoice(_: NSSpeechSynthesizer.VoiceName?) -> Self?

  /**
    - jsName: objectForProperty
    - name: objectForProperty:error:
    - argLabels: error
    - constructorTokens: 
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func objectForProperty(error: NSSpeechSynthesizer.SpeechPropertyKey) -> Any?

  /**
    - jsName: pauseSpeaking
    - name: pauseSpeakingAtBoundary:
    - argLabels: at
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: pauseSpeaking(at:)
    - Introduced: 10.5
  */
  @objc (pauseSpeakingAtBoundary:) @available(OSX 10.5, *) func pauseSpeaking(at: NSSpeechSynthesizer.Boundary)

  /**
    - jsName: phonemes
    - name: phonemesFromText:
    - argLabels: from
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: phonemes(from:)
    - Introduced: 10.5
  */
  @objc (phonemesFromText:) @available(OSX 10.5, *) func phonemes(from: String) -> String

  /**
    - jsName: setObject
    - name: setObject:forProperty:error:
    - argLabels: forProperty, error
    - constructorTokens: 
    - Introduced: 10.5
  */
  // throws - @objc @available(OSX 10.5, *) func setObject(forProperty: Any?, error: NSSpeechSynthesizer.SpeechPropertyKey) -> Bool

  /**
    - jsName: setVoice
    - name: setVoice:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setVoice(_: NSSpeechSynthesizer.VoiceName?) -> Bool

  /**
    - jsName: startSpeaking
    - name: startSpeakingString:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: startSpeaking(_:)
  */
  @objc (startSpeakingString:) func startSpeaking(_: String) -> Bool

  /**
    - jsName: startSpeaking
    - name: startSpeakingString:toURL:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: startSpeaking(_:to:)
  */
  @objc (startSpeakingString:toURL:) func startSpeaking(_: String, to: URL) -> Bool

  /**
    - jsName: stopSpeaking
    - name: stopSpeaking
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stopSpeaking()

  /**
    - jsName: stopSpeaking
    - name: stopSpeakingAtBoundary:
    - argLabels: at
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: stopSpeaking(at:)
    - Introduced: 10.5
  */
  @objc (stopSpeakingAtBoundary:) @available(OSX 10.5, *) func stopSpeaking(at: NSSpeechSynthesizer.Boundary)

  /**
    - jsName: voice
    - name: voice
    - argLabels: 
    - constructorTokens: 
  */
  @objc func voice() -> NSSpeechSynthesizer.VoiceName?

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSpeechSynthesizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: rate
    - name: rate
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var rate: Float { @objc get @objc (setRate:) set }

  /**
    - jsName: isSpeaking
    - name: speaking
    - argLabels: 
    - obsoleted: 3
    - renamed: isSpeaking
  */
  @objc var isSpeaking: Bool { @objc get }

  /**
    - jsName: usesFeedbackWindow
    - name: usesFeedbackWindow
    - argLabels: 
  */
  @objc var usesFeedbackWindow: Bool { @objc get @objc (setUsesFeedbackWindow:) set }

  /**
    - jsName: volume
    - name: volume
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var volume: Float { @objc get @objc (setVolume:) set }
}

extension NSSpeechSynthesizer: NSSpeechSynthesizerExports {
  @objc public static func createWithVoice(_ voice: NSSpeechSynthesizer.VoiceName?) -> Self? {
    return self.init(voice: voice)
  }

}
