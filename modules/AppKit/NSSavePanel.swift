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
    - Selector: NSSavePanel
  */

@objc(NSSavePanel) protocol NSSavePanelExports: JSExport, NSPanelExports {
  // Static Methods

  /**
    - Selector: contentRectForFrameRect:styleMask:
  */
  @objc (contentRectForFrameRect:styleMask:) static func contentRect(forFrameRect: CGRect, styleMask: NSWindow.StyleMask) -> CGRect

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: frameRectForContentRect:styleMask:
  */
  @objc (frameRectForContentRect:styleMask:) static func frameRect(forContentRect: CGRect, styleMask: NSWindow.StyleMask) -> CGRect

  /**
    - Selector: minFrameWidthWithTitle:styleMask:
  */
  @objc (minFrameWidthWithTitle:styleMask:) static func minFrameWidth(withTitle: String, styleMask: NSWindow.StyleMask) -> CGFloat

  /**
    - Selector: removeFrameUsingName:
  */
  @objc (removeFrameUsingName:) static func removeFrame(usingName: NSWindow.FrameAutosaveName)

  /**
    - Selector: standardWindowButton:forStyleMask:
  */
  @objc (standardWindowButton:forStyleMask:) static func standardWindowButton(_ p0: NSWindow.ButtonType, `for`: NSWindow.StyleMask) -> NSButton?

  /**
    - Selector: windowNumberAtPoint:belowWindowWithWindowNumber:
    - Introduced: 10.6
  */
  @objc (windowNumberAtPoint:belowWindowWithWindowNumber:) @available(OSX 10.6, *) static func windowNumber(at: CGPoint, belowWindowWithWindowNumber: Int) -> Int

  /**
    - Selector: windowNumbersWithOptions:
    - Introduced: 10.6
  */
  @objc (windowNumbersWithOptions:) @available(OSX 10.6, *) static func windowNumbers(options: NSWindow.NumberListOptions) -> [NSNumber]?

  // Instance Methods

  /**
    - Selector: beginSheetModalForWindow:completionHandler:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func beginSheetModal(`for`: NSWindow, completionHandler: JSValue)

  /**
    - Selector: beginWithCompletionHandler:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func begin(completionHandler: JSValue)

  /**
    - Selector: cancel:
  */
  @objc func cancel(_ p0: Any?)

  /**
    - Selector: ok:
  */
  @objc func ok(_ p0: Any?)

  /**
    - Selector: runModal
  */
  @objc func runModal() -> NSApplication.ModalResponse

  /**
    - Selector: validateVisibleColumns
  */
  @objc func validateVisibleColumns()

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - Selector: accessoryView
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - Selector: allowedFileTypes
  */
  @objc var allowedFileTypes: [String]? { @objc get @objc (setAllowedFileTypes:) set }

  /**
    - Selector: allowsOtherFileTypes
  */
  @objc var allowsOtherFileTypes: Bool { @objc get @objc (setAllowsOtherFileTypes:) set }

  /**
    - Selector: canCreateDirectories
  */
  @objc var canCreateDirectories: Bool { @objc get @objc (setCanCreateDirectories:) set }

  /**
    - Selector: canSelectHiddenExtension
  */
  @objc var canSelectHiddenExtension: Bool { @objc get @objc (setCanSelectHiddenExtension:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSOpenSavePanelDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: directoryURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var directoryURL: URL? { @objc get @objc (setDirectoryURL:) set }

  /**
    - Selector: expanded
  */
  @objc var isExpanded: Bool { @objc get }

  /**
    - Selector: extensionHidden
  */
  @objc var isExtensionHidden: Bool { @objc get @objc (setExtensionHidden:) set }

  /**
    - Selector: message
  */
  @objc var message: String! { @objc get @objc (setMessage:) set }

  /**
    - Selector: nameFieldLabel
  */
  @objc var nameFieldLabel: String! { @objc get @objc (setNameFieldLabel:) set }

  /**
    - Selector: nameFieldStringValue
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var nameFieldStringValue: String { @objc get @objc (setNameFieldStringValue:) set }

  /**
    - Selector: prompt
  */
  @objc var prompt: String! { @objc get @objc (setPrompt:) set }

  /**
    - Selector: showsHiddenFiles
  */
  @objc var showsHiddenFiles: Bool { @objc get @objc (setShowsHiddenFiles:) set }

  /**
    - Selector: showsTagField
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var showsTagField: Bool { @objc get @objc (setShowsTagField:) set }

  /**
    - Selector: tagNames
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var tagNames: [String]? { @objc get @objc (setTagNames:) set }

  /**
    - Selector: treatsFilePackagesAsDirectories
  */
  @objc var treatsFilePackagesAsDirectories: Bool { @objc get @objc (setTreatsFilePackagesAsDirectories:) set }
}

extension NSSavePanel: NSSavePanelExports {
}
