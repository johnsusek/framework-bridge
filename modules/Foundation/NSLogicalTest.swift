import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSLogicalTest
  */

@objc(NSLogicalTest) protocol NSLogicalTestExports: JSExport, NSScriptWhoseTestExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initAndTestWithTests:
  */
  @objc static func createAndTestWithTests(_: [NSSpecifierTest]) -> Self

  /**
    - Selector: initNotTestWithTest:
  */
  @objc static func createNotTestWithTest(_: NSScriptWhoseTest) -> Self

  /**
    - Selector: initOrTestWithTests:
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
