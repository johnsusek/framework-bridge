import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSharingServicePickerTouchBarItem
    - name: NSSharingServicePickerTouchBarItem
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSSharingServicePickerTouchBarItem) protocol NSSharingServicePickerTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: buttonImage
    - name: buttonImage
    - argLabels: 
  */
  @objc var buttonImage: NSImage? { @objc get @objc (setButtonImage:) set }

  /**
    - jsName: buttonTitle
    - name: buttonTitle
    - argLabels: 
  */
  @objc var buttonTitle: String { @objc get @objc (setButtonTitle:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSharingServicePickerTouchBarItemDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }
}

extension NSSharingServicePickerTouchBarItem: NSSharingServicePickerTouchBarItemExports {
}
