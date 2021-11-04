import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSliderAccessory
    - Introduced: 10.12
  */

@objc(NSSliderAccessory) protocol NSSliderAccessoryExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: behavior
  */
  @objc var behavior: NSSliderAccessoryBehavior { @objc get @objc (setBehavior:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }
}

extension NSSliderAccessory: NSSliderAccessoryExports {
}
