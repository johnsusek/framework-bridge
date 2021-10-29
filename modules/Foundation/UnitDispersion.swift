import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitDispersion
    - name: NSUnitDispersion
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitDispersion) protocol UnitDispersionExports: JSExport, DimensionExports {
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
    - jsName: partsPerMillion
    - name: partsPerMillion
    - argLabels: 
  */
  @objc static var partsPerMillion: UnitDispersion { @objc get }
}

extension UnitDispersion: UnitDispersionExports {
}
