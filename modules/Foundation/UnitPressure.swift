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
    - Selector: NSUnitPressure
    - Introduced: 10.12
  */

@objc(UnitPressure) protocol UnitPressureExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: bars
  */
  @objc static var bars: UnitPressure { @objc get }

  /**
    - Selector: gigapascals
  */
  @objc static var gigapascals: UnitPressure { @objc get }

  /**
    - Selector: hectopascals
  */
  @objc static var hectopascals: UnitPressure { @objc get }

  /**
    - Selector: inchesOfMercury
  */
  @objc static var inchesOfMercury: UnitPressure { @objc get }

  /**
    - Selector: kilopascals
  */
  @objc static var kilopascals: UnitPressure { @objc get }

  /**
    - Selector: megapascals
  */
  @objc static var megapascals: UnitPressure { @objc get }

  /**
    - Selector: millibars
  */
  @objc static var millibars: UnitPressure { @objc get }

  /**
    - Selector: millimetersOfMercury
  */
  @objc static var millimetersOfMercury: UnitPressure { @objc get }

  /**
    - Selector: newtonsPerMetersSquared
  */
  @objc static var newtonsPerMetersSquared: UnitPressure { @objc get }

  /**
    - Selector: poundsForcePerSquareInch
  */
  @objc static var poundsForcePerSquareInch: UnitPressure { @objc get }
}

extension UnitPressure: UnitPressureExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
