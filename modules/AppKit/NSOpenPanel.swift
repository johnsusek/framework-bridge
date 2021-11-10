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
    - Selector: NSOpenPanel
  */

@objc(NSOpenPanel) protocol NSOpenPanelExports: JSExport, NSSavePanelExports {
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
  @objc (standardWindowButton:forStyleMask:) static func standardWindowButton(_: NSWindow.ButtonType, `for`: NSWindow.StyleMask) -> NSButton?

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

  // Own Instance Properties

  /**
    - Selector: URLs
  */
  @objc var urls: [URL] { @objc (URLs) get }

  /**
    - Selector: accessoryViewDisclosed
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isAccessoryViewDisclosed: Bool { @objc get @objc (setAccessoryViewDisclosed:) set }

  /**
    - Selector: allowsMultipleSelection
  */
  @objc var allowsMultipleSelection: Bool { @objc get @objc (setAllowsMultipleSelection:) set }

  /**
    - Selector: canChooseDirectories
  */
  @objc var canChooseDirectories: Bool { @objc get @objc (setCanChooseDirectories:) set }

  /**
    - Selector: canChooseFiles
  */
  @objc var canChooseFiles: Bool { @objc get @objc (setCanChooseFiles:) set }

  /**
    - Selector: canDownloadUbiquitousContents
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var canDownloadUbiquitousContents: Bool { @objc get @objc (setCanDownloadUbiquitousContents:) set }

  /**
    - Selector: canResolveUbiquitousConflicts
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var canResolveUbiquitousConflicts: Bool { @objc get @objc (setCanResolveUbiquitousConflicts:) set }

  /**
    - Selector: resolvesAliases
  */
  @objc var resolvesAliases: Bool { @objc get @objc (setResolvesAliases:) set }
}

extension NSOpenPanel: NSOpenPanelExports {
}
