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
    - Selector: IKPictureTaker
  */

@objc(IKPictureTaker) protocol IKPictureTakerExports: JSExport, NSPanelExports {
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
    - Selector: pictureTaker
  */
  @objc static func pictureTaker() -> IKPictureTaker

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

  // Instance Methods

  /**
    - Selector: beginPictureTakerSheetForWindow:withDelegate:didEndSelector:contextInfo:
  */
  @objc (beginPictureTakerSheetForWindow:withDelegate:didEndSelector:contextInfo:) func beginSheet(`for`: NSWindow, withDelegate: Any, didEnd: Selector!, contextInfo: UnsafeMutableRawPointer)

  /**
    - Selector: beginPictureTakerWithDelegate:didEndSelector:contextInfo:
  */
  @objc (beginPictureTakerWithDelegate:didEndSelector:contextInfo:) func begin(withDelegate: Any, didEnd: Selector!, contextInfo: UnsafeMutableRawPointer)

  /**
    - Selector: inputImage
  */
  @objc func inputImage() -> NSImage

  /**
    - Selector: mirroring
  */
  @objc func mirroring() -> Bool

  /**
    - Selector: outputImage
  */
  @objc func outputImage() -> NSImage

  /**
    - Selector: popUpRecentsMenuForView:withDelegate:didEndSelector:contextInfo:
  */
  @objc (popUpRecentsMenuForView:withDelegate:didEndSelector:contextInfo:) func popUpRecentsMenu(`for`: NSView, withDelegate: Any, didEnd: Selector!, contextInfo: UnsafeMutableRawPointer)

  /**
    - Selector: runModal
  */
  @objc func runModal() -> Int

  /**
    - Selector: setInputImage:
  */
  @objc func setInputImage(_: NSImage)

  /**
    - Selector: setMirroring:
  */
  @objc func setMirroring(_: Bool)
}

extension IKPictureTaker: IKPictureTakerExports {
}
