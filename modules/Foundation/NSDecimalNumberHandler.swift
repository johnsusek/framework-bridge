import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSDecimalNumberHandler
    - name: NSDecimalNumberHandler
    - argLabels: 
  */

@objc(NSDecimalNumberHandler) protocol NSDecimalNumberHandlerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: decimalNumberHandlerWithRoundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:
    - argLabels: roundingMode, scale, raiseOnExactness, raiseOnOverflow, raiseOnUnderflow, raiseOnDivideByZero
    - constructorTokens: 
    - unavailable: true
    - renamed: init(roundingMode:scale:raiseOnExactness:raiseOnOverflow:raiseOnUnderflow:raiseOnDivideByZero:)
    - message: Not available in Swift
  */
  @objc static func create(roundingMode: NSDecimalNumber.RoundingMode, scale: Int16, raiseOnExactness: Bool, raiseOnOverflow: Bool, raiseOnUnderflow: Bool, raiseOnDivideByZero: Bool) -> Self

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultDecimalNumberHandler
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: NSDecimalNumberHandler { @objc (defaultDecimalNumberHandler) get }
}

extension NSDecimalNumberHandler: NSDecimalNumberHandlerExports {
  @objc public static func create(roundingMode: NSDecimalNumber.RoundingMode, scale: Int16, raiseOnExactness: Bool, raiseOnOverflow: Bool, raiseOnUnderflow: Bool, raiseOnDivideByZero: Bool) -> Self {
    return self.init(roundingMode: roundingMode, scale: scale, raiseOnExactness: raiseOnExactness, raiseOnOverflow: raiseOnOverflow, raiseOnUnderflow: raiseOnUnderflow, raiseOnDivideByZero: raiseOnDivideByZero)
  }

}
