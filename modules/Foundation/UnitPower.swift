import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitPower
    - Introduced: 10.12
  */

@objc(UnitPower) protocol UnitPowerExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: femtowatts
  */
  @objc static var femtowatts: UnitPower { @objc get }

  /**
    - Selector: gigawatts
  */
  @objc static var gigawatts: UnitPower { @objc get }

  /**
    - Selector: horsepower
  */
  @objc static var horsepower: UnitPower { @objc get }

  /**
    - Selector: kilowatts
  */
  @objc static var kilowatts: UnitPower { @objc get }

  /**
    - Selector: megawatts
  */
  @objc static var megawatts: UnitPower { @objc get }

  /**
    - Selector: microwatts
  */
  @objc static var microwatts: UnitPower { @objc get }

  /**
    - Selector: milliwatts
  */
  @objc static var milliwatts: UnitPower { @objc get }

  /**
    - Selector: nanowatts
  */
  @objc static var nanowatts: UnitPower { @objc get }

  /**
    - Selector: picowatts
  */
  @objc static var picowatts: UnitPower { @objc get }

  /**
    - Selector: terawatts
  */
  @objc static var terawatts: UnitPower { @objc get }

  /**
    - Selector: watts
  */
  @objc static var watts: UnitPower { @objc get }
}

extension UnitPower: UnitPowerExports {
}
