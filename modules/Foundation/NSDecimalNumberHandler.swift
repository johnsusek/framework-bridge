import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSDecimalNumberHandler
  */

@objc(NSDecimalNumberHandler) protocol NSDecimalNumberHandlerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: decimalNumberHandlerWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:
  */
  @objc static func create(roundingMode: NSDecimalNumber.RoundingMode, scale: Int16, raiseOnExactness: Bool, raiseOnOverflow: Bool, raiseOnUnderflow: Bool, raiseOnDivideByZero: Bool) -> Self

  // Own Static Properties

  /**
    - Selector: defaultDecimalNumberHandler
  */
  @objc static var `default`: NSDecimalNumberHandler { @objc (defaultDecimalNumberHandler) get }
}

extension NSDecimalNumberHandler: NSDecimalNumberHandlerExports {
  @objc public static func create(roundingMode: NSDecimalNumber.RoundingMode, scale: Int16, raiseOnExactness: Bool, raiseOnOverflow: Bool, raiseOnUnderflow: Bool, raiseOnDivideByZero: Bool) -> Self {
    return self.init(roundingMode: roundingMode, scale: scale, raiseOnExactness: raiseOnExactness, raiseOnOverflow: raiseOnOverflow, raiseOnUnderflow: raiseOnUnderflow, raiseOnDivideByZero: raiseOnDivideByZero)
  }

}
