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
    - Selector: NSScriptCoercionHandler
  */

@objc(NSScriptCoercionHandler) protocol NSScriptCoercionHandlerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sharedCoercionHandler
  */
  @objc (sharedCoercionHandler) static func shared() -> NSScriptCoercionHandler

  // Instance Methods

  /**
    - Selector: coerceValue:toClass:
  */
  @objc (coerceValue:toClass:) func coerceValue(_: Any, to: AnyClass) -> Any?

  /**
    - Selector: registerCoercer:selector:toConvertFromClass:toClass:
  */
  @objc (registerCoercer:selector:toConvertFromClass:toClass:) func registerCoercer(_: Any, selector: Selector, toConvertFrom: AnyClass, to: AnyClass)
}

extension NSScriptCoercionHandler: NSScriptCoercionHandlerExports {
}
