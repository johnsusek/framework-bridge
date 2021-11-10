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
    - Selector: NSTextInputContext
    - Introduced: 10.6
  */

@objc(NSTextInputContext) protocol NSTextInputContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: localizedNameForInputSource:
  */
  @objc (localizedNameForInputSource:) static func localizedName(forInputSource: NSTextInputSourceIdentifier) -> String?

  // Own Static Properties

  /**
    - Selector: currentInputContext
  */
  @objc static var current: NSTextInputContext? { @objc (currentInputContext) get }

  // Instance Methods

  /**
    - Selector: activate
  */
  @objc func activate()

  /**
    - Selector: deactivate
  */
  @objc func deactivate()

  /**
    - Selector: discardMarkedText
  */
  @objc func discardMarkedText()

  /**
    - Selector: handleEvent:
  */
  @objc (handleEvent:) func handleEvent(_: NSEvent) -> Bool

  /**
    - Selector: invalidateCharacterCoordinates
  */
  @objc func invalidateCharacterCoordinates()

  // Own Instance Properties

  /**
    - Selector: acceptsGlyphInfo
  */
  @objc var acceptsGlyphInfo: Bool { @objc get @objc (setAcceptsGlyphInfo:) set }

  /**
    - Selector: allowedInputSourceLocales
  */
  @objc var allowedInputSourceLocales: [String]? { @objc get @objc (setAllowedInputSourceLocales:) set }

  /**
    - Selector: client
  */
  @objc var client: NSTextInputClient { @objc get }

  /**
    - Selector: keyboardInputSources
  */
  @objc var keyboardInputSources: [NSTextInputSourceIdentifier]? { @objc get }

  /**
    - Selector: selectedKeyboardInputSource
  */
  @objc var selectedKeyboardInputSource: NSTextInputSourceIdentifier? { @objc get @objc (setSelectedKeyboardInputSource:) set }
}

extension NSTextInputContext: NSTextInputContextExports {
}
