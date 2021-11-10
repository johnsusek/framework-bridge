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
    - Selector: NSUnitEnergy
    - Introduced: 10.12
  */

@objc(UnitEnergy) protocol UnitEnergyExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: calories
  */
  @objc static var calories: UnitEnergy { @objc get }

  /**
    - Selector: joules
  */
  @objc static var joules: UnitEnergy { @objc get }

  /**
    - Selector: kilocalories
  */
  @objc static var kilocalories: UnitEnergy { @objc get }

  /**
    - Selector: kilojoules
  */
  @objc static var kilojoules: UnitEnergy { @objc get }

  /**
    - Selector: kilowattHours
  */
  @objc static var kilowattHours: UnitEnergy { @objc get }
}

extension UnitEnergy: UnitEnergyExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
