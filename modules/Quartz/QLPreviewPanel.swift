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
    - Selector: QLPreviewPanel
    - Introduced: 10.6
  */

@objc(QLPreviewPanel) protocol QLPreviewPanelExports: JSExport, NSPanelExports {
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
    - Selector: sharedPreviewPanel
  */
  @objc (sharedPreviewPanel) static func shared() -> QLPreviewPanel

  /**
    - Selector: sharedPreviewPanelExists
  */
  @objc static func sharedPreviewPanelExists() -> Bool

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
    - Selector: enterFullScreenMode:withOptions:
  */
  @objc func enterFullScreenMode(_ p0: NSScreen, withOptions: [AnyHashable: Any]) -> Bool

  /**
    - Selector: exitFullScreenModeWithOptions:
  */
  @objc (exitFullScreenModeWithOptions:) func exitFullScreenMode(options: [AnyHashable: Any])

  /**
    - Selector: refreshCurrentPreviewItem
  */
  @objc func refreshCurrentPreviewItem()

  /**
    - Selector: reloadData
  */
  @objc func reloadData()

  /**
    - Selector: updateController
  */
  @objc func updateController()

  // Own Instance Properties

  /**
    - Selector: currentController
  */
  @objc var currentController: Any { @objc get }

  /**
    - Selector: currentPreviewItem
  */
  @objc var currentPreviewItem: QLPreviewItem { @objc get }

  /**
    - Selector: currentPreviewItemIndex
  */
  @objc var currentPreviewItemIndex: Int { @objc get @objc (setCurrentPreviewItemIndex:) set }

  /**
    - Selector: dataSource
  */
  @objc var dataSource: QLPreviewPanelDataSource { @objc get @objc (setDataSource:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: AnyObject { @objc get @objc (setDelegate:) set }

  /**
    - Selector: displayState
  */
  @objc var displayState: Any { @objc get @objc (setDisplayState:) set }

  /**
    - Selector: inFullScreenMode
  */
  @objc var isInFullScreenMode: Bool { @objc get }
}

extension QLPreviewPanel: QLPreviewPanelExports {
}
