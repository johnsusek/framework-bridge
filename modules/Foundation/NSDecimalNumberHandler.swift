import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
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
  @objc static func createWithRoundingMode_Scale_RaiseOnExactness_RaiseOnOverflow_RaiseOnUnderflow_RaiseOnDivideByZero(_ roundingMode: NSDecimalNumber.RoundingMode, _ scale: Int16, _ raiseOnExactness: Bool, _ raiseOnOverflow: Bool, _ raiseOnUnderflow: Bool, _ raiseOnDivideByZero: Bool) -> Self

  // Own Static Properties

  /**
    - Selector: defaultDecimalNumberHandler
  */
  @objc static var `default`: NSDecimalNumberHandler { @objc (defaultDecimalNumberHandler) get }
}

extension NSDecimalNumberHandler: NSDecimalNumberHandlerExports {

  /**
    - Selector: decimalNumberHandlerWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:
  */
  @objc public static func createWithRoundingMode_Scale_RaiseOnExactness_RaiseOnOverflow_RaiseOnUnderflow_RaiseOnDivideByZero(_ roundingMode: NSDecimalNumber.RoundingMode, _ scale: Int16, _ raiseOnExactness: Bool, _ raiseOnOverflow: Bool, _ raiseOnUnderflow: Bool, _ raiseOnDivideByZero: Bool) -> Self {
    return self.init(roundingMode: roundingMode, scale: scale, raiseOnExactness: raiseOnExactness, raiseOnOverflow: raiseOnOverflow, raiseOnUnderflow: raiseOnUnderflow, raiseOnDivideByZero: raiseOnDivideByZero)
  }

}
