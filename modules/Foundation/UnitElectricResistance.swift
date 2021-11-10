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
    - Selector: NSUnitElectricResistance
    - Introduced: 10.12
  */

@objc(UnitElectricResistance) protocol UnitElectricResistanceExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: kiloohms
  */
  @objc static var kiloohms: UnitElectricResistance { @objc get }

  /**
    - Selector: megaohms
  */
  @objc static var megaohms: UnitElectricResistance { @objc get }

  /**
    - Selector: microohms
  */
  @objc static var microohms: UnitElectricResistance { @objc get }

  /**
    - Selector: milliohms
  */
  @objc static var milliohms: UnitElectricResistance { @objc get }

  /**
    - Selector: ohms
  */
  @objc static var ohms: UnitElectricResistance { @objc get }
}

extension UnitElectricResistance: UnitElectricResistanceExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
