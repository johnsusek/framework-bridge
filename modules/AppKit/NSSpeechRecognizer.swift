import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSpeechRecognizer
  */

@objc(NSSpeechRecognizer) protocol NSSpeechRecognizerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: startListening
  */
  @objc func startListening()

  /**
    - Selector: stopListening
  */
  @objc func stopListening()

  // Own Instance Properties

  /**
    - Selector: blocksOtherRecognizers
  */
  @objc var blocksOtherRecognizers: Bool { @objc get @objc (setBlocksOtherRecognizers:) set }

  /**
    - Selector: commands
  */
  @objc var commands: [String]? { @objc get @objc (setCommands:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSpeechRecognizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displayedCommandsTitle
  */
  @objc var displayedCommandsTitle: String? { @objc get @objc (setDisplayedCommandsTitle:) set }

  /**
    - Selector: listensInForegroundOnly
  */
  @objc var listensInForegroundOnly: Bool { @objc get @objc (setListensInForegroundOnly:) set }
}

extension NSSpeechRecognizer: NSSpeechRecognizerExports {
}
