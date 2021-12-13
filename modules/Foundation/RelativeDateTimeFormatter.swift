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
    - Selector: NSRelativeDateTimeFormatter
    - Introduced: 10.15
  */

@objc(RelativeDateTimeFormatter) protocol RelativeDateTimeFormatterExports: JSExport, FormatterExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: localizedStringForDate:relativeToDate:
  */
  @objc (localizedStringForDate:relativeToDate:) func localizedString(`for`: Date, relativeTo: Date) -> String

  /**
    - Selector: localizedStringFromDateComponents:
  */
  @objc (localizedStringFromDateComponents:) func localizedString(from: DateComponents) -> String

  /**
    - Selector: localizedStringFromTimeInterval:
  */
  @objc (localizedStringFromTimeInterval:) func localizedString(fromTimeInterval: TimeInterval) -> String

  // Own Instance Properties

  /**
    - Selector: calendar
  */
  @objc var calendar: Calendar! { @objc get @objc (setCalendar:) set }

  /**
    - Selector: dateTimeStyle
  */
  @objc var dateTimeStyle: RelativeDateTimeFormatter.DateTimeStyle { @objc get @objc (setDateTimeStyle:) set }

  /**
    - Selector: formattingContext
  */
  @objc var formattingContext: Formatter.Context { @objc get @objc (setFormattingContext:) set }

  /**
    - Selector: locale
  */
  @objc var locale: Locale! { @objc get @objc (setLocale:) set }

  /**
    - Selector: unitsStyle
  */
  @objc var unitsStyle: RelativeDateTimeFormatter.UnitsStyle { @objc get @objc (setUnitsStyle:) set }
}

extension RelativeDateTimeFormatter: RelativeDateTimeFormatterExports {
}
