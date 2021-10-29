import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSLogicalTest
    - name: NSLogicalTest
    - argLabels: 
  */

@objc(NSLogicalTest) protocol NSLogicalTestExports: JSExport, NSScriptWhoseTestExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createAndTestWithTests
    - name: initAndTestWithTests:
    - argLabels: 
    - constructorTokens: andTestWith
  */
  @objc static func createAndTestWithTests(_: [NSSpecifierTest]) -> Self

  /**
    - jsName: createNotTestWithTest
    - name: initNotTestWithTest:
    - argLabels: 
    - constructorTokens: notTestWith
  */
  @objc static func createNotTestWithTest(_: NSScriptWhoseTest) -> Self

  /**
    - jsName: createOrTestWithTests
    - name: initOrTestWithTests:
    - argLabels: 
    - constructorTokens: orTestWith
  */
  @objc static func createOrTestWithTests(_: [NSSpecifierTest]) -> Self
}

extension NSLogicalTest: NSLogicalTestExports {
  @objc public static func createAndTestWithTests(_ andTestWith: [NSSpecifierTest]) -> Self {
    return self.init(andTestWith: andTestWith)
  }

  @objc public static func createNotTestWithTest(_ notTestWith: NSScriptWhoseTest) -> Self {
    return self.init(notTestWith: notTestWith)
  }

  @objc public static func createOrTestWithTests(_ orTestWith: [NSSpecifierTest]) -> Self {
    return self.init(orTestWith: orTestWith)
  }

}
