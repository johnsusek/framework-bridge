import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextInputContext
    - name: NSTextInputContext
    - argLabels: 
    - Introduced: 10.6
  */

@objc(NSTextInputContext) protocol NSTextInputContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: localizedName
    - name: localizedNameForInputSource:
    - argLabels: forInputSource
    - constructorTokens: 
    - obsoleted: 3
    - renamed: localizedName(forInputSource:)
  */
  @objc (localizedNameForInputSource:) static func localizedName(forInputSource: NSTextInputSourceIdentifier) -> String?

  // Own Static Properties

  /**
    - jsName: current
    - name: currentInputContext
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSTextInputContext? { @objc (currentInputContext) get }

  // Instance Methods

  /**
    - jsName: activate
    - name: activate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func activate()

  /**
    - jsName: deactivate
    - name: deactivate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deactivate()

  /**
    - jsName: discardMarkedText
    - name: discardMarkedText
    - argLabels: 
    - constructorTokens: 
  */
  @objc func discardMarkedText()

  /**
    - jsName: handleEvent
    - name: handleEvent:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (handleEvent:) func handleEvent(_: NSEvent) -> Bool

  /**
    - jsName: createWithClient
    - name: initWithClient:
    - argLabels: 
    - constructorTokens: client
  */
  @objc static func createWithClient(_: NSTextInputClient) -> Self

  /**
    - jsName: invalidateCharacterCoordinates
    - name: invalidateCharacterCoordinates
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateCharacterCoordinates()

  // Own Instance Properties

  /**
    - jsName: acceptsGlyphInfo
    - name: acceptsGlyphInfo
    - argLabels: 
  */
  @objc var acceptsGlyphInfo: Bool { @objc get @objc (setAcceptsGlyphInfo:) set }

  /**
    - jsName: allowedInputSourceLocales
    - name: allowedInputSourceLocales
    - argLabels: 
  */
  @objc var allowedInputSourceLocales: [String]? { @objc get @objc (setAllowedInputSourceLocales:) set }

  /**
    - jsName: client
    - name: client
    - argLabels: 
  */
  @objc var client: NSTextInputClient { @objc get }

  /**
    - jsName: keyboardInputSources
    - name: keyboardInputSources
    - argLabels: 
  */
  @objc var keyboardInputSources: [NSTextInputSourceIdentifier]? { @objc get }

  /**
    - jsName: selectedKeyboardInputSource
    - name: selectedKeyboardInputSource
    - argLabels: 
  */
  @objc var selectedKeyboardInputSource: NSTextInputSourceIdentifier? { @objc get @objc (setSelectedKeyboardInputSource:) set }
}

extension NSTextInputContext: NSTextInputContextExports {
  @objc public static func createWithClient(_ client: NSTextInputClient) -> Self {
    return self.init(client: client)
  }

}
