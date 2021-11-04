import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  @objc (containsOptions:) func contains(_: NSUserInterfaceCompressionOptions) -> Bool

  /**
    - Selector: initWithCompressionOptions:
  */
  @objc static func create(options: Set<NSUserInterfaceCompressionOptions>) -> Self

  /**
    - Selector: intersectsOptions:
  */
  @objc (intersectsOptions:) func intersects(_: NSUserInterfaceCompressionOptions) -> Bool

  /**
    - Selector: optionsByAddingOptions:
  */
  @objc (optionsByAddingOptions:) func union(_: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions

  /**
    - Selector: optionsByRemovingOptions:
  */
  @objc (optionsByRemovingOptions:) func subtracting(_: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions

  // Own Instance Properties

  /**
    - Selector: empty
  */
  @objc var isEmpty: Bool { @objc get }
}

extension NSUserInterfaceCompressionOptions: NSUserInterfaceCompressionOptionsExports {
  @objc public static func create(options: Set<NSUserInterfaceCompressionOptions>) -> Self {
    return self.init(options: options)
  }

}
