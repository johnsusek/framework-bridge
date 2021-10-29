import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDatePicker
    - name: NSDatePicker
    - argLabels: 
  */

@objc(NSDatePicker) protocol NSDatePickerExports: JSExport, NSControlExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: isBezeled
    - name: bezeled
    - argLabels: 
    - obsoleted: 3
    - renamed: isBezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - jsName: isBordered
    - name: bordered
    - argLabels: 
    - obsoleted: 3
    - renamed: isBordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - jsName: calendar
    - name: calendar
    - argLabels: 
  */
  @objc var calendar: Calendar? { @objc get @objc (setCalendar:) set }

  /**
    - jsName: datePickerElements
    - name: datePickerElements
    - argLabels: 
  */
  @objc var datePickerElements: NSDatePicker.ElementFlags { @objc get @objc (setDatePickerElements:) set }

  /**
    - jsName: datePickerMode
    - name: datePickerMode
    - argLabels: 
  */
  @objc var datePickerMode: NSDatePicker.Mode { @objc get @objc (setDatePickerMode:) set }

  /**
    - jsName: datePickerStyle
    - name: datePickerStyle
    - argLabels: 
  */
  @objc var datePickerStyle: NSDatePicker.Style { @objc get @objc (setDatePickerStyle:) set }

  /**
    - jsName: dateValue
    - name: dateValue
    - argLabels: 
  */
  @objc var dateValue: Date { @objc get @objc (setDateValue:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSDatePickerCellDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - jsName: locale
    - name: locale
    - argLabels: 
  */
  @objc var locale: Locale? { @objc get @objc (setLocale:) set }

  /**
    - jsName: maxDate
    - name: maxDate
    - argLabels: 
  */
  @objc var maxDate: Date? { @objc get @objc (setMaxDate:) set }

  /**
    - jsName: minDate
    - name: minDate
    - argLabels: 
  */
  @objc var minDate: Date? { @objc get @objc (setMinDate:) set }

  /**
    - jsName: presentsCalendarOverlay
    - name: presentsCalendarOverlay
    - argLabels: 
    - available: 10.15.4
    - Introduced: 10.15.4
  */
  @objc @available(OSX 10.15.4, *) var presentsCalendarOverlay: Bool { @objc get @objc (setPresentsCalendarOverlay:) set }

  /**
    - jsName: textColor
    - name: textColor
    - argLabels: 
  */
  @objc var textColor: NSColor { @objc get @objc (setTextColor:) set }

  /**
    - jsName: timeInterval
    - name: timeInterval
    - argLabels: 
  */
  @objc var timeInterval: TimeInterval { @objc get @objc (setTimeInterval:) set }

  /**
    - jsName: timeZone
    - name: timeZone
    - argLabels: 
  */
  @objc var timeZone: TimeZone? { @objc get @objc (setTimeZone:) set }
}

@objc protocol DatePickerExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(DatePicker) public class DatePicker: NSDatePicker, DatePickerExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSDatePicker: NSDatePickerExports {
}
