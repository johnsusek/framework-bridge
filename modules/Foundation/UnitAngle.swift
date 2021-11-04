import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc static func baseUnit() -> Self

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
}
