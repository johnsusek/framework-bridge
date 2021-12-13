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
    - Selector: NSDate
  */

@objc(Date) protocol DateExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: dateWithTimeInterval:sinceDate:
  */
  @objc static func createWithTimeInterval_Since(_ timeInterval: TimeInterval, _ since: Date) -> Self

  /**
    - Selector: dateWithTimeIntervalSince1970:
  */
  @objc static func createWithTimeIntervalSince1970(_ timeIntervalSince1970: TimeInterval) -> Self

  /**
    - Selector: dateWithTimeIntervalSinceNow:
  */
  @objc static func createWithTimeIntervalSinceNow(_ timeIntervalSinceNow: TimeInterval) -> Self

  /**
    - Selector: dateWithTimeIntervalSinceReferenceDate:
  */
  @objc static func createWithTimeIntervalSinceReferenceDate(_ timeIntervalSinceReferenceDate: TimeInterval) -> Self

  // Own Static Properties

  /**
    - Selector: distantFuture
  */
  @objc static var distantFuture: Date { @objc get }

  /**
    - Selector: distantPast
  */
  @objc static var distantPast: Date { @objc get }

  /**
    - Selector: now
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var now: Date { @objc get }

  /**
    - Selector: timeIntervalSinceReferenceDate
  */
  @objc static var timeIntervalSinceReferenceDate: TimeInterval { @objc get }

  // Instance Methods

  /**
    - Selector: compare:
  */
  @objc func compare(_ p0: Date) -> ComparisonResult

  /**
    - Selector: descriptionWithLocale:
  */
  @objc (descriptionWithLocale:) func description(with: Any?) -> String

  /**
    - Selector: earlierDate:
  */
  @objc func earlierDate(_ p0: Date) -> Date

  /**
    - Selector: isEqualToDate:
  */
  @objc (isEqualToDate:) func isEqual(to: Date) -> Bool

  /**
    - Selector: laterDate:
  */
  @objc func laterDate(_ p0: Date) -> Date

  /**
    - Selector: timeIntervalSinceDate:
  */
  @objc (timeIntervalSinceDate:) func timeIntervalSince(_ p0: Date) -> TimeInterval

  // Own Instance Properties

  /**
    - Selector: timeIntervalSince1970
  */
  @objc var timeIntervalSince1970: TimeInterval { @objc get }

  /**
    - Selector: timeIntervalSinceNow
  */
  @objc var timeIntervalSinceNow: TimeInterval { @objc get }

  /**
    - Selector: timeIntervalSinceReferenceDate
  */
  @objc var timeIntervalSinceReferenceDate: TimeInterval { @objc get }
}

extension NSDate: DateExports {

  /**
    - Selector: dateWithTimeInterval:sinceDate:
  */
  @objc public static func createWithTimeInterval_Since(_ timeInterval: TimeInterval, _ since: Date) -> Self {
    return self.init(timeInterval: timeInterval, since: since)
  }


  /**
    - Selector: dateWithTimeIntervalSince1970:
  */
  @objc public static func createWithTimeIntervalSince1970(_ timeIntervalSince1970: TimeInterval) -> Self {
    return self.init(timeIntervalSince1970: timeIntervalSince1970)
  }


  /**
    - Selector: dateWithTimeIntervalSinceNow:
  */
  @objc public static func createWithTimeIntervalSinceNow(_ timeIntervalSinceNow: TimeInterval) -> Self {
    return self.init(timeIntervalSinceNow: timeIntervalSinceNow)
  }


  /**
    - Selector: dateWithTimeIntervalSinceReferenceDate:
  */
  @objc public static func createWithTimeIntervalSinceReferenceDate(_ timeIntervalSinceReferenceDate: TimeInterval) -> Self {
    return self.init(timeIntervalSinceReferenceDate: timeIntervalSinceReferenceDate)
  }

}
