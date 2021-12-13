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
    - Selector: NSColorPanel
  */

@objc(NSColorPanel) protocol NSColorPanelExports: JSExport, NSPanelExports {
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
    - Selector: dragColor:withEvent:fromView:
  */
  @objc (dragColor:withEvent:fromView:) static func dragColor(_ p0: NSColor, with: NSEvent, from: NSView) -> Bool

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
    - Selector: setPickerMask:
  */
  @objc static func setPickerMask(_ p0: NSColorPanel.Options)

  /**
    - Selector: setPickerMode:
  */
  @objc static func setPickerMode(_ p0: NSColorPanel.Mode)

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
    - Selector: sharedColorPanel
  */
  @objc static var shared: NSColorPanel { @objc (sharedColorPanel) get }

  /**
    - Selector: sharedColorPanelExists
  */
  @objc static var sharedColorPanelExists: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: attachColorList:
  */
  @objc (attachColorList:) func attachColorList(_ p0: NSColorList)

  /**
    - Selector: detachColorList:
  */
  @objc (detachColorList:) func detachColorList(_ p0: NSColorList)

  /**
    - Selector: setAction:
  */
  @objc func setAction(_ p0: Selector?)

  /**
    - Selector: setTarget:
  */
  @objc func setTarget(_ p0: Any?)

  // Own Instance Properties

  /**
    - Selector: accessoryView
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - Selector: alpha
  */
  @objc var alpha: CGFloat { @objc get }

  /**
    - Selector: color
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }

  /**
    - Selector: continuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - Selector: mode
  */
  @objc var mode: NSColorPanel.Mode { @objc get @objc (setMode:) set }

  /**
    - Selector: showsAlpha
  */
  @objc var showsAlpha: Bool { @objc get @objc (setShowsAlpha:) set }
}

extension NSColorPanel: NSColorPanelExports {
}
