import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSDimension
    - Introduced: 10.12
  */

@objc(Dimension) protocol DimensionExports: JSExport, UnitExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Instance Methods

  /**
    - Selector: initWithSymbol:converter:
  */
  @objc static func createWithSymbol(_: String, converter: UnitConverter) -> Self

  // Own Instance Properties

  /**
    - Selector: converter
  */
  @objc var converter: UnitConverter { @objc get }
}

extension Dimension: DimensionExports {
  @objc public static func createWithSymbol(_ symbol: String, converter: UnitConverter) -> Self {
    return self.init(symbol: symbol, converter: converter)
  }

}
