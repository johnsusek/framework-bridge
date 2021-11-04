import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitConverterLinear
    - Introduced: 10.12
  */

@objc(UnitConverterLinear) protocol UnitConverterLinearExports: JSExport, UnitConverterExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithCoefficient:
  */
  @objc static func createWithCoefficient(_: Double) -> Self

  /**
    - Selector: initWithCoefficient:constant:
  */
  @objc static func createWithCoefficient(_: Double, constant: Double) -> Self

  // Own Instance Properties

  /**
    - Selector: coefficient
  */
  @objc var coefficient: Double { @objc get }

  /**
    - Selector: constant
  */
  @objc var constant: Double { @objc get }
}

extension UnitConverterLinear: UnitConverterLinearExports {
  @objc public static func createWithCoefficient(_ coefficient: Double) -> Self {
    return self.init(coefficient: coefficient)
  }

  @objc public static func createWithCoefficient(_ coefficient: Double, constant: Double) -> Self {
    return self.init(coefficient: coefficient, constant: constant)
  }

}
