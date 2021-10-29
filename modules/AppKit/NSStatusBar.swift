import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStatusBar
    - name: NSStatusBar
    - argLabels: 
  */

@objc(NSStatusBar) protocol NSStatusBarExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: system
    - name: systemStatusBar
    - argLabels: 
    - obsoleted: 3
    - renamed: system
  */
  @objc static var system: NSStatusBar { @objc (systemStatusBar) get }

  // Instance Methods

  /**
    - jsName: removeStatusItem
    - name: removeStatusItem:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (removeStatusItem:) func removeStatusItem(_: NSStatusItem)

  /**
    - jsName: statusItem
    - name: statusItemWithLength:
    - argLabels: withLength
    - constructorTokens: 
    - obsoleted: 3
    - renamed: statusItem(withLength:)
  */
  @objc (statusItemWithLength:) func statusItem(withLength: CGFloat) -> NSStatusItem

  // Own Instance Properties

  /**
    - jsName: thickness
    - name: thickness
    - argLabels: 
  */
  @objc var thickness: CGFloat { @objc get }

  /**
    - jsName: isVertical
    - name: vertical
    - argLabels: 
    - obsoleted: 3
    - renamed: isVertical
  */
  @objc var isVertical: Bool { @objc get }
}

extension NSStatusBar: NSStatusBarExports {
}
