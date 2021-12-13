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
    - Selector: NSFontPanel
  */

@objc(NSFontPanel) protocol NSFontPanelExports: JSExport, NSPanelExports {
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

  // Own Static Properties

  /**
    - Selector: sharedFontPanel
  */
  @objc static var shared: NSFontPanel { @objc (sharedFontPanel) get }

  /**
    - Selector: sharedFontPanelExists
  */
  @objc static var sharedFontPanelExists: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: panelConvertFont:
  */
  @objc (panelConvertFont:) func convert(_ p0: NSFont) -> NSFont

  /**
    - Selector: reloadDefaultFontFamilies
  */
  @objc func reloadDefaultFontFamilies()

  /**
    - Selector: setPanelFont:isMultiple:
  */
  @objc func setPanelFont(_ p0: NSFont, isMultiple: Bool)

  // Own Instance Properties

  /**
    - Selector: accessoryView
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }
}

extension NSFontPanel: NSFontPanelExports {
}
