import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitFuelEfficiency
    - name: NSUnitFuelEfficiency
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitFuelEfficiency) protocol UnitFuelEfficiencyExports: JSExport, DimensionExports {
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
    - jsName: litersPer100Kilometers
    - name: litersPer100Kilometers
    - argLabels: 
  */
  @objc static var litersPer100Kilometers: UnitFuelEfficiency { @objc get }

  /**
    - jsName: milesPerGallon
    - name: milesPerGallon
    - argLabels: 
  */
  @objc static var milesPerGallon: UnitFuelEfficiency { @objc get }

  /**
    - jsName: milesPerImperialGallon
    - name: milesPerImperialGallon
    - argLabels: 
  */
  @objc static var milesPerImperialGallon: UnitFuelEfficiency { @objc get }
}

extension UnitFuelEfficiency: UnitFuelEfficiencyExports {
}
