import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitElectricCurrent
    - name: NSUnitElectricCurrent
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitElectricCurrent) protocol UnitElectricCurrentExports: JSExport, DimensionExports {
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
    - jsName: amperes
    - name: amperes
    - argLabels: 
  */
  @objc static var amperes: UnitElectricCurrent { @objc get }

  /**
    - jsName: kiloamperes
    - name: kiloamperes
    - argLabels: 
  */
  @objc static var kiloamperes: UnitElectricCurrent { @objc get }

  /**
    - jsName: megaamperes
    - name: megaamperes
    - argLabels: 
  */
  @objc static var megaamperes: UnitElectricCurrent { @objc get }

  /**
    - jsName: microamperes
    - name: microamperes
    - argLabels: 
  */
  @objc static var microamperes: UnitElectricCurrent { @objc get }

  /**
    - jsName: milliamperes
    - name: milliamperes
    - argLabels: 
  */
  @objc static var milliamperes: UnitElectricCurrent { @objc get }
}

extension UnitElectricCurrent: UnitElectricCurrentExports {
}
