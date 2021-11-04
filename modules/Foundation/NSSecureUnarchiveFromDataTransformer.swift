import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSSecureUnarchiveFromDataTransformer
    - Introduced: 10.14
  */

@objc(NSSecureUnarchiveFromDataTransformer) protocol NSSecureUnarchiveFromDataTransformerExports: JSExport, ValueTransformerExports {
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
    - Selector: valueTransformerNames
  */
  @objc static func valueTransformerNames() -> [NSValueTransformerName]

  // Own Static Properties

  /**
    - Selector: allowedTopLevelClasses
  */
  @objc static var allowedTopLevelClasses: [AnyClass] { @objc get }
}

extension NSSecureUnarchiveFromDataTransformer: NSSecureUnarchiveFromDataTransformerExports {
}
