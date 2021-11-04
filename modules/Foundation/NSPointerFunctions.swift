import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSPointerFunctions
    - Introduced: 10.5
  */

@objc(NSPointerFunctions) protocol NSPointerFunctionsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: acquireFunction
  */
// jsvalue   @objc var acquireFunction: JSValue? { @objc get @objc (setAcquireFunction:) set }

  /**
    - Selector: descriptionFunction
  */
// jsvalue   @objc var descriptionFunction: JSValue? { @objc get @objc (setDescriptionFunction:) set }

  /**
    - Selector: hashFunction
  */
// jsvalue   @objc var hashFunction: JSValue? { @objc get @objc (setHashFunction:) set }

  /**
    - Selector: isEqualFunction
  */
// jsvalue   @objc var isEqualFunction: JSValue? { @objc get @objc (setIsEqualFunction:) set }

  /**
    - Selector: relinquishFunction
  */
// jsvalue   @objc var relinquishFunction: JSValue? { @objc get @objc (setRelinquishFunction:) set }

  /**
    - Selector: sizeFunction
  */
// jsvalue   @objc var sizeFunction: JSValue? { @objc get @objc (setSizeFunction:) set }
}

extension NSPointerFunctions: NSPointerFunctionsExports {
}
