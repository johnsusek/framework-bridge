import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSDataDetector
    - name: NSDataDetector
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSDataDetector) protocol NSDataDetectorExports: JSExport, NSRegularExpressionExports {
  // Static Methods

  /**
    - jsName: dataDetectorWithTypes
    - name: dataDetectorWithTypes:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc static func dataDetectorWithTypes(error: UInt64) -> NSDataDetector?

  // Instance Methods

  /**
    - jsName: createWithTypes
    - name: initWithTypes:error:
    - argLabels: error
    - constructorTokens: types
  */
  @objc static func createWithTypes(types: UInt64) -> Self?

  // Own Instance Properties

  /**
    - jsName: checkingTypes
    - name: checkingTypes
    - argLabels: 
  */
  @objc var checkingTypes: UInt64 { @objc get }
}

extension NSDataDetector: NSDataDetectorExports {
  @objc public static func createWithTypes(types: UInt64) -> Self? {
    return try? self.init(types: types)
  }

}
