import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSPointerFunctions
    - name: NSPointerFunctions
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSPointerFunctions) protocol NSPointerFunctionsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: acquireFunction
    - name: acquireFunction
    - argLabels: 
  */
// jsvalue   @objc var acquireFunction: JSValue? { @objc get @objc (setAcquireFunction:) set }

  /**
    - jsName: descriptionFunction
    - name: descriptionFunction
    - argLabels: 
  */
// jsvalue   @objc var descriptionFunction: JSValue? { @objc get @objc (setDescriptionFunction:) set }

  /**
    - jsName: hashFunction
    - name: hashFunction
    - argLabels: 
  */
// jsvalue   @objc var hashFunction: JSValue? { @objc get @objc (setHashFunction:) set }

  /**
    - jsName: isEqualFunction
    - name: isEqualFunction
    - argLabels: 
  */
// jsvalue   @objc var isEqualFunction: JSValue? { @objc get @objc (setIsEqualFunction:) set }

  /**
    - jsName: relinquishFunction
    - name: relinquishFunction
    - argLabels: 
  */
// jsvalue   @objc var relinquishFunction: JSValue? { @objc get @objc (setRelinquishFunction:) set }

  /**
    - jsName: sizeFunction
    - name: sizeFunction
    - argLabels: 
  */
// jsvalue   @objc var sizeFunction: JSValue? { @objc get @objc (setSizeFunction:) set }
}

extension NSPointerFunctions: NSPointerFunctionsExports {
}
