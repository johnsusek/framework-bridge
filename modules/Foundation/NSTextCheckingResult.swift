import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSTextCheckingResult
    - name: NSTextCheckingResult
    - argLabels: 
    - Introduced: 10.6
  */

@objc(NSTextCheckingResult) protocol NSTextCheckingResultExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: addressCheckingResult
    - name: addressCheckingResultWithRange:components:
    - argLabels: range, components
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addressCheckingResult(range:components:)
  */
  @objc (addressCheckingResultWithRange:components:) static func addressCheckingResult(range: NSRange, components: [NSTextCheckingKey: String]) -> NSTextCheckingResult

  /**
    - jsName: correctionCheckingResult
    - name: correctionCheckingResultWithRange:replacementString:
    - argLabels: range, replacementString
    - constructorTokens: 
    - obsoleted: 3
    - renamed: correctionCheckingResult(range:replacementString:)
  */
  @objc (correctionCheckingResultWithRange:replacementString:) static func correctionCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - jsName: correctionCheckingResult
    - name: correctionCheckingResultWithRange:replacementString:alternativeStrings:
    - argLabels: range, replacementString, alternativeStrings
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: correctionCheckingResult(range:replacementString:alternativeStrings:)
    - Introduced: 10.9
  */
  @objc (correctionCheckingResultWithRange:replacementString:alternativeStrings:) @available(OSX 10.9, *) static func correctionCheckingResult(range: NSRange, replacementString: String, alternativeStrings: [String]) -> NSTextCheckingResult

  /**
    - jsName: dashCheckingResult
    - name: dashCheckingResultWithRange:replacementString:
    - argLabels: range, replacementString
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dashCheckingResult(range:replacementString:)
  */
  @objc (dashCheckingResultWithRange:replacementString:) static func dashCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - jsName: dateCheckingResult
    - name: dateCheckingResultWithRange:date:
    - argLabels: range, date
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dateCheckingResult(range:date:)
  */
  @objc (dateCheckingResultWithRange:date:) static func dateCheckingResult(range: NSRange, date: Date) -> NSTextCheckingResult

  /**
    - jsName: dateCheckingResult
    - name: dateCheckingResultWithRange:date:timeZone:duration:
    - argLabels: range, date, timeZone, duration
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dateCheckingResult(range:date:timeZone:duration:)
  */
  @objc (dateCheckingResultWithRange:date:timeZone:duration:) static func dateCheckingResult(range: NSRange, date: Date, timeZone: TimeZone, duration: TimeInterval) -> NSTextCheckingResult

  /**
    - jsName: grammarCheckingResult
    - name: grammarCheckingResultWithRange:details:
    - argLabels: range, details
    - constructorTokens: 
    - obsoleted: 3
    - renamed: grammarCheckingResult(range:details:)
  */
  @objc (grammarCheckingResultWithRange:details:) static func grammarCheckingResult(range: NSRange, details: [[String: Any]]) -> NSTextCheckingResult

  /**
    - jsName: linkCheckingResult
    - name: linkCheckingResultWithRange:URL:
    - argLabels: range, url
    - constructorTokens: 
    - obsoleted: 3
    - renamed: linkCheckingResult(range:url:)
  */
  @objc (linkCheckingResultWithRange:URL:) static func linkCheckingResult(range: NSRange, url: URL) -> NSTextCheckingResult

  /**
    - jsName: orthographyCheckingResult
    - name: orthographyCheckingResultWithRange:orthography:
    - argLabels: range, orthography
    - constructorTokens: 
    - obsoleted: 3
    - renamed: orthographyCheckingResult(range:orthography:)
  */
  @objc (orthographyCheckingResultWithRange:orthography:) static func orthographyCheckingResult(range: NSRange, orthography: NSOrthography) -> NSTextCheckingResult

  /**
    - jsName: phoneNumberCheckingResult
    - name: phoneNumberCheckingResultWithRange:phoneNumber:
    - argLabels: range, phoneNumber
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: phoneNumberCheckingResult(range:phoneNumber:)
    - Introduced: 10.7
  */
  @objc (phoneNumberCheckingResultWithRange:phoneNumber:) @available(OSX 10.7, *) static func phoneNumberCheckingResult(range: NSRange, phoneNumber: String) -> NSTextCheckingResult

  /**
    - jsName: quoteCheckingResult
    - name: quoteCheckingResultWithRange:replacementString:
    - argLabels: range, replacementString
    - constructorTokens: 
    - obsoleted: 3
    - renamed: quoteCheckingResult(range:replacementString:)
  */
  @objc (quoteCheckingResultWithRange:replacementString:) static func quoteCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - jsName: regularExpressionCheckingResult
    - name: regularExpressionCheckingResultWithRanges:count:regularExpression:
    - argLabels: ranges, count, regularExpression
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: regularExpressionCheckingResult(ranges:count:regularExpression:)
    - Introduced: 10.7
  */
  @objc (regularExpressionCheckingResultWithRanges:count:regularExpression:) @available(OSX 10.7, *) static func regularExpressionCheckingResult(ranges: NSRangePointer, count: Int, regularExpression: NSRegularExpression) -> NSTextCheckingResult

  /**
    - jsName: replacementCheckingResult
    - name: replacementCheckingResultWithRange:replacementString:
    - argLabels: range, replacementString
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replacementCheckingResult(range:replacementString:)
  */
  @objc (replacementCheckingResultWithRange:replacementString:) static func replacementCheckingResult(range: NSRange, replacementString: String) -> NSTextCheckingResult

  /**
    - jsName: spellCheckingResult
    - name: spellCheckingResultWithRange:
    - argLabels: range
    - constructorTokens: 
    - obsoleted: 3
    - renamed: spellCheckingResult(range:)
  */
  @objc (spellCheckingResultWithRange:) static func spellCheckingResult(range: NSRange) -> NSTextCheckingResult

  /**
    - jsName: transitInformationCheckingResult
    - name: transitInformationCheckingResultWithRange:components:
    - argLabels: range, components
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: transitInformationCheckingResult(range:components:)
    - Introduced: 10.7
  */
  @objc (transitInformationCheckingResultWithRange:components:) @available(OSX 10.7, *) static func transitInformationCheckingResult(range: NSRange, components: [NSTextCheckingKey: String]) -> NSTextCheckingResult

  // Instance Methods

  /**
    - jsName: range
    - name: rangeAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: range(at:)
    - Introduced: 10.7
  */
  @objc (rangeAtIndex:) @available(OSX 10.7, *) func range(at: Int) -> NSRange

  /**
    - jsName: range
    - name: rangeWithName:
    - argLabels: withName
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: range(withName:)
    - Introduced: 10.13
  */
  @objc (rangeWithName:) @available(OSX 10.13, *) func range(withName: String) -> NSRange

  /**
    - jsName: adjustingRanges
    - name: resultByAdjustingRangesWithOffset:
    - argLabels: offset
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 4
    - renamed: adjustingRanges(offset:)
    - Introduced: 10.7
  */
  @objc (resultByAdjustingRangesWithOffset:) @available(OSX 10.7, *) func adjustingRanges(offset: Int) -> NSTextCheckingResult

  // Own Instance Properties

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - jsName: addressComponents
    - name: addressComponents
    - argLabels: 
  */
  @objc var addressComponents: [NSTextCheckingKey: String]? { @objc get }

  /**
    - jsName: alternativeStrings
    - name: alternativeStrings
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var alternativeStrings: [String]? { @objc get }

  /**
    - jsName: components
    - name: components
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var components: [NSTextCheckingKey: String]? { @objc get }

  /**
    - jsName: date
    - name: date
    - argLabels: 
  */
  @objc var date: Date? { @objc get }

  /**
    - jsName: duration
    - name: duration
    - argLabels: 
  */
  @objc var duration: TimeInterval { @objc get }

  /**
    - jsName: grammarDetails
    - name: grammarDetails
    - argLabels: 
  */
  @objc var grammarDetails: [[String: Any]]? { @objc get }

  /**
    - jsName: numberOfRanges
    - name: numberOfRanges
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var numberOfRanges: Int { @objc get }

  /**
    - jsName: orthography
    - name: orthography
    - argLabels: 
  */
  @objc var orthography: NSOrthography? { @objc get }

  /**
    - jsName: phoneNumber
    - name: phoneNumber
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var phoneNumber: String? { @objc get }

  /**
    - jsName: range
    - name: range
    - argLabels: 
  */
  @objc var range: NSRange { @objc get }

  /**
    - jsName: regularExpression
    - name: regularExpression
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var regularExpression: NSRegularExpression? { @objc get }

  /**
    - jsName: replacementString
    - name: replacementString
    - argLabels: 
  */
  @objc var replacementString: String? { @objc get }

  /**
    - jsName: resultType
    - name: resultType
    - argLabels: 
  */
  @objc var resultType: NSTextCheckingResult.CheckingType { @objc get }

  /**
    - jsName: timeZone
    - name: timeZone
    - argLabels: 
  */
  @objc var timeZone: TimeZone? { @objc get }
}

extension NSTextCheckingResult: NSTextCheckingResultExports {
}
