import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitAcceleration
    - Introduced: 10.12
  */

@objc(UnitAcceleration) protocol UnitAccelerationExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: gravity
  */
  @objc static var gravity: UnitAcceleration { @objc get }

  /**
    - Selector: metersPerSecondSquared
  */
  @objc static var metersPerSecondSquared: UnitAcceleration { @objc get }
}

extension UnitAcceleration: UnitAccelerationExports {
}
