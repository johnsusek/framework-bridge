import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Unit
    - name: NSUnit
    - argLabels: 
    - Introduced: 10.12
  */

@objc(Unit) protocol UnitExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithSymbol
    - name: initWithSymbol:
    - argLabels: 
    - constructorTokens: symbol
  */
  @objc static func createWithSymbol(_: String) -> Self

  // Own Instance Properties

  /**
    - jsName: symbol
    - name: symbol
    - argLabels: 
  */
  @objc var symbol: String { @objc get }
}

extension Unit: UnitExports {
  @objc public static func createWithSymbol(_ symbol: String) -> Self {
    return self.init(symbol: symbol)
  }

}
