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
    - Selector: NSUnitElectricCharge
    - Introduced: 10.12
  */

@objc(UnitElectricCharge) protocol UnitElectricChargeExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: ampereHours
  */
  @objc static var ampereHours: UnitElectricCharge { @objc get }

  /**
    - Selector: coulombs
  */
  @objc static var coulombs: UnitElectricCharge { @objc get }

  /**
    - Selector: kiloampereHours
  */
  @objc static var kiloampereHours: UnitElectricCharge { @objc get }

  /**
    - Selector: megaampereHours
  */
  @objc static var megaampereHours: UnitElectricCharge { @objc get }

  /**
    - Selector: microampereHours
  */
  @objc static var microampereHours: UnitElectricCharge { @objc get }

  /**
    - Selector: milliampereHours
  */
  @objc static var milliampereHours: UnitElectricCharge { @objc get }
}

extension UnitElectricCharge: UnitElectricChargeExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
