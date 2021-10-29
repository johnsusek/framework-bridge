import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitIlluminance
    - name: NSUnitIlluminance
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitIlluminance) protocol UnitIlluminanceExports: JSExport, DimensionExports {
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
    - jsName: lux
    - name: lux
    - argLabels: 
  */
  @objc static var lux: UnitIlluminance { @objc get }
}

extension UnitIlluminance: UnitIlluminanceExports {
}
