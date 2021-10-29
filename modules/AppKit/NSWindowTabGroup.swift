import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSWindowTabGroup
    - name: NSWindowTabGroup
    - argLabels: 
    - Introduced: 10.13
  */

@objc(NSWindowTabGroup) protocol NSWindowTabGroupExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addWindow
    - name: addWindow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addWindow(_: NSWindow)

  /**
    - jsName: insertWindow
    - name: insertWindow:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertWindow(_:at:)
  */
  @objc (insertWindow:atIndex:) func insertWindow(_: NSWindow, at: Int)

  /**
    - jsName: removeWindow
    - name: removeWindow:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeWindow(_: NSWindow)

  // Own Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSWindow.TabbingIdentifier { @objc get }

  /**
    - jsName: isOverviewVisible
    - name: overviewVisible
    - argLabels: 
    - obsoleted: 3
    - renamed: isOverviewVisible
  */
  @objc var isOverviewVisible: Bool { @objc get @objc (setOverviewVisible:) set }

  /**
    - jsName: selectedWindow
    - name: selectedWindow
    - argLabels: 
  */
  @objc var selectedWindow: NSWindow? { @objc get @objc (setSelectedWindow:) set }

  /**
    - jsName: isTabBarVisible
    - name: tabBarVisible
    - argLabels: 
    - obsoleted: 3
    - renamed: isTabBarVisible
  */
  @objc var isTabBarVisible: Bool { @objc get }

  /**
    - jsName: windows
    - name: windows
    - argLabels: 
  */
  @objc var windows: [NSWindow] { @objc get }
}

extension NSWindowTabGroup: NSWindowTabGroupExports {
}
