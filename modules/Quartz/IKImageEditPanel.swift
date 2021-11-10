import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Quartz

// Interface 

  /**
    - Selector: IKImageEditPanel
    - Introduced: 10.5
  */

@objc(IKImageEditPanel) protocol IKImageEditPanelExports: JSExport, NSPanelExports {
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
    - Selector: sharedImageEditPanel
  */
  @objc (sharedImageEditPanel) static func shared() -> IKImageEditPanel

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

  // Instance Methods

  /**
    - Selector: reloadData
  */
  @objc func reloadData()

  // Own Instance Properties

  /**
    - Selector: dataSource
  */
  @objc var dataSource: IKImageEditPanelDataSource { @objc get @objc (setDataSource:) set }

  /**
    - Selector: filterArray
  */
  @objc var filterArray: [Any] { @objc get }
}

extension IKImageEditPanel: IKImageEditPanelExports {
}
