import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitEnergy
    - name: NSUnitEnergy
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitEnergy) protocol UnitEnergyExports: JSExport, DimensionExports {
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
    - jsName: calories
    - name: calories
    - argLabels: 
  */
  @objc static var calories: UnitEnergy { @objc get }

  /**
    - jsName: joules
    - name: joules
    - argLabels: 
  */
  @objc static var joules: UnitEnergy { @objc get }

  /**
    - jsName: kilocalories
    - name: kilocalories
    - argLabels: 
  */
  @objc static var kilocalories: UnitEnergy { @objc get }

  /**
    - jsName: kilojoules
    - name: kilojoules
    - argLabels: 
  */
  @objc static var kilojoules: UnitEnergy { @objc get }

  /**
    - jsName: kilowattHours
    - name: kilowattHours
    - argLabels: 
  */
  @objc static var kilowattHours: UnitEnergy { @objc get }
}

extension UnitEnergy: UnitEnergyExports {
}
