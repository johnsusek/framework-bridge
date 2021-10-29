import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitConverterLinear
    - name: NSUnitConverterLinear
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitConverterLinear) protocol UnitConverterLinearExports: JSExport, UnitConverterExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithCoefficient
    - name: initWithCoefficient:
    - argLabels: 
    - constructorTokens: coefficient
  */
  @objc static func createWithCoefficient(_: Double) -> Self

  /**
    - jsName: createWithCoefficient
    - name: initWithCoefficient:constant:
    - argLabels: constant
    - constructorTokens: coefficient, constant
  */
  @objc static func createWithCoefficient(_: Double, constant: Double) -> Self

  // Own Instance Properties

  /**
    - jsName: coefficient
    - name: coefficient
    - argLabels: 
  */
  @objc var coefficient: Double { @objc get }

  /**
    - jsName: constant
    - name: constant
    - argLabels: 
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
