import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitIlluminance
    - Introduced: 10.12
  */

@objc(UnitIlluminance) protocol UnitIlluminanceExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: lux
  */
  @objc static var lux: UnitIlluminance { @objc get }
}

extension UnitIlluminance: UnitIlluminanceExports {
}
