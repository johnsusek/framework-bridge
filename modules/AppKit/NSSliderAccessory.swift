import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSliderAccessory
    - name: NSSliderAccessory
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSSliderAccessory) protocol NSSliderAccessoryExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: behavior
    - name: behavior
    - argLabels: 
  */
  @objc var behavior: NSSliderAccessoryBehavior { @objc get @objc (setBehavior:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }
}

extension NSSliderAccessory: NSSliderAccessoryExports {
}
