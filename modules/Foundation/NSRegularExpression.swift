import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSRegularExpression
    - Introduced: 10.7
  */

@objc(NSRegularExpression) protocol NSRegularExpressionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: escapedPatternForString:
  */
  @objc (escapedPatternForString:) static func escapedPattern(`for`: String) -> String

  /**
    - Selector: escapedTemplateForString:
  */
  @objc (escapedTemplateForString:) static func escapedTemplate(`for`: String) -> String

  /**
    - Selector: regularExpressionWithPattern:options:error:
  */
  // throws - @objc static func regularExpressionWithPattern(options: String, error: NSRegularExpression.Options) -> NSRegularExpression?

  // Instance Methods

  /**
    - Selector: enumerateMatchesInString:options:range:usingBlock:
  */
  // jsvalue @objc func enumerateMatches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange, using: JSValue)

  /**
    - Selector: firstMatchInString:options:range:
  */
  @objc (firstMatchInString:options:range:) func firstMatch(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> NSTextCheckingResult?

  /**
    - Selector: initWithPattern:options:error:
  */
  @objc static func createWithPattern(pattern: String, options: NSRegularExpression.Options) -> Self?

  /**
    - Selector: matchesInString:options:range:
  */
  @objc (matchesInString:options:range:) func matches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> [NSTextCheckingResult]

  /**
    - Selector: numberOfMatchesInString:options:range:
  */
  @objc (numberOfMatchesInString:options:range:) func numberOfMatches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> Int

  /**
    - Selector: rangeOfFirstMatchInString:options:range:
  */
  @objc (rangeOfFirstMatchInString:options:range:) func rangeOfFirstMatch(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> NSRange

  /**
    - Selector: replaceMatchesInString:options:range:withTemplate:
  */
  @objc (replaceMatchesInString:options:range:withTemplate:) func replaceMatches(in: NSMutableString, options: NSRegularExpression.MatchingOptions, range: NSRange, withTemplate: String) -> Int

  /**
    - Selector: replacementStringForResult:inString:offset:template:
  */
  @objc (replacementStringForResult:inString:offset:template:) func replacementString(`for`: NSTextCheckingResult, in: String, offset: Int, template: String) -> String

  /**
    - Selector: stringByReplacingMatchesInString:options:range:withTemplate:
  */
  @objc (stringByReplacingMatchesInString:options:range:withTemplate:) func stringByReplacingMatches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange, withTemplate: String) -> String

  // Own Instance Properties

  /**
    - Selector: numberOfCaptureGroups
  */
  @objc var numberOfCaptureGroups: Int { @objc get }

  /**
    - Selector: options
  */
  @objc var options: NSRegularExpression.Options { @objc get }

  /**
    - Selector: pattern
  */
  @objc var pattern: String { @objc get }
}

extension NSRegularExpression: NSRegularExpressionExports {
  @objc public static func createWithPattern(pattern: String, options: NSRegularExpression.Options) -> Self? {
    return try? self.init(pattern: pattern, options: options)
  }

}
