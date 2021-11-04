import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPressureConfiguration
    - Introduced: 10.10.3
  */

@objc(NSPressureConfiguration) protocol NSPressureConfigurationExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithPressureBehavior:
  */
  @objc static func createWithPressureBehavior(_: NSEvent.PressureBehavior) -> Self

  /**
    - Selector: set
  */
  @objc func set()

  // Own Instance Properties

  /**
    - Selector: pressureBehavior
  */
  @objc var pressureBehavior: NSEvent.PressureBehavior { @objc get }
}

extension NSPressureConfiguration: NSPressureConfigurationExports {
  @objc public static func createWithPressureBehavior(_ pressureBehavior: NSEvent.PressureBehavior) -> Self {
    return self.init(pressureBehavior: pressureBehavior)
  }

}
