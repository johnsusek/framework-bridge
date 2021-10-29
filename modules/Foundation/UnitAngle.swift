import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitAngle
    - name: NSUnitAngle
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitAngle) protocol UnitAngleExports: JSExport, DimensionExports {
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
    - jsName: arcMinutes
    - name: arcMinutes
    - argLabels: 
  */
  @objc static var arcMinutes: UnitAngle { @objc get }

  /**
    - jsName: arcSeconds
    - name: arcSeconds
    - argLabels: 
  */
  @objc static var arcSeconds: UnitAngle { @objc get }

  /**
    - jsName: degrees
    - name: degrees
    - argLabels: 
  */
  @objc static var degrees: UnitAngle { @objc get }

  /**
    - jsName: gradians
    - name: gradians
    - argLabels: 
  */
  @objc static var gradians: UnitAngle { @objc get }

  /**
    - jsName: radians
    - name: radians
    - argLabels: 
  */
  @objc static var radians: UnitAngle { @objc get }

  /**
    - jsName: revolutions
    - name: revolutions
    - argLabels: 
  */
  @objc static var revolutions: UnitAngle { @objc get }
}

extension UnitAngle: UnitAngleExports {
}
