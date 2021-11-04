import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitElectricCurrent
    - Introduced: 10.12
  */

@objc(UnitElectricCurrent) protocol UnitElectricCurrentExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: amperes
  */
  @objc static var amperes: UnitElectricCurrent { @objc get }

  /**
    - Selector: kiloamperes
  */
  @objc static var kiloamperes: UnitElectricCurrent { @objc get }

  /**
    - Selector: megaamperes
  */
  @objc static var megaamperes: UnitElectricCurrent { @objc get }

  /**
    - Selector: microamperes
  */
  @objc static var microamperes: UnitElectricCurrent { @objc get }

  /**
    - Selector: milliamperes
  */
  @objc static var milliamperes: UnitElectricCurrent { @objc get }
}

extension UnitElectricCurrent: UnitElectricCurrentExports {
}
