import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSStatusItem
  */

@objc(NSStatusItem) protocol NSStatusItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: autosaveName
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var autosaveName: NSStatusItem.AutosaveName! { @objc get @objc (setAutosaveName:) set }

  /**
    - Selector: behavior
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var behavior: NSStatusItem.Behavior { @objc get @objc (setBehavior:) set }

  /**
    - Selector: button
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var button: NSStatusBarButton? { @objc get }

  /**
    - Selector: length
  */
  @objc var length: CGFloat { @objc get @objc (setLength:) set }

  /**
    - Selector: menu
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - Selector: statusBar
  */
  @objc var statusBar: NSStatusBar? { @objc get }

  /**
    - Selector: visible
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isVisible: Bool { @objc get @objc (setVisible:) set }
}

extension NSStatusItem: NSStatusItemExports {
}
