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
    - Selector: NSEnergyFormatter
    - Introduced: 10.10
  */

@objc(EnergyFormatter) protocol EnergyFormatterExports: JSExport, FormatterExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: stringFromJoules:
  */
  @objc (stringFromJoules:) func string(fromJoules: Double) -> String

  /**
    - Selector: stringFromValue:unit:
  */
  @objc (stringFromValue:unit:) func string(fromValue: Double, unit: EnergyFormatter.Unit) -> String

  /**
    - Selector: unitStringFromJoules:usedUnit:
  */
  @objc (unitStringFromJoules:usedUnit:) func unitString(fromJoules: Double, usedUnit: UnsafeMutablePointer<EnergyFormatter.Unit>?) -> String

  /**
    - Selector: unitStringFromValue:unit:
  */
  @objc (unitStringFromValue:unit:) func unitString(fromValue: Double, unit: EnergyFormatter.Unit) -> String

  // Own Instance Properties

  /**
    - Selector: forFoodEnergyUse
  */
  @objc var isForFoodEnergyUse: Bool { @objc get @objc (setForFoodEnergyUse:) set }

  /**
    - Selector: numberFormatter
  */
  @objc var numberFormatter: NumberFormatter! { @objc get @objc (setNumberFormatter:) set }

  /**
    - Selector: unitStyle
  */
  @objc var unitStyle: Formatter.UnitStyle { @objc get @objc (setUnitStyle:) set }
}

extension EnergyFormatter: EnergyFormatterExports {
}
