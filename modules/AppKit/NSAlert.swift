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
    - Selector: NSAlert
  */

@objc(NSAlert) protocol NSAlertExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: alertWithError:
  */
  @objc static func createWithError(_ error: Error) -> NSAlert

  // Instance Methods

  /**
    - Selector: addButtonWithTitle:
  */
  @objc (addButtonWithTitle:) func addButton(withTitle: String) -> NSButton

  /**
    - Selector: beginSheetModalForWindow:completionHandler:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func beginSheetModalForWindowWithCompletionHandler(_ `for`: NSWindow, _ completionHandler: JSValue)

  /**
    - Selector: layout
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func layout()

  /**
    - Selector: runModal
  */
  @objc func runModal() -> NSApplication.ModalResponse

  // Own Instance Properties

  /**
    - Selector: accessoryView
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - Selector: alertStyle
  */
  @objc var alertStyle: NSAlert.Style { @objc get @objc (setAlertStyle:) set }

  /**
    - Selector: buttons
  */
  @objc var buttons: [NSButton] { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSAlertDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: helpAnchor
  */
  @objc var helpAnchor: NSHelpManager.AnchorName? { @objc get @objc (setHelpAnchor:) set }

  /**
    - Selector: icon
  */
  @objc var icon: NSImage! { @objc get @objc (setIcon:) set }

  /**
    - Selector: informativeText
  */
  @objc var informativeText: String { @objc get @objc (setInformativeText:) set }

  /**
    - Selector: messageText
  */
  @objc var messageText: String { @objc get @objc (setMessageText:) set }

  /**
    - Selector: showsHelp
  */
  @objc var showsHelp: Bool { @objc get @objc (setShowsHelp:) set }

  /**
    - Selector: showsSuppressionButton
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var showsSuppressionButton: Bool { @objc get @objc (setShowsSuppressionButton:) set }

  /**
    - Selector: suppressionButton
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var suppressionButton: NSButton? { @objc get }

  /**
    - Selector: window
  */
  @objc var window: NSWindow { @objc get }
}

extension NSAlert: NSAlertExports {

  /**
    - Selector: alertWithError:
  */
  @objc public static func createWithError(_ error: Error) -> NSAlert {
    return self.init(error: error)
  }

}
