import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitElectricPotentialDifference
    - Introduced: 10.12
  */

@objc(UnitElectricPotentialDifference) protocol UnitElectricPotentialDifferenceExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: kilovolts
  */
  @objc static var kilovolts: UnitElectricPotentialDifference { @objc get }

  /**
    - Selector: megavolts
  */
  @objc static var megavolts: UnitElectricPotentialDifference { @objc get }

  /**
    - Selector: microvolts
  */
  @objc static var microvolts: UnitElectricPotentialDifference { @objc get }

  /**
    - Selector: millivolts
  */
  @objc static var millivolts: UnitElectricPotentialDifference { @objc get }

  /**
    - Selector: volts
  */
  @objc static var volts: UnitElectricPotentialDifference { @objc get }
}

extension UnitElectricPotentialDifference: UnitElectricPotentialDifferenceExports {
}
