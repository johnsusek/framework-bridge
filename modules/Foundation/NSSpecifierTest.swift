import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSSpecifierTest
  */

@objc(NSSpecifierTest) protocol NSSpecifierTestExports: JSExport, NSScriptWhoseTestExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithObjectSpecifier:comparisonOperator:testObject:
  */
  @objc static func createWithObjectSpecifier(_: NSScriptObjectSpecifier?, comparisonOperator: NSSpecifierTest.TestComparisonOperation, test: Any?) -> Self
}

extension NSSpecifierTest: NSSpecifierTestExports {
  @objc public static func createWithObjectSpecifier(_ objectSpecifier: NSScriptObjectSpecifier?, comparisonOperator: NSSpecifierTest.TestComparisonOperation, test: Any?) -> Self {
    return self.init(objectSpecifier: objectSpecifier, comparisonOperator: comparisonOperator, test: test)
  }

}
