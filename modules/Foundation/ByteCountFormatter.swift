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
    - Selector: NSByteCountFormatter
    - Introduced: 10.8
  */

@objc(ByteCountFormatter) protocol ByteCountFormatterExports: JSExport, FormatterExports {
  // Static Methods

  /**
    - Selector: stringFromByteCount:countStyle:
  */
  @objc (stringFromByteCount:countStyle:) static func string(fromByteCount: Int64, countStyle: ByteCountFormatter.CountStyle) -> String

  /**
    - Selector: stringFromMeasurement:countStyle:
    - Introduced: 10.15
  */
  @objc (stringFromMeasurement:countStyle:) @available(OSX 10.15, *) static func string(from: Measurement<UnitInformationStorage>, countStyle: ByteCountFormatter.CountStyle) -> String

  // Instance Methods

  /**
    - Selector: stringFromByteCount:
  */
  @objc (stringFromByteCount:) func string(fromByteCount: Int64) -> String

  /**
    - Selector: stringFromMeasurement:
    - Introduced: 10.15
  */
  @objc (stringFromMeasurement:) @available(OSX 10.15, *) func string(from: Measurement<UnitInformationStorage>) -> String

  // Own Instance Properties

  /**
    - Selector: adaptive
  */
  @objc var isAdaptive: Bool { @objc get @objc (setAdaptive:) set }

  /**
    - Selector: allowedUnits
  */
  @objc var allowedUnits: ByteCountFormatter.Units { @objc get @objc (setAllowedUnits:) set }

  /**
    - Selector: allowsNonnumericFormatting
  */
  @objc var allowsNonnumericFormatting: Bool { @objc get @objc (setAllowsNonnumericFormatting:) set }

  /**
    - Selector: countStyle
  */
  @objc var countStyle: ByteCountFormatter.CountStyle { @objc get @objc (setCountStyle:) set }

  /**
    - Selector: formattingContext
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var formattingContext: Formatter.Context { @objc get @objc (setFormattingContext:) set }

  /**
    - Selector: includesActualByteCount
  */
  @objc var includesActualByteCount: Bool { @objc get @objc (setIncludesActualByteCount:) set }

  /**
    - Selector: includesCount
  */
  @objc var includesCount: Bool { @objc get @objc (setIncludesCount:) set }

  /**
    - Selector: includesUnit
  */
  @objc var includesUnit: Bool { @objc get @objc (setIncludesUnit:) set }

  /**
    - Selector: zeroPadsFractionDigits
  */
  @objc var zeroPadsFractionDigits: Bool { @objc get @objc (setZeroPadsFractionDigits:) set }
}

extension ByteCountFormatter: ByteCountFormatterExports {
}
