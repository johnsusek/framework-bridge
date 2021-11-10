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
    - Selector: NSUnitDuration
    - Introduced: 10.12
  */

@objc(UnitDuration) protocol UnitDurationExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func createWithBaseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: hours
  */
  @objc static var hours: UnitDuration { @objc get }

  /**
    - Selector: microseconds
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var microseconds: UnitDuration { @objc get }

  /**
    - Selector: milliseconds
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var milliseconds: UnitDuration { @objc get }

  /**
    - Selector: minutes
  */
  @objc static var minutes: UnitDuration { @objc get }

  /**
    - Selector: nanoseconds
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var nanoseconds: UnitDuration { @objc get }

  /**
    - Selector: picoseconds
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var picoseconds: UnitDuration { @objc get }

  /**
    - Selector: seconds
  */
  @objc static var seconds: UnitDuration { @objc get }
}

extension UnitDuration: UnitDurationExports {

  /**
    - Selector: baseUnit
  */
  @objc public static func createWithBaseUnit() -> Self {
    return self.baseUnit()
  }

}
