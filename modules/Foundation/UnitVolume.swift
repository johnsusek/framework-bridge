import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitVolume
    - Introduced: 10.12
  */

@objc(UnitVolume) protocol UnitVolumeExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: acreFeet
  */
  @objc static var acreFeet: UnitVolume { @objc get }

  /**
    - Selector: bushels
  */
  @objc static var bushels: UnitVolume { @objc get }

  /**
    - Selector: centiliters
  */
  @objc static var centiliters: UnitVolume { @objc get }

  /**
    - Selector: cubicCentimeters
  */
  @objc static var cubicCentimeters: UnitVolume { @objc get }

  /**
    - Selector: cubicDecimeters
  */
  @objc static var cubicDecimeters: UnitVolume { @objc get }

  /**
    - Selector: cubicFeet
  */
  @objc static var cubicFeet: UnitVolume { @objc get }

  /**
    - Selector: cubicInches
  */
  @objc static var cubicInches: UnitVolume { @objc get }

  /**
    - Selector: cubicKilometers
  */
  @objc static var cubicKilometers: UnitVolume { @objc get }

  /**
    - Selector: cubicMeters
  */
  @objc static var cubicMeters: UnitVolume { @objc get }

  /**
    - Selector: cubicMiles
  */
  @objc static var cubicMiles: UnitVolume { @objc get }

  /**
    - Selector: cubicMillimeters
  */
  @objc static var cubicMillimeters: UnitVolume { @objc get }

  /**
    - Selector: cubicYards
  */
  @objc static var cubicYards: UnitVolume { @objc get }

  /**
    - Selector: cups
  */
  @objc static var cups: UnitVolume { @objc get }

  /**
    - Selector: deciliters
  */
  @objc static var deciliters: UnitVolume { @objc get }

  /**
    - Selector: fluidOunces
  */
  @objc static var fluidOunces: UnitVolume { @objc get }

  /**
    - Selector: gallons
  */
  @objc static var gallons: UnitVolume { @objc get }

  /**
    - Selector: imperialFluidOunces
  */
  @objc static var imperialFluidOunces: UnitVolume { @objc get }

  /**
    - Selector: imperialGallons
  */
  @objc static var imperialGallons: UnitVolume { @objc get }

  /**
    - Selector: imperialPints
  */
  @objc static var imperialPints: UnitVolume { @objc get }

  /**
    - Selector: imperialQuarts
  */
  @objc static var imperialQuarts: UnitVolume { @objc get }

  /**
    - Selector: imperialTablespoons
  */
  @objc static var imperialTablespoons: UnitVolume { @objc get }

  /**
    - Selector: imperialTeaspoons
  */
  @objc static var imperialTeaspoons: UnitVolume { @objc get }

  /**
    - Selector: kiloliters
  */
  @objc static var kiloliters: UnitVolume { @objc get }

  /**
    - Selector: liters
  */
  @objc static var liters: UnitVolume { @objc get }

  /**
    - Selector: megaliters
  */
  @objc static var megaliters: UnitVolume { @objc get }

  /**
    - Selector: metricCups
  */
  @objc static var metricCups: UnitVolume { @objc get }

  /**
    - Selector: milliliters
  */
  @objc static var milliliters: UnitVolume { @objc get }

  /**
    - Selector: pints
  */
  @objc static var pints: UnitVolume { @objc get }

  /**
    - Selector: quarts
  */
  @objc static var quarts: UnitVolume { @objc get }

  /**
    - Selector: tablespoons
  */
  @objc static var tablespoons: UnitVolume { @objc get }

  /**
    - Selector: teaspoons
  */
  @objc static var teaspoons: UnitVolume { @objc get }
}

extension UnitVolume: UnitVolumeExports {
}
