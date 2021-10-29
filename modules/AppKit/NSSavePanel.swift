import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSavePanel
    - name: NSSavePanel
    - argLabels: 
  */

@objc(NSSavePanel) protocol NSSavePanelExports: JSExport, NSPanelExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: beginSheetModal
    - name: beginSheetModalForWindow:completionHandler:
    - argLabels: for, completionHandler
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: beginSheetModal(for:completionHandler:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (beginSheetModalForWindow:completionHandler:) @available(OSX 10.6, *) func beginSheetModal(`for`: NSWindow, completionHandler: JSValue)

  /**
    - jsName: begin
    - name: beginWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: begin(completionHandler:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (beginWithCompletionHandler:) @available(OSX 10.6, *) func begin(completionHandler: JSValue)

  /**
    - jsName: cancel
    - name: cancel:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancel(_: Any?)

  /**
    - jsName: ok
    - name: ok:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func ok(_: Any?)

  /**
    - jsName: runModal
    - name: runModal
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runModal() -> NSApplication.ModalResponse

  /**
    - jsName: validateVisibleColumns
    - name: validateVisibleColumns
    - argLabels: 
    - constructorTokens: 
  */
  @objc func validateVisibleColumns()

  // Own Instance Properties

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - jsName: accessoryView
    - name: accessoryView
    - argLabels: 
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - jsName: allowedFileTypes
    - name: allowedFileTypes
    - argLabels: 
    - introduced: 10.3
    - deprecated: 100000
    - message: Use -allowedContentTypes instead
  */
  @objc var allowedFileTypes: [String]? { @objc get @objc (setAllowedFileTypes:) set }

  /**
    - jsName: allowsOtherFileTypes
    - name: allowsOtherFileTypes
    - argLabels: 
  */
  @objc var allowsOtherFileTypes: Bool { @objc get @objc (setAllowsOtherFileTypes:) set }

  /**
    - jsName: canCreateDirectories
    - name: canCreateDirectories
    - argLabels: 
  */
  @objc var canCreateDirectories: Bool { @objc get @objc (setCanCreateDirectories:) set }

  /**
    - jsName: canSelectHiddenExtension
    - name: canSelectHiddenExtension
    - argLabels: 
  */
  @objc var canSelectHiddenExtension: Bool { @objc get @objc (setCanSelectHiddenExtension:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSOpenSavePanelDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: directoryURL
    - name: directoryURL
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var directoryURL: URL? { @objc get @objc (setDirectoryURL:) set }

  /**
    - jsName: isExpanded
    - name: expanded
    - argLabels: 
    - obsoleted: 3
    - renamed: isExpanded
  */
  @objc var isExpanded: Bool { @objc get }

  /**
    - jsName: isExtensionHidden
    - name: extensionHidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isExtensionHidden
  */
  @objc var isExtensionHidden: Bool { @objc get @objc (setExtensionHidden:) set }

  /**
    - jsName: message
    - name: message
    - argLabels: 
  */
  @objc var message: String! { @objc get @objc (setMessage:) set }

  /**
    - jsName: nameFieldLabel
    - name: nameFieldLabel
    - argLabels: 
  */
  @objc var nameFieldLabel: String! { @objc get @objc (setNameFieldLabel:) set }

  /**
    - jsName: nameFieldStringValue
    - name: nameFieldStringValue
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var nameFieldStringValue: String { @objc get @objc (setNameFieldStringValue:) set }

  /**
    - jsName: prompt
    - name: prompt
    - argLabels: 
  */
  @objc var prompt: String! { @objc get @objc (setPrompt:) set }

  /**
    - jsName: showsHiddenFiles
    - name: showsHiddenFiles
    - argLabels: 
  */
  @objc var showsHiddenFiles: Bool { @objc get @objc (setShowsHiddenFiles:) set }

  /**
    - jsName: showsTagField
    - name: showsTagField
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var showsTagField: Bool { @objc get @objc (setShowsTagField:) set }

  /**
    - jsName: tagNames
    - name: tagNames
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var tagNames: [String]? { @objc get @objc (setTagNames:) set }

  /**
    - jsName: treatsFilePackagesAsDirectories
    - name: treatsFilePackagesAsDirectories
    - argLabels: 
  */
  @objc var treatsFilePackagesAsDirectories: Bool { @objc get @objc (setTreatsFilePackagesAsDirectories:) set }
}

extension NSSavePanel: NSSavePanelExports {
}
