import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptCoercionHandler
    - name: NSScriptCoercionHandler
    - argLabels: 
  */

@objc(NSScriptCoercionHandler) protocol NSScriptCoercionHandlerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: shared
    - name: sharedCoercionHandler
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shared()
  */
  @objc (sharedCoercionHandler) static func shared() -> NSScriptCoercionHandler

  // Instance Methods

  /**
    - jsName: coerceValue
    - name: coerceValue:toClass:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: coerceValue(_:to:)
  */
  @objc (coerceValue:toClass:) func coerceValue(_: Any, to: AnyClass) -> Any?

  /**
    - jsName: registerCoercer
    - name: registerCoercer:selector:toConvertFromClass:toClass:
    - argLabels: _, selector, toConvertFrom, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: registerCoercer(_:selector:toConvertFrom:to:)
  */
  @objc (registerCoercer:selector:toConvertFromClass:toClass:) func registerCoercer(_: Any, selector: Selector, toConvertFrom: AnyClass, to: AnyClass)
}

extension NSScriptCoercionHandler: NSScriptCoercionHandlerExports {
}
