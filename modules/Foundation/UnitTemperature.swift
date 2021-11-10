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
    - Selector: NSUnitTemperature
    - Introduced: 10.12
  */

@objc(UnitTemperature) protocol UnitTemperatureExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: celsius
  */
  @objc static var celsius: UnitTemperature { @objc get }

  /**
    - Selector: fahrenheit
  */
  @objc static var fahrenheit: UnitTemperature { @objc get }

  /**
    - Selector: kelvin
  */
  @objc static var kelvin: UnitTemperature { @objc get }
}

extension UnitTemperature: UnitTemperatureExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
