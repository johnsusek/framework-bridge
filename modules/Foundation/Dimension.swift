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
    - Selector: NSDimension
    - Introduced: 10.12
  */

@objc(Dimension) protocol DimensionExports: JSExport, UnitExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: converter
  */
  @objc var converter: UnitConverter { @objc get }
}

extension Dimension: DimensionExports {
}
