import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSSecureUnarchiveFromDataTransformer
    - name: NSSecureUnarchiveFromDataTransformer
    - argLabels: 
    - Introduced: 10.14
  */

@objc(NSSecureUnarchiveFromDataTransformer) protocol NSSecureUnarchiveFromDataTransformerExports: JSExport, ValueTransformerExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: allowedTopLevelClasses
    - name: allowedTopLevelClasses
    - argLabels: 
  */
  @objc static var allowedTopLevelClasses: [AnyClass] { @objc get }
}

extension NSSecureUnarchiveFromDataTransformer: NSSecureUnarchiveFromDataTransformerExports {
}
