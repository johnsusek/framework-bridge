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
    - Selector: NSStatusBar
  */

@objc(NSStatusBar) protocol NSStatusBarExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: systemStatusBar
  */
  @objc static var system: NSStatusBar { @objc (systemStatusBar) get }

  // Instance Methods

  /**
    - Selector: removeStatusItem:
  */
  @objc (removeStatusItem:) func removeStatusItem(_ p0: NSStatusItem)

  /**
    - Selector: statusItemWithLength:
  */
  @objc (statusItemWithLength:) func statusItem(withLength: CGFloat) -> NSStatusItem

  // Own Instance Properties

  /**
    - Selector: thickness
  */
  @objc var thickness: CGFloat { @objc get }

  /**
    - Selector: vertical
  */
  @objc var isVertical: Bool { @objc get }
}

extension NSStatusBar: NSStatusBarExports {
}
