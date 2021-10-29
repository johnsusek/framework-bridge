import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitElectricCharge
    - name: NSUnitElectricCharge
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitElectricCharge) protocol UnitElectricChargeExports: JSExport, DimensionExports {
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
    - jsName: ampereHours
    - name: ampereHours
    - argLabels: 
  */
  @objc static var ampereHours: UnitElectricCharge { @objc get }

  /**
    - jsName: coulombs
    - name: coulombs
    - argLabels: 
  */
  @objc static var coulombs: UnitElectricCharge { @objc get }

  /**
    - jsName: kiloampereHours
    - name: kiloampereHours
    - argLabels: 
  */
  @objc static var kiloampereHours: UnitElectricCharge { @objc get }

  /**
    - jsName: megaampereHours
    - name: megaampereHours
    - argLabels: 
  */
  @objc static var megaampereHours: UnitElectricCharge { @objc get }

  /**
    - jsName: microampereHours
    - name: microampereHours
    - argLabels: 
  */
  @objc static var microampereHours: UnitElectricCharge { @objc get }

  /**
    - jsName: milliampereHours
    - name: milliampereHours
    - argLabels: 
  */
  @objc static var milliampereHours: UnitElectricCharge { @objc get }
}

extension UnitElectricCharge: UnitElectricChargeExports {
}
