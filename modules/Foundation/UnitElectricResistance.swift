import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitElectricResistance
    - Introduced: 10.12
  */

@objc(UnitElectricResistance) protocol UnitElectricResistanceExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: kiloohms
  */
  @objc static var kiloohms: UnitElectricResistance { @objc get }

  /**
    - Selector: megaohms
  */
  @objc static var megaohms: UnitElectricResistance { @objc get }

  /**
    - Selector: microohms
  */
  @objc static var microohms: UnitElectricResistance { @objc get }

  /**
    - Selector: milliohms
  */
  @objc static var milliohms: UnitElectricResistance { @objc get }

  /**
    - Selector: ohms
  */
  @objc static var ohms: UnitElectricResistance { @objc get }
}

extension UnitElectricResistance: UnitElectricResistanceExports {
}
