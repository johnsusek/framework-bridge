import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMenuToolbarItem
    - name: NSMenuToolbarItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSMenuToolbarItem) protocol NSMenuToolbarItemExports: JSExport, NSToolbarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: menu
    - name: menu
    - argLabels: 
  */
  @objc var menu: NSMenu { @objc get @objc (setMenu:) set }

  /**
    - jsName: showsIndicator
    - name: showsIndicator
    - argLabels: 
  */
  @objc var showsIndicator: Bool { @objc get @objc (setShowsIndicator:) set }
}

extension NSMenuToolbarItem: NSMenuToolbarItemExports {
}
