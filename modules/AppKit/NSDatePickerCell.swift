import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSDatePickerCell
  */

@objc(NSDatePickerCell) protocol NSDatePickerCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: calendar
  */
  @objc var calendar: Calendar? { @objc get @objc (setCalendar:) set }

  /**
    - Selector: datePickerElements
  */
  @objc var datePickerElements: NSDatePicker.ElementFlags { @objc get @objc (setDatePickerElements:) set }

  /**
    - Selector: datePickerMode
  */
  @objc var datePickerMode: NSDatePicker.Mode { @objc get @objc (setDatePickerMode:) set }

  /**
    - Selector: datePickerStyle
  */
  @objc var datePickerStyle: NSDatePicker.Style { @objc get @objc (setDatePickerStyle:) set }

  /**
    - Selector: dateValue
  */
  @objc var dateValue: Date { @objc get @objc (setDateValue:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSDatePickerCellDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - Selector: locale
  */
  @objc var locale: Locale? { @objc get @objc (setLocale:) set }

  /**
    - Selector: maxDate
  */
  @objc var maxDate: Date? { @objc get @objc (setMaxDate:) set }

  /**
    - Selector: minDate
  */
  @objc var minDate: Date? { @objc get @objc (setMinDate:) set }

  /**
    - Selector: textColor
  */
  @objc var textColor: NSColor { @objc get @objc (setTextColor:) set }

  /**
    - Selector: timeInterval
  */
  @objc var timeInterval: TimeInterval { @objc get @objc (setTimeInterval:) set }

  /**
    - Selector: timeZone
  */
  @objc var timeZone: TimeZone? { @objc get @objc (setTimeZone:) set }
}

extension NSDatePickerCell: NSDatePickerCellExports {
}
