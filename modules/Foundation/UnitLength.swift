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
    - Selector: NSUnitLength
    - Introduced: 10.12
  */

@objc(UnitLength) protocol UnitLengthExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: astronomicalUnits
  */
  @objc static var astronomicalUnits: UnitLength { @objc get }

  /**
    - Selector: centimeters
  */
  @objc static var centimeters: UnitLength { @objc get }

  /**
    - Selector: decameters
  */
  @objc static var decameters: UnitLength { @objc get }

  /**
    - Selector: decimeters
  */
  @objc static var decimeters: UnitLength { @objc get }

  /**
    - Selector: fathoms
  */
  @objc static var fathoms: UnitLength { @objc get }

  /**
    - Selector: feet
  */
  @objc static var feet: UnitLength { @objc get }

  /**
    - Selector: furlongs
  */
  @objc static var furlongs: UnitLength { @objc get }

  /**
    - Selector: hectometers
  */
  @objc static var hectometers: UnitLength { @objc get }

  /**
    - Selector: inches
  */
  @objc static var inches: UnitLength { @objc get }

  /**
    - Selector: kilometers
  */
  @objc static var kilometers: UnitLength { @objc get }

  /**
    - Selector: lightyears
  */
  @objc static var lightyears: UnitLength { @objc get }

  /**
    - Selector: megameters
  */
  @objc static var megameters: UnitLength { @objc get }

  /**
    - Selector: meters
  */
  @objc static var meters: UnitLength { @objc get }

  /**
    - Selector: micrometers
  */
  @objc static var micrometers: UnitLength { @objc get }

  /**
    - Selector: miles
  */
  @objc static var miles: UnitLength { @objc get }

  /**
    - Selector: millimeters
  */
  @objc static var millimeters: UnitLength { @objc get }

  /**
    - Selector: nanometers
  */
  @objc static var nanometers: UnitLength { @objc get }

  /**
    - Selector: nauticalMiles
  */
  @objc static var nauticalMiles: UnitLength { @objc get }

  /**
    - Selector: parsecs
  */
  @objc static var parsecs: UnitLength { @objc get }

  /**
    - Selector: picometers
  */
  @objc static var picometers: UnitLength { @objc get }

  /**
    - Selector: scandinavianMiles
  */
  @objc static var scandinavianMiles: UnitLength { @objc get }

  /**
    - Selector: yards
  */
  @objc static var yards: UnitLength { @objc get }
}

extension UnitLength: UnitLengthExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
