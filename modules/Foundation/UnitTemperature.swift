import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitTemperature
    - name: NSUnitTemperature
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitTemperature) protocol UnitTemperatureExports: JSExport, DimensionExports {
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
    - jsName: celsius
    - name: celsius
    - argLabels: 
  */
  @objc static var celsius: UnitTemperature { @objc get }

  /**
    - jsName: fahrenheit
    - name: fahrenheit
    - argLabels: 
  */
  @objc static var fahrenheit: UnitTemperature { @objc get }

  /**
    - jsName: kelvin
    - name: kelvin
    - argLabels: 
  */
  @objc static var kelvin: UnitTemperature { @objc get }
}

extension UnitTemperature: UnitTemperatureExports {
}
