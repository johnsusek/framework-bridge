import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Dimension
    - name: NSDimension
    - argLabels: 
    - Introduced: 10.12
  */

@objc(Dimension) protocol DimensionExports: JSExport, UnitExports {
  // Static Methods

  /**
    - jsName: baseUnit
    - name: baseUnit
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func baseUnit() -> Self

  // Instance Methods

  /**
    - jsName: createWithSymbol
    - name: initWithSymbol:converter:
    - argLabels: converter
    - constructorTokens: symbol, converter
  */
  @objc static func createWithSymbol(_: String, converter: UnitConverter) -> Self

  // Own Instance Properties

  /**
    - jsName: converter
    - name: converter
    - argLabels: 
  */
  @objc var converter: UnitConverter { @objc get }
}

extension Dimension: DimensionExports {
  @objc public static func createWithSymbol(_ symbol: String, converter: UnitConverter) -> Self {
    return self.init(symbol: symbol, converter: converter)
  }

}
