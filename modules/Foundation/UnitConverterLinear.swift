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
    - Selector: NSUnitConverterLinear
    - Introduced: 10.12
  */

@objc(UnitConverterLinear) protocol UnitConverterLinearExports: JSExport, UnitConverterExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: coefficient
  */
  @objc var coefficient: Double { @objc get }

  /**
    - Selector: constant
  */
  @objc var constant: Double { @objc get }
}

extension UnitConverterLinear: UnitConverterLinearExports {
}
