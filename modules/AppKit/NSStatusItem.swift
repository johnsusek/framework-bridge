import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStatusItem
    - name: NSStatusItem
    - argLabels: 
  */

@objc(NSStatusItem) protocol NSStatusItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: autosaveName
    - name: autosaveName
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var autosaveName: NSStatusItem.AutosaveName! { @objc get @objc (setAutosaveName:) set }

  /**
    - jsName: behavior
    - name: behavior
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var behavior: NSStatusItem.Behavior { @objc get @objc (setBehavior:) set }

  /**
    - jsName: button
    - name: button
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var button: NSStatusBarButton? { @objc get }

  /**
    - jsName: length
    - name: length
    - argLabels: 
  */
  @objc var length: CGFloat { @objc get @objc (setLength:) set }

  /**
    - jsName: menu
    - name: menu
    - argLabels: 
  */
  @objc var menu: NSMenu? { @objc get @objc (setMenu:) set }

  /**
    - jsName: statusBar
    - name: statusBar
    - argLabels: 
  */
  @objc var statusBar: NSStatusBar? { @objc get }

  /**
    - jsName: isVisible
    - name: visible
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: isVisible
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isVisible: Bool { @objc get @objc (setVisible:) set }
}

extension NSStatusItem: NSStatusItemExports {
}
