import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitSpeed
    - name: NSUnitSpeed
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitSpeed) protocol UnitSpeedExports: JSExport, DimensionExports {
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
    - jsName: kilometersPerHour
    - name: kilometersPerHour
    - argLabels: 
  */
  @objc static var kilometersPerHour: UnitSpeed { @objc get }

  /**
    - jsName: knots
    - name: knots
    - argLabels: 
  */
  @objc static var knots: UnitSpeed { @objc get }

  /**
    - jsName: metersPerSecond
    - name: metersPerSecond
    - argLabels: 
  */
  @objc static var metersPerSecond: UnitSpeed { @objc get }

  /**
    - jsName: milesPerHour
    - name: milesPerHour
    - argLabels: 
  */
  @objc static var milesPerHour: UnitSpeed { @objc get }
}

extension UnitSpeed: UnitSpeedExports {
}
