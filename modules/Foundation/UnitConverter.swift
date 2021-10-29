import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitConverter
    - name: NSUnitConverter
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitConverter) protocol UnitConverterExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: baseUnitValue
    - name: baseUnitValueFromValue:
    - argLabels: fromValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: baseUnitValue(fromValue:)
  */
  @objc (baseUnitValueFromValue:) func baseUnitValue(fromValue: Double) -> Double

  /**
    - jsName: value
    - name: valueFromBaseUnitValue:
    - argLabels: fromBaseUnitValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: value(fromBaseUnitValue:)
  */
  @objc (valueFromBaseUnitValue:) func value(fromBaseUnitValue: Double) -> Double
}

extension UnitConverter: UnitConverterExports {
}
