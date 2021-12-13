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
    - Selector: NSDateIntervalFormatter
    - Introduced: 10.10
  */

@objc(DateIntervalFormatter) protocol DateIntervalFormatterExports: JSExport, FormatterExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: stringFromDate:toDate:
  */
  @objc (stringFromDate:toDate:) func string(from: Date, to: Date) -> String

  /**
    - Selector: stringFromDateInterval:
    - Introduced: 10.12
  */
  @objc (stringFromDateInterval:) @available(OSX 10.12, *) func string(from: DateInterval) -> String?

  // Own Instance Properties

  /**
    - Selector: calendar
  */
  @objc var calendar: Calendar! { @objc get @objc (setCalendar:) set }

  /**
    - Selector: dateStyle
  */
  @objc var dateStyle: DateIntervalFormatter.Style { @objc get @objc (setDateStyle:) set }

  /**
    - Selector: dateTemplate
  */
  @objc var dateTemplate: String! { @objc get @objc (setDateTemplate:) set }

  /**
    - Selector: locale
  */
  @objc var locale: Locale! { @objc get @objc (setLocale:) set }

  /**
    - Selector: timeStyle
  */
  @objc var timeStyle: DateIntervalFormatter.Style { @objc get @objc (setTimeStyle:) set }

  /**
    - Selector: timeZone
  */
  @objc var timeZone: TimeZone! { @objc get @objc (setTimeZone:) set }
}

extension DateIntervalFormatter: DateIntervalFormatterExports {
}
