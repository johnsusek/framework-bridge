import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func baseUnit() -> Self

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
}
