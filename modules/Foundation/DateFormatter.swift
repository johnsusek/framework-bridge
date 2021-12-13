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
    - Selector: NSDateFormatter
  */

@objc(DateFormatter) protocol DateFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: dateFormatFromTemplate:options:locale:
    - Introduced: 10.6
  */
  @objc (dateFormatFromTemplate:options:locale:) @available(OSX 10.6, *) static func dateFormat(fromTemplate: String, options: Int, locale: Locale?) -> String?

  /**
    - Selector: localizedStringFromDate:dateStyle:timeStyle:
    - Introduced: 10.6
  */
  @objc (localizedStringFromDate:dateStyle:timeStyle:) @available(OSX 10.6, *) static func localizedString(from: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String

  // Own Static Properties

  /**
    - Selector: defaultFormatterBehavior
  */
  @objc static var defaultFormatterBehavior: DateFormatter.Behavior { @objc get @objc (setDefaultFormatterBehavior:) set }

  // Instance Methods

  /**
    - Selector: dateFromString:
  */
  @objc (dateFromString:) func date(from: String) -> Date?

  /**
    - Selector: getObjectValue:forString:range:error:
  */
  // throws - @objc func getObjectValue(obj: UnsafeMutablePointer<AnyClass?>?, forString: String, range: UnsafeMutablePointer<NSRange>?) -> Bool

  /**
    - Selector: setLocalizedDateFormatFromTemplate:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func setLocalizedDateFormatFromTemplate(_ p0: String)

  /**
    - Selector: stringFromDate:
  */
  @objc (stringFromDate:) func string(from: Date) -> String

  // Own Instance Properties

  /**
    - Selector: AMSymbol
  */
  @objc var amSymbol: String! { @objc (AMSymbol) get @objc (setAMSymbol:) set }

  /**
    - Selector: PMSymbol
  */
  @objc var pmSymbol: String! { @objc (PMSymbol) get @objc (setPMSymbol:) set }

  /**
    - Selector: calendar
  */
  @objc var calendar: Calendar! { @objc get @objc (setCalendar:) set }

  /**
    - Selector: dateFormat
  */
  @objc var dateFormat: String! { @objc get @objc (setDateFormat:) set }

  /**
    - Selector: dateStyle
  */
  @objc var dateStyle: DateFormatter.Style { @objc get @objc (setDateStyle:) set }

  /**
    - Selector: defaultDate
  */
  @objc var defaultDate: Date? { @objc get @objc (setDefaultDate:) set }

  /**
    - Selector: doesRelativeDateFormatting
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var doesRelativeDateFormatting: Bool { @objc get @objc (setDoesRelativeDateFormatting:) set }

  /**
    - Selector: eraSymbols
  */
  @objc var eraSymbols: [String]! { @objc get @objc (setEraSymbols:) set }

  /**
    - Selector: formatterBehavior
  */
  @objc var formatterBehavior: DateFormatter.Behavior { @objc get @objc (setFormatterBehavior:) set }

  /**
    - Selector: formattingContext
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var formattingContext: Formatter.Context { @objc get @objc (setFormattingContext:) set }

  /**
    - Selector: generatesCalendarDates
  */
  @objc var generatesCalendarDates: Bool { @objc get @objc (setGeneratesCalendarDates:) set }

  /**
    - Selector: gregorianStartDate
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var gregorianStartDate: Date? { @objc get @objc (setGregorianStartDate:) set }

  /**
    - Selector: lenient
  */
  @objc var isLenient: Bool { @objc get @objc (setLenient:) set }

  /**
    - Selector: locale
  */
  @objc var locale: Locale! { @objc get @objc (setLocale:) set }

  /**
    - Selector: longEraSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var longEraSymbols: [String]! { @objc get @objc (setLongEraSymbols:) set }

  /**
    - Selector: monthSymbols
  */
  @objc var monthSymbols: [String]! { @objc get @objc (setMonthSymbols:) set }

  /**
    - Selector: quarterSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var quarterSymbols: [String]! { @objc get @objc (setQuarterSymbols:) set }

  /**
    - Selector: shortMonthSymbols
  */
  @objc var shortMonthSymbols: [String]! { @objc get @objc (setShortMonthSymbols:) set }

  /**
    - Selector: shortQuarterSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var shortQuarterSymbols: [String]! { @objc get @objc (setShortQuarterSymbols:) set }

  /**
    - Selector: shortStandaloneMonthSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var shortStandaloneMonthSymbols: [String]! { @objc get @objc (setShortStandaloneMonthSymbols:) set }

  /**
    - Selector: shortStandaloneQuarterSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var shortStandaloneQuarterSymbols: [String]! { @objc get @objc (setShortStandaloneQuarterSymbols:) set }

  /**
    - Selector: shortStandaloneWeekdaySymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var shortStandaloneWeekdaySymbols: [String]! { @objc get @objc (setShortStandaloneWeekdaySymbols:) set }

  /**
    - Selector: shortWeekdaySymbols
  */
  @objc var shortWeekdaySymbols: [String]! { @objc get @objc (setShortWeekdaySymbols:) set }

  /**
    - Selector: standaloneMonthSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var standaloneMonthSymbols: [String]! { @objc get @objc (setStandaloneMonthSymbols:) set }

  /**
    - Selector: standaloneQuarterSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var standaloneQuarterSymbols: [String]! { @objc get @objc (setStandaloneQuarterSymbols:) set }

  /**
    - Selector: standaloneWeekdaySymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var standaloneWeekdaySymbols: [String]! { @objc get @objc (setStandaloneWeekdaySymbols:) set }

  /**
    - Selector: timeStyle
  */
  @objc var timeStyle: DateFormatter.Style { @objc get @objc (setTimeStyle:) set }

  /**
    - Selector: timeZone
  */
  @objc var timeZone: TimeZone! { @objc get @objc (setTimeZone:) set }

  /**
    - Selector: twoDigitStartDate
  */
  @objc var twoDigitStartDate: Date? { @objc get @objc (setTwoDigitStartDate:) set }

  /**
    - Selector: veryShortMonthSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var veryShortMonthSymbols: [String]! { @objc get @objc (setVeryShortMonthSymbols:) set }

  /**
    - Selector: veryShortStandaloneMonthSymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var veryShortStandaloneMonthSymbols: [String]! { @objc get @objc (setVeryShortStandaloneMonthSymbols:) set }

  /**
    - Selector: veryShortStandaloneWeekdaySymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var veryShortStandaloneWeekdaySymbols: [String]! { @objc get @objc (setVeryShortStandaloneWeekdaySymbols:) set }

  /**
    - Selector: veryShortWeekdaySymbols
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var veryShortWeekdaySymbols: [String]! { @objc get @objc (setVeryShortWeekdaySymbols:) set }

  /**
    - Selector: weekdaySymbols
  */
  @objc var weekdaySymbols: [String]! { @objc get @objc (setWeekdaySymbols:) set }
}

extension DateFormatter: DateFormatterExports {
}
