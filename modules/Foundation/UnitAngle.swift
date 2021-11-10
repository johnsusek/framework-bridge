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
    - Selector: NSUnitAngle
    - Introduced: 10.12
  */

@objc(UnitAngle) protocol UnitAngleExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: arcMinutes
  */
  @objc static var arcMinutes: UnitAngle { @objc get }

  /**
    - Selector: arcSeconds
  */
  @objc static var arcSeconds: UnitAngle { @objc get }

  /**
    - Selector: degrees
  */
  @objc static var degrees: UnitAngle { @objc get }

  /**
    - Selector: gradians
  */
  @objc static var gradians: UnitAngle { @objc get }

  /**
    - Selector: radians
  */
  @objc static var radians: UnitAngle { @objc get }

  /**
    - Selector: revolutions
  */
  @objc static var revolutions: UnitAngle { @objc get }
}

extension UnitAngle: UnitAngleExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
