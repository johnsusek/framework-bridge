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
    - Selector: NSTextCheckingResult
    - Introduced: 10.6
  */

@objc(NSTextCheckingResult) protocol NSTextCheckingResultExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: addressCheckingResultWithRange:components:
  */
  @objc (addressCheckingResultWithRange:components:) static func addressCheckingResult(range: NSRange, components: [NSTextCheckingKey: String]) -> NSTextCheckingResult

  /**
    - Selector: correctionCheckingResultWithRange:replacementString:
  */
  @objc (correctionCheckingResultWithRange:replacementString:) static func correctionCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - Selector: correctionCheckingResultWithRange:replacementString:alternativeStrings:
    - Introduced: 10.9
  */
  @objc (correctionCheckingResultWithRange:replacementString:alternativeStrings:) @available(OSX 10.9, *) static func correctionCheckingResult(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult

  /**
    - Selector: dashCheckingResultWithRange:replacementString:
  */
  @objc (dashCheckingResultWithRange:replacementString:) static func dashCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - Selector: dateCheckingResultWithRange:date:
  */
  @objc (dateCheckingResultWithRange:date:) static func dateCheckingResult(range: NSRange, date: Date) -> NSTextCheckingResult

  /**
    - Selector: dateCheckingResultWithRange:date:timeZone:duration:
  */
  @objc (dateCheckingResultWithRange:date:timeZone:duration:) static func dateCheckingResult(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> NSTextCheckingResult

  /**
    - Selector: grammarCheckingResultWithRange:details:
  */
  @objc (grammarCheckingResultWithRange:details:) static func grammarCheckingResult(range: NSRange, details: [[String: Any]]) -> NSTextCheckingResult

  /**
    - Selector: linkCheckingResultWithRange:URL:
  */
  @objc (linkCheckingResultWithRange:URL:) static func linkCheckingResult(range: NSRange, url: URL) -> NSTextCheckingResult

  /**
    - Selector: orthographyCheckingResultWithRange:orthography:
  */
  @objc (orthographyCheckingResultWithRange:orthography:) static func orthographyCheckingResult(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult

  /**
    - Selector: phoneNumberCheckingResultWithRange:phoneNumber:
    - Introduced: 10.7
  */
  @objc (phoneNumberCheckingResultWithRange:phoneNumber:) @available(OSX 10.7, *) static func phoneNumberCheckingResult(range: NSRange, phoneNumber: String) -> NSTextCheckingResult

  /**
    - Selector: quoteCheckingResultWithRange:replacementString:
  */
  @objc (quoteCheckingResultWithRange:replacementString:) static func quoteCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - Selector: regularExpressionCheckingResultWithRanges:count:regularExpression:
    - Introduced: 10.7
  */
  @objc (regularExpressionCheckingResultWithRanges:count:regularExpression:) @available(OSX 10.7, *) static func regularExpressionCheckingResult(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult

  /**
    - Selector: replacementCheckingResultWithRange:replacementString:
  */
  @objc (replacementCheckingResultWithRange:replacementString:) static func replacementCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - Selector: spellCheckingResultWithRange:
  */
  @objc (spellCheckingResultWithRange:) static func spellCheckingResult(range: NSRange) -> NSTextCheckingResult

  /**
    - Selector: transitInformationCheckingResultWithRange:components:
    - Introduced: 10.7
  */
  @objc (transitInformationCheckingResultWithRange:components:) @available(OSX 10.7, *) static func transitInformationCheckingResult(range: NSRange, components: [NSTextCheckingKey: String]) -> NSTextCheckingResult

  // Instance Methods

  /**
    - Selector: rangeAtIndex:
    - Introduced: 10.7
  */
  @objc (rangeAtIndex:) @available(OSX 10.7, *) func range(at: Int) -> NSRange

  /**
    - Selector: rangeWithName:
    - Introduced: 10.13
  */
  @objc (rangeWithName:) @available(OSX 10.13, *) func range(withName: String) -> NSRange

  /**
    - Selector: resultByAdjustingRangesWithOffset:
    - Introduced: 10.7
  */
  @objc (resultByAdjustingRangesWithOffset:) @available(OSX 10.7, *) func adjustingRanges(offset: Int) -> NSTextCheckingResult

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - Selector: addressComponents
  */
  @objc var addressComponents: [NSTextCheckingKey: String]? { @objc get }

  /**
    - Selector: alternativeStrings
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var alternativeStrings: [String]? { @objc get }

  /**
    - Selector: components
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var components: [NSTextCheckingKey: String]? { @objc get }

  /**
    - Selector: date
  */
  @objc var date: Date? { @objc get }

  /**
    - Selector: duration
  */
  @objc var duration: TimeInterval { @objc get }

  /**
    - Selector: grammarDetails
  */
  @objc var grammarDetails: [[String: Any]]? { @objc get }

  /**
    - Selector: numberOfRanges
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var numberOfRanges: Int { @objc get }

  /**
    - Selector: orthography
  */
  @objc var orthography: NSOrthography? { @objc get }

  /**
    - Selector: phoneNumber
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var phoneNumber: String? { @objc get }

  /**
    - Selector: range
  */
  @objc var range: NSRange { @objc get }

  /**
    - Selector: regularExpression
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var regularExpression: NSRegularExpression? { @objc get }

  /**
    - Selector: replacementString
  */
  @objc var replacementString: String? { @objc get }

  /**
    - Selector: resultType
  */
  @objc var resultType: NSTextCheckingResult.CheckingType { @objc get }

  /**
    - Selector: timeZone
  */
  @objc var timeZone: TimeZone? { @objc get }
}

extension NSTextCheckingResult: NSTextCheckingResultExports {
}
