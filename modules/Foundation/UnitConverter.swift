import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitConverter
    - Introduced: 10.12
  */

@objc(UnitConverter) protocol UnitConverterExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: baseUnitValueFromValue:
  */
  @objc (baseUnitValueFromValue:) func baseUnitValue(fromValue: Double) -> Double

  /**
    - Selector: valueFromBaseUnitValue:
  */
  @objc (valueFromBaseUnitValue:) func value(fromBaseUnitValue: Double) -> Double
}

extension UnitConverter: UnitConverterExports {
}
