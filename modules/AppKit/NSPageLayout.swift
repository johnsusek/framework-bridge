import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPageLayout
    - name: NSPageLayout
    - argLabels: 
  */

@objc(NSPageLayout) protocol NSPageLayoutExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addAccessoryController
    - name: addAccessoryController:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addAccessoryController(_: NSViewController)

  /**
    - jsName: beginSheet
    - name: beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:
    - argLabels: with, modalFor, delegate, didEnd, contextInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: beginSheet(with:modalFor:delegate:didEnd:contextInfo:)
  */
  @objc (beginSheetWithPrintInfo:modalForWindow:delegate:didEndSelector:contextInfo:) func beginSheet(with: NSPrintInfo, modalFor: NSWindow, delegate: Any?, didEnd: Selector?, contextInfo: UnsafeMutableRawPointer?)

  /**
    - jsName: removeAccessoryController
    - name: removeAccessoryController:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func removeAccessoryController(_: NSViewController)

  /**
    - jsName: runModal
    - name: runModal
    - argLabels: 
    - constructorTokens: 
  */
  @objc func runModal() -> Int

  /**
    - jsName: runModal
    - name: runModalWithPrintInfo:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runModal(with:)
  */
  @objc (runModalWithPrintInfo:) func runModal(with: NSPrintInfo) -> Int

  // Own Instance Properties

  /**
    - jsName: accessoryControllers
    - name: accessoryControllers
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var accessoryControllers: [NSViewController] { @objc get }

  /**
    - jsName: printInfo
    - name: printInfo
    - argLabels: 
  */
  @objc var printInfo: NSPrintInfo? { @objc get }
}

extension NSPageLayout: NSPageLayoutExports {
}
