import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitDuration
    - name: NSUnitDuration
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitDuration) protocol UnitDurationExports: JSExport, DimensionExports {
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
    - jsName: hours
    - name: hours
    - argLabels: 
  */
  @objc static var hours: UnitDuration { @objc get }

  /**
    - jsName: microseconds
    - name: microseconds
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var microseconds: UnitDuration { @objc get }

  /**
    - jsName: milliseconds
    - name: milliseconds
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var milliseconds: UnitDuration { @objc get }

  /**
    - jsName: minutes
    - name: minutes
    - argLabels: 
  */
  @objc static var minutes: UnitDuration { @objc get }

  /**
    - jsName: nanoseconds
    - name: nanoseconds
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var nanoseconds: UnitDuration { @objc get }

  /**
    - jsName: picoseconds
    - name: picoseconds
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var picoseconds: UnitDuration { @objc get }

  /**
    - jsName: seconds
    - name: seconds
    - argLabels: 
  */
  @objc static var seconds: UnitDuration { @objc get }
}

extension UnitDuration: UnitDurationExports {
}
