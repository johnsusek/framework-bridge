import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitSpeed
    - Introduced: 10.12
  */

@objc(UnitSpeed) protocol UnitSpeedExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: kilometersPerHour
  */
  @objc static var kilometersPerHour: UnitSpeed { @objc get }

  /**
    - Selector: knots
  */
  @objc static var knots: UnitSpeed { @objc get }

  /**
    - Selector: metersPerSecond
  */
  @objc static var metersPerSecond: UnitSpeed { @objc get }

  /**
    - Selector: milesPerHour
  */
  @objc static var milesPerHour: UnitSpeed { @objc get }
}

extension UnitSpeed: UnitSpeedExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
