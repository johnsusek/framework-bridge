import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSUserInterfaceCompressionOptions
    - name: NSUserInterfaceCompressionOptions
    - argLabels: 
    - Introduced: 10.13
  */

@objc(NSUserInterfaceCompressionOptions) protocol NSUserInterfaceCompressionOptionsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: breakEqualWidths
    - name: breakEqualWidthsOption
    - argLabels: 
    - obsoleted: 3
    - renamed: breakEqualWidths
  */
  @objc static var breakEqualWidths: NSUserInterfaceCompressionOptions { @objc (breakEqualWidthsOption) get }

  /**
    - jsName: hideImages
    - name: hideImagesOption
    - argLabels: 
    - obsoleted: 3
    - renamed: hideImages
  */
  @objc static var hideImages: NSUserInterfaceCompressionOptions { @objc (hideImagesOption) get }

  /**
    - jsName: hideText
    - name: hideTextOption
    - argLabels: 
    - obsoleted: 3
    - renamed: hideText
  */
  @objc static var hideText: NSUserInterfaceCompressionOptions { @objc (hideTextOption) get }

  /**
    - jsName: reduceMetrics
    - name: reduceMetricsOption
    - argLabels: 
    - obsoleted: 3
    - renamed: reduceMetrics
  */
  @objc static var reduceMetrics: NSUserInterfaceCompressionOptions { @objc (reduceMetricsOption) get }

  /**
    - jsName: standardOptions
    - name: standardOptions
    - argLabels: 
  */
  @objc static var standardOptions: NSUserInterfaceCompressionOptions { @objc get }

  // Instance Methods

  /**
    - jsName: contains
    - name: containsOptions:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: contains(_:)
  */
  @objc (containsOptions:) func contains(_: NSUserInterfaceCompressionOptions) -> Bool

  /**
    - jsName: create
    - name: initWithCompressionOptions:
    - argLabels: options
    - constructorTokens: compressionOptions
  */
  @objc static func create(options: Set<NSUserInterfaceCompressionOptions>) -> Self

  /**
    - jsName: intersects
    - name: intersectsOptions:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: intersects(_:)
  */
  @objc (intersectsOptions:) func intersects(_: NSUserInterfaceCompressionOptions) -> Bool

  /**
    - jsName: union
    - name: optionsByAddingOptions:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: union(_:)
  */
  @objc (optionsByAddingOptions:) func union(_: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions

  /**
    - jsName: subtracting
    - name: optionsByRemovingOptions:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: subtracting(_:)
  */
  @objc (optionsByRemovingOptions:) func subtracting(_: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions

  // Own Instance Properties

  /**
    - jsName: isEmpty
    - name: empty
    - argLabels: 
    - obsoleted: 3
    - renamed: isEmpty
  */
  @objc var isEmpty: Bool { @objc get }
}

extension NSUserInterfaceCompressionOptions: NSUserInterfaceCompressionOptionsExports {
  @objc public static func create(options: Set<NSUserInterfaceCompressionOptions>) -> Self {
    return self.init(options: options)
  }

}
