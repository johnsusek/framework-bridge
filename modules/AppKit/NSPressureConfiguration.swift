import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPressureConfiguration
    - name: NSPressureConfiguration
    - argLabels: 
    - Introduced: 10.10.3
  */

@objc(NSPressureConfiguration) protocol NSPressureConfigurationExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithPressureBehavior
    - name: initWithPressureBehavior:
    - argLabels: 
    - constructorTokens: pressureBehavior
  */
  @objc static func createWithPressureBehavior(_: NSEvent.PressureBehavior) -> Self

  /**
    - jsName: set
    - name: set
    - argLabels: 
    - constructorTokens: 
  */
  @objc func set()

  // Own Instance Properties

  /**
    - jsName: pressureBehavior
    - name: pressureBehavior
    - argLabels: 
  */
  @objc var pressureBehavior: NSEvent.PressureBehavior { @objc get }
}

extension NSPressureConfiguration: NSPressureConfigurationExports {
  @objc public static func createWithPressureBehavior(_ pressureBehavior: NSEvent.PressureBehavior) -> Self {
    return self.init(pressureBehavior: pressureBehavior)
  }

}
