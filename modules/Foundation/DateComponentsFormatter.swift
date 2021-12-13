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
    - Selector: NSDateComponentsFormatter
    - Introduced: 10.10
  */

@objc(DateComponentsFormatter) protocol DateComponentsFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: localizedStringFromDateComponents:unitsStyle:
  */
  @objc (localizedStringFromDateComponents:unitsStyle:) static func localizedString(from: DateComponents, unitsStyle: DateComponentsFormatter.UnitsStyle) -> String?

  // Instance Methods

  /**
    - Selector: stringFromDate:toDate:
  */
  @objc (stringFromDate:toDate:) func string(from: Date, to: Date) -> String?

  /**
    - Selector: stringFromDateComponents:
  */
  @objc (stringFromDateComponents:) func string(from: DateComponents) -> String?

  /**
    - Selector: stringFromTimeInterval:
  */
  @objc (stringFromTimeInterval:) func string(from: TimeInterval) -> String?

  // Own Instance Properties

  /**
    - Selector: allowedUnits
  */
  @objc var allowedUnits: NSCalendar.Unit { @objc get @objc (setAllowedUnits:) set }

  /**
    - Selector: allowsFractionalUnits
  */
  @objc var allowsFractionalUnits: Bool { @objc get @objc (setAllowsFractionalUnits:) set }

  /**
    - Selector: calendar
  */
  @objc var calendar: Calendar? { @objc get @objc (setCalendar:) set }

  /**
    - Selector: collapsesLargestUnit
  */
  @objc var collapsesLargestUnit: Bool { @objc get @objc (setCollapsesLargestUnit:) set }

  /**
    - Selector: formattingContext
  */
  @objc var formattingContext: Formatter.Context { @objc get @objc (setFormattingContext:) set }

  /**
    - Selector: includesApproximationPhrase
  */
  @objc var includesApproximationPhrase: Bool { @objc get @objc (setIncludesApproximationPhrase:) set }

  /**
    - Selector: includesTimeRemainingPhrase
  */
  @objc var includesTimeRemainingPhrase: Bool { @objc get @objc (setIncludesTimeRemainingPhrase:) set }

  /**
    - Selector: maximumUnitCount
  */
  @objc var maximumUnitCount: Int { @objc get @objc (setMaximumUnitCount:) set }

  /**
    - Selector: referenceDate
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var referenceDate: Date? { @objc get @objc (setReferenceDate:) set }

  /**
    - Selector: unitsStyle
  */
  @objc var unitsStyle: DateComponentsFormatter.UnitsStyle { @objc get @objc (setUnitsStyle:) set }

  /**
    - Selector: zeroFormattingBehavior
  */
  @objc var zeroFormattingBehavior: DateComponentsFormatter.ZeroFormattingBehavior { @objc get @objc (setZeroFormattingBehavior:) set }
}

extension DateComponentsFormatter: DateComponentsFormatterExports {
}
