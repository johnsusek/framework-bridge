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
    - Selector: NSSharingServicePickerTouchBarItem
    - Introduced: 10.12.2
  */

@objc(NSSharingServicePickerTouchBarItem) protocol NSSharingServicePickerTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: buttonImage
  */
  @objc var buttonImage: NSImage? { @objc get @objc (setButtonImage:) set }

  /**
    - Selector: buttonTitle
  */
  @objc var buttonTitle: String { @objc get @objc (setButtonTitle:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSharingServicePickerTouchBarItemDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }
}

extension NSSharingServicePickerTouchBarItem: NSSharingServicePickerTouchBarItemExports {
}
