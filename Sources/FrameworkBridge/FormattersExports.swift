import AppKit
import JavaScriptCore

@objc protocol FormattersExports: JSExport {
  @objc @available(OSX 10.6, *) static func localizedString(fromDate: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String
  @objc static func localizedString(byJoining: [String]) -> String
  @objc @available(OSX 10.6, *) static func localizedString(fromNumber: NSNumber, style: NumberFormatter.Style) -> String
  @objc static func localizedString(fromPersonNameComponents: PersonNameComponents, style: PersonNameComponentsFormatter.Style, options: PersonNameComponentsFormatter.Options) -> String
  @objc static func localizedString(fromDateComponents: DateComponents, unitsStyle: DateComponentsFormatter.UnitsStyle) -> String?
  @objc static func string(fromByteCount: Int64, countStyle: ByteCountFormatter.CountStyle) -> String
  @objc static func string(fromDate: Date, timeZone: TimeZone, formatOptions: ISO8601DateFormatter.Options) -> String
  @objc @available(OSX 10.6, *) static func dateFormat(fromTemplate: String, options: Int, locale: Locale?) -> String?
  @objc static func setDefaultFormatterBehavior(_ p0: NumberFormatter.Behavior)
}

@objc(Formatters) public class Formatters: NSObject, FormattersExports {
  @objc static func string(fromByteCount: Int64, countStyle: ByteCountFormatter.CountStyle) -> String {
    return ByteCountFormatter.string(fromByteCount: fromByteCount, countStyle: countStyle)
  }

  @objc static func localizedString(fromDateComponents: DateComponents, unitsStyle: DateComponentsFormatter.UnitsStyle) -> String? {
    return DateComponentsFormatter.localizedString(from: fromDateComponents, unitsStyle: unitsStyle)
  }

  @objc @available(OSX 10.6, *) static func dateFormat(fromTemplate: String, options: Int, locale: Locale?) -> String? {
    return DateFormatter.dateFormat(fromTemplate: fromTemplate, options: options, locale: locale)
  }

  @objc @available(OSX 10.6, *) static func localizedString(fromDate: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
    return DateFormatter.localizedString(from: fromDate, dateStyle: dateStyle, timeStyle: timeStyle)
  }

  @objc static func string(fromDate: Date, timeZone: TimeZone, formatOptions: ISO8601DateFormatter.Options) -> String {
    return ISO8601DateFormatter.string(from: fromDate, timeZone: timeZone, formatOptions: formatOptions)
  }

  @objc static func localizedString(byJoining: [String]) -> String {
    return ListFormatter.localizedString(byJoining: byJoining)
  }

  @objc @available(OSX 10.6, *) static func localizedString(fromNumber: NSNumber, style: NumberFormatter.Style) -> String {
    return NumberFormatter.localizedString(from: fromNumber, number: style)
  }

  @objc static func setDefaultFormatterBehavior(_ p0: NumberFormatter.Behavior) {
    NumberFormatter.setDefaultFormatterBehavior(p0)
  }

  @objc static func localizedString(fromPersonNameComponents: PersonNameComponents, style: PersonNameComponentsFormatter.Style, options: PersonNameComponentsFormatter.Options) -> String {
    PersonNameComponentsFormatter.localizedString(from: fromPersonNameComponents, style: style, options: options)
  }
}
