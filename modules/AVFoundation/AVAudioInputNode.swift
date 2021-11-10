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
    - Selector: AVAudioInputNode
    - Introduced: 10.10
  */

@objc(AVAudioInputNode) protocol AVAudioInputNodeExports: JSExport, AVAudioIONodeExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setManualRenderingInputPCMFormat:inputBlock:
    - Introduced: 10.13
  */
  // jsvalue @objc @available(OSX 10.13, *) func setManualRenderingInputPCMFormatWithInputBlock(_ inputBlock: AVAudioFormat, inputBlock inputBlock1: JSValue) -> Bool

  // Own Instance Properties

  /**
    - Selector: voiceProcessingAGCEnabled
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isVoiceProcessingAGCEnabled: Bool { @objc get @objc (setVoiceProcessingAGCEnabled:) set }

  /**
    - Selector: voiceProcessingBypassed
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isVoiceProcessingBypassed: Bool { @objc get @objc (setVoiceProcessingBypassed:) set }

  /**
    - Selector: voiceProcessingInputMuted
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isVoiceProcessingInputMuted: Bool { @objc get @objc (setVoiceProcessingInputMuted:) set }
}

extension AVAudioInputNode: AVAudioInputNodeExports {
}
