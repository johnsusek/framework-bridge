import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitConcentrationMass
    - name: NSUnitConcentrationMass
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitConcentrationMass) protocol UnitConcentrationMassExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - jsName: baseUnit
    - name: baseUnit
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func baseUnit() -> Self

  /**
    - jsName: millimolesPerLiter
    - name: millimolesPerLiterWithGramsPerMole:
    - argLabels: withGramsPerMole
    - constructorTokens: 
    - obsoleted: 3
    - renamed: millimolesPerLiter(withGramsPerMole:)
  */
  @objc (millimolesPerLiterWithGramsPerMole:) static func millimolesPerLiter(withGramsPerMole: Double) -> UnitConcentrationMass

  // Own Static Properties

  /**
    - jsName: gramsPerLiter
    - name: gramsPerLiter
    - argLabels: 
  */
  @objc static var gramsPerLiter: UnitConcentrationMass { @objc get }

  /**
    - jsName: milligramsPerDeciliter
    - name: milligramsPerDeciliter
    - argLabels: 
  */
  @objc static var milligramsPerDeciliter: UnitConcentrationMass { @objc get }
}

extension UnitConcentrationMass: UnitConcentrationMassExports {
}
