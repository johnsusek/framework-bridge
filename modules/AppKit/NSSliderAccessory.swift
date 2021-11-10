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
    - Selector: NSSliderAccessory
    - Introduced: 10.12
  */

@objc(NSSliderAccessory) protocol NSSliderAccessoryExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: accessoryWithImage:
  */
  @objc static func createWithAccessoryWithImage(_ image: NSImage) -> NSSliderAccessory

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

  /**
    - Selector: accessoryWithImage:
  */
  @objc public static func createWithAccessoryWithImage(_ image: NSImage) -> NSSliderAccessory {
    return self.init(image: image)
  }

}
