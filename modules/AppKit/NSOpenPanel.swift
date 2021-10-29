import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSOpenPanel
    - name: NSOpenPanel
    - argLabels: 
  */

@objc(NSOpenPanel) protocol NSOpenPanelExports: JSExport, NSSavePanelExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: urls
    - name: URLs
    - argLabels: 
    - obsoleted: 3
    - renamed: urls
  */
  @objc var urls: [URL] { @objc (URLs) get }

  /**
    - jsName: isAccessoryViewDisclosed
    - name: accessoryViewDisclosed
    - argLabels: 
    - available: 10.11
    - obsoleted: 3
    - renamed: isAccessoryViewDisclosed
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isAccessoryViewDisclosed: Bool { @objc get @objc (setAccessoryViewDisclosed:) set }

  /**
    - jsName: allowsMultipleSelection
    - name: allowsMultipleSelection
    - argLabels: 
  */
  @objc var allowsMultipleSelection: Bool { @objc get @objc (setAllowsMultipleSelection:) set }

  /**
    - jsName: canChooseDirectories
    - name: canChooseDirectories
    - argLabels: 
  */
  @objc var canChooseDirectories: Bool { @objc get @objc (setCanChooseDirectories:) set }

  /**
    - jsName: canChooseFiles
    - name: canChooseFiles
    - argLabels: 
  */
  @objc var canChooseFiles: Bool { @objc get @objc (setCanChooseFiles:) set }

  /**
    - jsName: canDownloadUbiquitousContents
    - name: canDownloadUbiquitousContents
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var canDownloadUbiquitousContents: Bool { @objc get @objc (setCanDownloadUbiquitousContents:) set }

  /**
    - jsName: canResolveUbiquitousConflicts
    - name: canResolveUbiquitousConflicts
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var canResolveUbiquitousConflicts: Bool { @objc get @objc (setCanResolveUbiquitousConflicts:) set }

  /**
    - jsName: resolvesAliases
    - name: resolvesAliases
    - argLabels: 
  */
  @objc var resolvesAliases: Bool { @objc get @objc (setResolvesAliases:) set }
}

extension NSOpenPanel: NSOpenPanelExports {
}
