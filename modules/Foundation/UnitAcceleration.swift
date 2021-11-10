import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitAcceleration
    - Introduced: 10.12
  */

@objc(UnitAcceleration) protocol UnitAccelerationExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: gravity
  */
  @objc static var gravity: UnitAcceleration { @objc get }

  /**
    - Selector: metersPerSecondSquared
  */
  @objc static var metersPerSecondSquared: UnitAcceleration { @objc get }
}

extension UnitAcceleration: UnitAccelerationExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
