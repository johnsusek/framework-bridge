import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSharingServicePickerToolbarItem
    - name: NSSharingServicePickerToolbarItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSSharingServicePickerToolbarItem) protocol NSSharingServicePickerToolbarItemExports: JSExport, NSToolbarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSharingServicePickerToolbarItemDelegate? { @objc get @objc (setDelegate:) set }
}

extension NSSharingServicePickerToolbarItem: NSSharingServicePickerToolbarItemExports {
}
