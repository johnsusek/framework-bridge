import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSUserInterfaceCompressionOptions
    - Introduced: 10.13
  */

@objc(NSUserInterfaceCompressionOptions) protocol NSUserInterfaceCompressionOptionsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: breakEqualWidthsOption
  */
  @objc static var breakEqualWidths: NSUserInterfaceCompressionOptions { @objc (breakEqualWidthsOption) get }

  /**
    - Selector: hideImagesOption
  */
  @objc static var hideImages: NSUserInterfaceCompressionOptions { @objc (hideImagesOption) get }

  /**
    - Selector: hideTextOption
  */
  @objc static var hideText: NSUserInterfaceCompressionOptions { @objc (hideTextOption) get }

  /**
    - Selector: reduceMetricsOption
  */
  @objc static var reduceMetrics: NSUserInterfaceCompressionOptions { @objc (reduceMetricsOption) get }

  /**
    - Selector: standardOptions
  */
  @objc static var standardOptions: NSUserInterfaceCompressionOptions { @objc get }

  // Instance Methods

  /**
    - Selector: containsOptions:
  */
  @objc (containsOptions:) func contains(_ p0: NSUserInterfaceCompressionOptions) -> Bool

  /**
    - Selector: intersectsOptions:
  */
  @objc (intersectsOptions:) func intersects(_ p0: NSUserInterfaceCompressionOptions) -> Bool

  /**
    - Selector: optionsByAddingOptions:
  */
  @objc (optionsByAddingOptions:) func union(_ p0: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions

  /**
    - Selector: optionsByRemovingOptions:
  */
  @objc (optionsByRemovingOptions:) func subtracting(_ p0: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions

  // Own Instance Properties

  /**
    - Selector: empty
  */
  @objc var isEmpty: Bool { @objc get }
}

extension NSUserInterfaceCompressionOptions: NSUserInterfaceCompressionOptionsExports {
}
