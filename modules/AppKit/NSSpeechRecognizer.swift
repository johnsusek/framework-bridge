import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSpeechRecognizer
    - name: NSSpeechRecognizer
    - argLabels: 
  */

@objc(NSSpeechRecognizer) protocol NSSpeechRecognizerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: startListening
    - name: startListening
    - argLabels: 
    - constructorTokens: 
  */
  @objc func startListening()

  /**
    - jsName: stopListening
    - name: stopListening
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stopListening()

  // Own Instance Properties

  /**
    - jsName: blocksOtherRecognizers
    - name: blocksOtherRecognizers
    - argLabels: 
  */
  @objc var blocksOtherRecognizers: Bool { @objc get @objc (setBlocksOtherRecognizers:) set }

  /**
    - jsName: commands
    - name: commands
    - argLabels: 
  */
  @objc var commands: [String]? { @objc get @objc (setCommands:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSpeechRecognizerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: displayedCommandsTitle
    - name: displayedCommandsTitle
    - argLabels: 
  */
  @objc var displayedCommandsTitle: String? { @objc get @objc (setDisplayedCommandsTitle:) set }

  /**
    - jsName: listensInForegroundOnly
    - name: listensInForegroundOnly
    - argLabels: 
  */
  @objc var listensInForegroundOnly: Bool { @objc get @objc (setListensInForegroundOnly:) set }
}

extension NSSpeechRecognizer: NSSpeechRecognizerExports {
}
