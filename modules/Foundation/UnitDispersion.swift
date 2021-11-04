import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitDispersion
    - Introduced: 10.12
  */

@objc(UnitDispersion) protocol UnitDispersionExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: partsPerMillion
  */
  @objc static var partsPerMillion: UnitDispersion { @objc get }
}

extension UnitDispersion: UnitDispersionExports {
}
