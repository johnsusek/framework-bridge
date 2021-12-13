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
    - Selector: NSMassFormatter
    - Introduced: 10.10
  */

@objc(MassFormatter) protocol MassFormatterExports: JSExport, FormatterExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: stringFromKilograms:
  */
  @objc (stringFromKilograms:) func string(fromKilograms: Double) -> String

  /**
    - Selector: stringFromValue:unit:
  */
  @objc (stringFromValue:unit:) func string(fromValue: Double, unit: MassFormatter.Unit) -> String

  /**
    - Selector: unitStringFromKilograms:usedUnit:
  */
  @objc (unitStringFromKilograms:usedUnit:) func unitString(fromKilograms: Double, usedUnit: UnsafeMutablePointer<MassFormatter.Unit>?) -> String

  /**
    - Selector: unitStringFromValue:unit:
  */
  @objc (unitStringFromValue:unit:) func unitString(fromValue: Double, unit: MassFormatter.Unit) -> String

  // Own Instance Properties

  /**
    - Selector: forPersonMassUse
  */
  @objc var isForPersonMassUse: Bool { @objc get @objc (setForPersonMassUse:) set }

  /**
    - Selector: numberFormatter
  */
  @objc var numberFormatter: NumberFormatter! { @objc get @objc (setNumberFormatter:) set }

  /**
    - Selector: unitStyle
  */
  @objc var unitStyle: Formatter.UnitStyle { @objc get @objc (setUnitStyle:) set }
}

extension MassFormatter: MassFormatterExports {
}
