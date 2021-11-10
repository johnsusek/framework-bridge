import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
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

  // Own Instance Properties

  /**
    - Selector: symbol
  */
  @objc var symbol: String { @objc get }
}

extension Unit: UnitExports {
}
