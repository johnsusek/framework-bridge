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
    - Selector: AVSpeechSynthesizer
    - Introduced: 10.14
  */

@objc(AVSpeechSynthesizer) protocol AVSpeechSynthesizerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: continueSpeaking
  */
  @objc func continueSpeaking() -> Bool

  /**
    - Selector: pauseSpeakingAtBoundary:
  */
  @objc (pauseSpeakingAtBoundary:) func pauseSpeaking(at: AVSpeechBoundary) -> Bool

  /**
    - Selector: speakUtterance:
  */
  @objc (speakUtterance:) func speak(_: AVSpeechUtterance)

  /**
    - Selector: stopSpeakingAtBoundary:
  */
  @objc (stopSpeakingAtBoundary:) func stopSpeaking(at: AVSpeechBoundary) -> Bool

  /**
    - Selector: writeUtterance:toBufferCallback:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func writeUtteranceWithToBufferCallback(_ p0: AVSpeechUtterance, _ toBufferCallback: JSValue)

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AVSpeechSynthesizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: paused
  */
  @objc var isPaused: Bool { @objc get }

  /**
    - Selector: speaking
  */
  @objc var isSpeaking: Bool { @objc get }
}

extension AVSpeechSynthesizer: AVSpeechSynthesizerExports {
}
