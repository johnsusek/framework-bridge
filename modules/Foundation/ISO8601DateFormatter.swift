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
    - Selector: NSISO8601DateFormatter
    - Introduced: 10.12
  */

@objc(ISO8601DateFormatter) protocol ISO8601DateFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: stringFromDate:timeZone:formatOptions:
  */
  @objc (stringFromDate:timeZone:formatOptions:) static func string(from: Date, timeZone: TimeZone, formatOptions: ISO8601DateFormatter.Options) -> String

  // Instance Methods

  /**
    - Selector: dateFromString:
  */
  @objc (dateFromString:) func date(from: String) -> Date?

  /**
    - Selector: stringFromDate:
  */
  @objc (stringFromDate:) func string(from: Date) -> String

  // Own Instance Properties

  /**
    - Selector: formatOptions
  */
  @objc var formatOptions: ISO8601DateFormatter.Options { @objc get @objc (setFormatOptions:) set }

  /**
    - Selector: timeZone
  */
  @objc var timeZone: TimeZone! { @objc get @objc (setTimeZone:) set }
}

extension ISO8601DateFormatter: ISO8601DateFormatterExports {
}
