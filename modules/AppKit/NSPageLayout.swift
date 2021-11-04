import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPageLayout
  */

@objc(NSPageLayout) protocol NSPageLayoutExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addAccessoryController:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addAccessoryController(_: NSViewController)

  /**
    - Selector: beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:
  */
  @objc (beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:) func beginSheet(with: NSPrintInfo, modalFor: NSWindow, delegate: Any?, didEnd: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - Selector: removeAccessoryController:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func removeAccessoryController(_: NSViewController)

  /**
    - Selector: runModal
  */
  @objc func runModal() -> Int

  /**
    - Selector: runModalWithPrintInfo:
  */
  @objc (runModalWithPrintInfo:) func runModal(with: NSPrintInfo) -> Int

  // Own Instance Properties

  /**
    - Selector: accessoryControllers
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var accessoryControllers: [NSViewController] { @objc get }

  /**
    - Selector: printInfo
  */
  @objc var printInfo: NSPrintInfo? { @objc get }
}

extension NSPageLayout: NSPageLayoutExports {
}
