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
    - Selector: NSDataDetector
    - Introduced: 10.7
  */

@objc(NSDataDetector) protocol NSDataDetectorExports: JSExport, NSRegularExpressionExports {
  // Static Methods

  /**
    - Selector: dataDetectorWithTypes:error:
  */
  // throws - @objc static func dataDetectorWithTypes(error: UInt64) -> NSDataDetector?

  /**
    - Selector: escapedPatternForString:
  */
  @objc (escapedPatternForString:) static func escapedPattern(`for`: String) -> String

  /**
    - Selector: escapedTemplateForString:
  */
  @objc (escapedTemplateForString:) static func escapedTemplate(`for`: String) -> String

  /**
    - Selector: regularExpressionWithPattern:options:error:
  */
  // throws - @objc static func regularExpressionWithPattern(options: String, error: NSRegularExpression.Options) -> NSRegularExpression?

  // Own Instance Properties

  /**
    - Selector: checkingTypes
  */
  @objc var checkingTypes: UInt64 { @objc get }
}

extension NSDataDetector: NSDataDetectorExports {
}
