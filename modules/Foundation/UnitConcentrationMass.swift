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
    - Selector: NSUnitConcentrationMass
    - Introduced: 10.12
  */

@objc(UnitConcentrationMass) protocol UnitConcentrationMassExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  /**
    - Selector: millimolesPerLiterWithGramsPerMole:
  */
  @objc (millimolesPerLiterWithGramsPerMole:) static func millimolesPerLiter(withGramsPerMole: Double) -> UnitConcentrationMass

  // Own Static Properties

  /**
    - Selector: gramsPerLiter
  */
  @objc static var gramsPerLiter: UnitConcentrationMass { @objc get }

  /**
    - Selector: milligramsPerDeciliter
  */
  @objc static var milligramsPerDeciliter: UnitConcentrationMass { @objc get }
}

extension UnitConcentrationMass: UnitConcentrationMassExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
