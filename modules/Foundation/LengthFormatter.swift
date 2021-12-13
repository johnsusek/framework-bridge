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
    - Selector: NSLengthFormatter
    - Introduced: 10.10
  */

@objc(LengthFormatter) protocol LengthFormatterExports: JSExport, FormatterExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: stringFromMeters:
  */
  @objc (stringFromMeters:) func string(fromMeters: Double) -> String

  /**
    - Selector: stringFromValue:unit:
  */
  @objc (stringFromValue:unit:) func string(fromValue: Double, unit: LengthFormatter.Unit) -> String

  /**
    - Selector: unitStringFromMeters:usedUnit:
  */
  @objc (unitStringFromMeters:usedUnit:) func unitString(fromMeters: Double, usedUnit: UnsafeMutablePointer<LengthFormatter.Unit>?) -> String

  /**
    - Selector: unitStringFromValue:unit:
  */
  @objc (unitStringFromValue:unit:) func unitString(fromValue: Double, unit: LengthFormatter.Unit) -> String

  // Own Instance Properties

  /**
    - Selector: forPersonHeightUse
  */
  @objc var isForPersonHeightUse: Bool { @objc get @objc (setForPersonHeightUse:) set }

  /**
    - Selector: numberFormatter
  */
  @objc var numberFormatter: NumberFormatter! { @objc get @objc (setNumberFormatter:) set }

  /**
    - Selector: unitStyle
  */
  @objc var unitStyle: Formatter.UnitStyle { @objc get @objc (setUnitStyle:) set }
}

extension LengthFormatter: LengthFormatterExports {
}
