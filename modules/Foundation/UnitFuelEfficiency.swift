import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func baseUnit() -> Self

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
}
