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
    - Selector: NSUnitArea
    - Introduced: 10.12
  */

@objc(UnitArea) protocol UnitAreaExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: acres
  */
  @objc static var acres: UnitArea { @objc get }

  /**
    - Selector: ares
  */
  @objc static var ares: UnitArea { @objc get }

  /**
    - Selector: hectares
  */
  @objc static var hectares: UnitArea { @objc get }

  /**
    - Selector: squareCentimeters
  */
  @objc static var squareCentimeters: UnitArea { @objc get }

  /**
    - Selector: squareFeet
  */
  @objc static var squareFeet: UnitArea { @objc get }

  /**
    - Selector: squareInches
  */
  @objc static var squareInches: UnitArea { @objc get }

  /**
    - Selector: squareKilometers
  */
  @objc static var squareKilometers: UnitArea { @objc get }

  /**
    - Selector: squareMegameters
  */
  @objc static var squareMegameters: UnitArea { @objc get }

  /**
    - Selector: squareMeters
  */
  @objc static var squareMeters: UnitArea { @objc get }

  /**
    - Selector: squareMicrometers
  */
  @objc static var squareMicrometers: UnitArea { @objc get }

  /**
    - Selector: squareMiles
  */
  @objc static var squareMiles: UnitArea { @objc get }

  /**
    - Selector: squareMillimeters
  */
  @objc static var squareMillimeters: UnitArea { @objc get }

  /**
    - Selector: squareNanometers
  */
  @objc static var squareNanometers: UnitArea { @objc get }

  /**
    - Selector: squareYards
  */
  @objc static var squareYards: UnitArea { @objc get }
}

extension UnitArea: UnitAreaExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
