import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSharingServicePickerToolbarItem
    - Introduced: 10.15
  */

@objc(NSSharingServicePickerToolbarItem) protocol NSSharingServicePickerToolbarItemExports: JSExport, NSToolbarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSharingServicePickerToolbarItemDelegate? { @objc get @objc (setDelegate:) set }
}

extension NSSharingServicePickerToolbarItem: NSSharingServicePickerToolbarItemExports {
}
