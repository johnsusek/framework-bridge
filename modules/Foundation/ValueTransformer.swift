import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: ValueTransformer
    - name: NSValueTransformer
    - argLabels: 
    - Introduced: 10.3
  */

@objc(ValueTransformer) protocol ValueTransformerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: allowsReverseTransformation
    - name: allowsReverseTransformation
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func allowsReverseTransformation() -> Bool

  /**
    - jsName: setValueTransformer
    - name: setValueTransformer:forName:
    - argLabels: forName
    - constructorTokens: 
  */
  @objc static func setValueTransformer(_: ValueTransformer?, forName: NSValueTransformerName)

  /**
    - jsName: transformedValueClass
    - name: transformedValueClass
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func transformedValueClass() -> AnyClass

  /**
    - jsName: create
    - name: valueTransformerForName:
    - argLabels: forName
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forName:)
    - message: Not available in Swift
  */
  @objc static func create(forName: NSValueTransformerName) -> ValueTransformer?

  /**
    - jsName: valueTransformerNames
    - name: valueTransformerNames
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func valueTransformerNames() -> [NSValueTransformerName]

  // Instance Methods

  /**
    - jsName: reverseTransformedValue
    - name: reverseTransformedValue:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reverseTransformedValue(_: Any?) -> Any?

  /**
    - jsName: transformedValue
    - name: transformedValue:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func transformedValue(_: Any?) -> Any?
}

extension ValueTransformer: ValueTransformerExports {
  @objc public static func create(forName: NSValueTransformerName) -> ValueTransformer? {
    return self.init(forName: forName)
  }

}
