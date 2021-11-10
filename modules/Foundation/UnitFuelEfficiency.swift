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
    - Selector: NSUnitFuelEfficiency
    - Introduced: 10.12
  */

@objc(UnitFuelEfficiency) protocol UnitFuelEfficiencyExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: litersPer100Kilometers
  */
  @objc static var litersPer100Kilometers: UnitFuelEfficiency { @objc get }

  /**
    - Selector: milesPerGallon
  */
  @objc static var milesPerGallon: UnitFuelEfficiency { @objc get }

  /**
    - Selector: milesPerImperialGallon
  */
  @objc static var milesPerImperialGallon: UnitFuelEfficiency { @objc get }
}

extension UnitFuelEfficiency: UnitFuelEfficiencyExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
