import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitAcceleration
    - name: NSUnitAcceleration
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitAcceleration) protocol UnitAccelerationExports: JSExport, DimensionExports {
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
    - jsName: gravity
    - name: gravity
    - argLabels: 
  */
  @objc static var gravity: UnitAcceleration { @objc get }

  /**
    - jsName: metersPerSecondSquared
    - name: metersPerSecondSquared
    - argLabels: 
  */
  @objc static var metersPerSecondSquared: UnitAcceleration { @objc get }
}

extension UnitAcceleration: UnitAccelerationExports {
}
