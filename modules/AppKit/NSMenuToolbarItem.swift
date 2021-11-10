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
    - Selector: NSMenuToolbarItem
    - Introduced: 10.15
  */

@objc(NSMenuToolbarItem) protocol NSMenuToolbarItemExports: JSExport, NSToolbarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: menu
  */
  @objc var menu: NSMenu { @objc get @objc (setMenu:) set }

  /**
    - Selector: showsIndicator
  */
  @objc var showsIndicator: Bool { @objc get @objc (setShowsIndicator:) set }
}

extension NSMenuToolbarItem: NSMenuToolbarItemExports {
}
