import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnit
    - Introduced: 10.12
  */

@objc(Unit) protocol UnitExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithSymbol:
  */
  @objc static func createWithSymbol(_: String) -> Self

  // Own Instance Properties

  /**
    - Selector: symbol
  */
  @objc var symbol: String { @objc get }
}

extension Unit: UnitExports {
  @objc public static func createWithSymbol(_ symbol: String) -> Self {
    return self.init(symbol: symbol)
  }

}
