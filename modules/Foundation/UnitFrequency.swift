import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitFrequency
    - Introduced: 10.12
  */

@objc(UnitFrequency) protocol UnitFrequencyExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: framesPerSecond
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var framesPerSecond: UnitFrequency { @objc get }

  /**
    - Selector: gigahertz
  */
  @objc static var gigahertz: UnitFrequency { @objc get }

  /**
    - Selector: hertz
  */
  @objc static var hertz: UnitFrequency { @objc get }

  /**
    - Selector: kilohertz
  */
  @objc static var kilohertz: UnitFrequency { @objc get }

  /**
    - Selector: megahertz
  */
  @objc static var megahertz: UnitFrequency { @objc get }

  /**
    - Selector: microhertz
  */
  @objc static var microhertz: UnitFrequency { @objc get }

  /**
    - Selector: millihertz
  */
  @objc static var millihertz: UnitFrequency { @objc get }

  /**
    - Selector: nanohertz
  */
  @objc static var nanohertz: UnitFrequency { @objc get }

  /**
    - Selector: terahertz
  */
  @objc static var terahertz: UnitFrequency { @objc get }
}

extension UnitFrequency: UnitFrequencyExports {
}
