import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitElectricResistance
    - name: NSUnitElectricResistance
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitElectricResistance) protocol UnitElectricResistanceExports: JSExport, DimensionExports {
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
    - jsName: kiloohms
    - name: kiloohms
    - argLabels: 
  */
  @objc static var kiloohms: UnitElectricResistance { @objc get }

  /**
    - jsName: megaohms
    - name: megaohms
    - argLabels: 
  */
  @objc static var megaohms: UnitElectricResistance { @objc get }

  /**
    - jsName: microohms
    - name: microohms
    - argLabels: 
  */
  @objc static var microohms: UnitElectricResistance { @objc get }

  /**
    - jsName: milliohms
    - name: milliohms
    - argLabels: 
  */
  @objc static var milliohms: UnitElectricResistance { @objc get }

  /**
    - jsName: ohms
    - name: ohms
    - argLabels: 
  */
  @objc static var ohms: UnitElectricResistance { @objc get }
}

extension UnitElectricResistance: UnitElectricResistanceExports {
}
