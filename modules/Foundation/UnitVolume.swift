import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitVolume
    - name: NSUnitVolume
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitVolume) protocol UnitVolumeExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - jsName: baseUnit
    - name: baseUnit
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - jsName: acreFeet
    - name: acreFeet
    - argLabels: 
  */
  @objc static var acreFeet: UnitVolume { @objc get }

  /**
    - jsName: bushels
    - name: bushels
    - argLabels: 
  */
  @objc static var bushels: UnitVolume { @objc get }

  /**
    - jsName: centiliters
    - name: centiliters
    - argLabels: 
  */
  @objc static var centiliters: UnitVolume { @objc get }

  /**
    - jsName: cubicCentimeters
    - name: cubicCentimeters
    - argLabels: 
  */
  @objc static var cubicCentimeters: UnitVolume { @objc get }

  /**
    - jsName: cubicDecimeters
    - name: cubicDecimeters
    - argLabels: 
  */
  @objc static var cubicDecimeters: UnitVolume { @objc get }

  /**
    - jsName: cubicFeet
    - name: cubicFeet
    - argLabels: 
  */
  @objc static var cubicFeet: UnitVolume { @objc get }

  /**
    - jsName: cubicInches
    - name: cubicInches
    - argLabels: 
  */
  @objc static var cubicInches: UnitVolume { @objc get }

  /**
    - jsName: cubicKilometers
    - name: cubicKilometers
    - argLabels: 
  */
  @objc static var cubicKilometers: UnitVolume { @objc get }

  /**
    - jsName: cubicMeters
    - name: cubicMeters
    - argLabels: 
  */
  @objc static var cubicMeters: UnitVolume { @objc get }

  /**
    - jsName: cubicMiles
    - name: cubicMiles
    - argLabels: 
  */
  @objc static var cubicMiles: UnitVolume { @objc get }

  /**
    - jsName: cubicMillimeters
    - name: cubicMillimeters
    - argLabels: 
  */
  @objc static var cubicMillimeters: UnitVolume { @objc get }

  /**
    - jsName: cubicYards
    - name: cubicYards
    - argLabels: 
  */
  @objc static var cubicYards: UnitVolume { @objc get }

  /**
    - jsName: cups
    - name: cups
    - argLabels: 
  */
  @objc static var cups: UnitVolume { @objc get }

  /**
    - jsName: deciliters
    - name: deciliters
    - argLabels: 
  */
  @objc static var deciliters: UnitVolume { @objc get }

  /**
    - jsName: fluidOunces
    - name: fluidOunces
    - argLabels: 
  */
  @objc static var fluidOunces: UnitVolume { @objc get }

  /**
    - jsName: gallons
    - name: gallons
    - argLabels: 
  */
  @objc static var gallons: UnitVolume { @objc get }

  /**
    - jsName: imperialFluidOunces
    - name: imperialFluidOunces
    - argLabels: 
  */
  @objc static var imperialFluidOunces: UnitVolume { @objc get }

  /**
    - jsName: imperialGallons
    - name: imperialGallons
    - argLabels: 
  */
  @objc static var imperialGallons: UnitVolume { @objc get }

  /**
    - jsName: imperialPints
    - name: imperialPints
    - argLabels: 
  */
  @objc static var imperialPints: UnitVolume { @objc get }

  /**
    - jsName: imperialQuarts
    - name: imperialQuarts
    - argLabels: 
  */
  @objc static var imperialQuarts: UnitVolume { @objc get }

  /**
    - jsName: imperialTablespoons
    - name: imperialTablespoons
    - argLabels: 
  */
  @objc static var imperialTablespoons: UnitVolume { @objc get }

  /**
    - jsName: imperialTeaspoons
    - name: imperialTeaspoons
    - argLabels: 
  */
  @objc static var imperialTeaspoons: UnitVolume { @objc get }

  /**
    - jsName: kiloliters
    - name: kiloliters
    - argLabels: 
  */
  @objc static var kiloliters: UnitVolume { @objc get }

  /**
    - jsName: liters
    - name: liters
    - argLabels: 
  */
  @objc static var liters: UnitVolume { @objc get }

  /**
    - jsName: megaliters
    - name: megaliters
    - argLabels: 
  */
  @objc static var megaliters: UnitVolume { @objc get }

  /**
    - jsName: metricCups
    - name: metricCups
    - argLabels: 
  */
  @objc static var metricCups: UnitVolume { @objc get }

  /**
    - jsName: milliliters
    - name: milliliters
    - argLabels: 
  */
  @objc static var milliliters: UnitVolume { @objc get }

  /**
    - jsName: pints
    - name: pints
    - argLabels: 
  */
  @objc static var pints: UnitVolume { @objc get }

  /**
    - jsName: quarts
    - name: quarts
    - argLabels: 
  */
  @objc static var quarts: UnitVolume { @objc get }

  /**
    - jsName: tablespoons
    - name: tablespoons
    - argLabels: 
  */
  @objc static var tablespoons: UnitVolume { @objc get }

  /**
    - jsName: teaspoons
    - name: teaspoons
    - argLabels: 
  */
  @objc static var teaspoons: UnitVolume { @objc get }
}

extension UnitVolume: UnitVolumeExports {
}
