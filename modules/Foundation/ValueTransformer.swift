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
    - Selector: NSValueTransformer
    - Introduced: 10.3
  */

@objc(ValueTransformer) protocol ValueTransformerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: allowsReverseTransformation
  */
  @objc static func allowsReverseTransformation() -> Bool

  /**
    - Selector: setValueTransformer:forName:
  */
  @objc static func setValueTransformer(_: ValueTransformer?, forName: NSValueTransformerName)

  /**
    - Selector: transformedValueClass
  */
  @objc static func transformedValueClass() -> AnyClass

  /**
    - Selector: valueTransformerForName:
  */
  @objc static func createWithForName(_ forName: NSValueTransformerName) -> ValueTransformer?

  /**
    - Selector: valueTransformerNames
  */
  @objc static func valueTransformerNames() -> [NSValueTransformerName]

  // Instance Methods

  /**
    - Selector: reverseTransformedValue:
  */
  @objc func reverseTransformedValue(_: Any?) -> Any?

  /**
    - Selector: transformedValue:
  */
  @objc func transformedValue(_: Any?) -> Any?
}

extension ValueTransformer: ValueTransformerExports {

  /**
    - Selector: valueTransformerForName:
  */
  @objc public static func createWithForName(_ forName: NSValueTransformerName) -> ValueTransformer? {
    return self.init(forName: forName)
  }

}
