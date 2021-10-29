import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSSpecifierTest
    - name: NSSpecifierTest
    - argLabels: 
  */

@objc(NSSpecifierTest) protocol NSSpecifierTestExports: JSExport, NSScriptWhoseTestExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithObjectSpecifier
    - name: initWithObjectSpecifier:comparisonOperator:testObject:
    - argLabels: comparisonOperator, testObject
    - constructorTokens: objectSpecifier, comparisonOperator, testObject
  */
  @objc static func createWithObjectSpecifier(_: NSScriptObjectSpecifier?, comparisonOperator: NSSpecifierTest.TestComparisonOperation, test: Any?) -> Self
}

extension NSSpecifierTest: NSSpecifierTestExports {
  @objc public static func createWithObjectSpecifier(_ objectSpecifier: NSScriptObjectSpecifier?, comparisonOperator: NSSpecifierTest.TestComparisonOperation, test: Any?) -> Self {
    return self.init(objectSpecifier: objectSpecifier, comparisonOperator: comparisonOperator, test: test)
  }

}
