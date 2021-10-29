import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSAlert
    - name: NSAlert
    - argLabels: 
  */

@objc(NSAlert) protocol NSAlertExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: alertWithError:
    - argLabels: error
    - constructorTokens: 
    - unavailable: true
    - renamed: init(error:)
    - message: Not available in Swift
  */
  @objc static func create(error: Error) -> NSAlert

  // Instance Methods

  /**
    - jsName: addButton
    - name: addButtonWithTitle:
    - argLabels: withTitle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addButton(withTitle:)
  */
  @objc (addButtonWithTitle:) func addButton(withTitle: String) -> NSButton

  /**
    - jsName: beginSheetModal
    - name: beginSheetModalForWindow:completionHandler:
    - argLabels: for, completionHandler
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: beginSheetModal(for:completionHandler:)
    - Introduced: 10.9
  */
  // jsvalue - @objc (beginSheetModalForWindow:completionHandler:) @available(OSX 10.9, *) func beginSheetModal(`for`: NSWindow, completionHandler: JSValue)

  /**
    - jsName: layout
    - name: layout
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func layout()

  /**
    - jsName: runModal
    - name: runModal
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runModal() -> NSApplication.ModalResponse

  // Own Instance Properties

  /**
    - jsName: accessoryView
    - name: accessoryView
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - jsName: alertStyle
    - name: alertStyle
    - argLabels: 
  */
  @objc var alertStyle: NSAlert.Style { @objc get @objc (setAlertStyle:) set }

  /**
    - jsName: buttons
    - name: buttons
    - argLabels: 
  */
  @objc var buttons: [NSButton] { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSAlertDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: helpAnchor
    - name: helpAnchor
    - argLabels: 
  */
  @objc var helpAnchor: NSHelpManager.AnchorName? { @objc get @objc (setHelpAnchor:) set }

  /**
    - jsName: icon
    - name: icon
    - argLabels: 
  */
  @objc var icon: NSImage! { @objc get @objc (setIcon:) set }

  /**
    - jsName: informativeText
    - name: informativeText
    - argLabels: 
  */
  @objc var informativeText: String { @objc get @objc (setInformativeText:) set }

  /**
    - jsName: messageText
    - name: messageText
    - argLabels: 
  */
  @objc var messageText: String { @objc get @objc (setMessageText:) set }

  /**
    - jsName: showsHelp
    - name: showsHelp
    - argLabels: 
  */
  @objc var showsHelp: Bool { @objc get @objc (setShowsHelp:) set }

  /**
    - jsName: showsSuppressionButton
    - name: showsSuppressionButton
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var showsSuppressionButton: Bool { @objc get @objc (setShowsSuppressionButton:) set }

  /**
    - jsName: suppressionButton
    - name: suppressionButton
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var suppressionButton: NSButton? { @objc get }

  /**
    - jsName: window
    - name: window
    - argLabels: 
  */
  @objc var window: NSWindow { @objc get }
}

extension NSAlert: NSAlertExports {
  @objc public static func create(error: Error) -> NSAlert {
    return self.init(error: error)
  }

}
