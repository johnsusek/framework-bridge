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
    - Selector: NSWindowTabGroup
    - Introduced: 10.13
  */

@objc(NSWindowTabGroup) protocol NSWindowTabGroupExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addWindow:
  */
  @objc func addWindow(_: NSWindow)

  /**
    - Selector: insertWindow:atIndex:
  */
  @objc (insertWindow:atIndex:) func insertWindow(_: NSWindow, at: Int)

  /**
    - Selector: removeWindow:
  */
  @objc func removeWindow(_: NSWindow)

  // Own Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSWindow.TabbingIdentifier { @objc get }

  /**
    - Selector: overviewVisible
  */
  @objc var isOverviewVisible: Bool { @objc get @objc (setOverviewVisible:) set }

  /**
    - Selector: selectedWindow
  */
  @objc var selectedWindow: NSWindow? { @objc get @objc (setSelectedWindow:) set }

  /**
    - Selector: tabBarVisible
  */
  @objc var isTabBarVisible: Bool { @objc get }

  /**
    - Selector: windows
  */
  @objc var windows: [NSWindow] { @objc get }
}

extension NSWindowTabGroup: NSWindowTabGroupExports {
}
