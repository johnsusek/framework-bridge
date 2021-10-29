import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSRegularExpression
    - name: NSRegularExpression
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSRegularExpression) protocol NSRegularExpressionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: escapedPattern
    - name: escapedPatternForString:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: escapedPattern(for:)
  */
  @objc (escapedPatternForString:) static func escapedPattern(`for`: String) -> String

  /**
    - jsName: escapedTemplate
    - name: escapedTemplateForString:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: escapedTemplate(for:)
  */
  @objc (escapedTemplateForString:) static func escapedTemplate(`for`: String) -> String

  /**
    - jsName: regularExpressionWithPattern
    - name: regularExpressionWithPattern:options:error:
    - argLabels: options, error
    - constructorTokens: 
  */
  // throws - @objc static func regularExpressionWithPattern(options: String, error: NSRegularExpression.Options) -> NSRegularExpression?

  // Instance Methods

  /**
    - jsName: enumerateMatches
    - name: enumerateMatchesInString:options:range:usingBlock:
    - argLabels: in, options, range, using
    - constructorTokens: 
    - obsoleted: 3
    - renamed: enumerateMatches(in:options:range:using:)
  */
  // jsvalue - @objc (enumerateMatchesInString:options:range:usingBlock:) func enumerateMatches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange, using: JSValue)

  /**
    - jsName: firstMatch
    - name: firstMatchInString:options:range:
    - argLabels: in, options, range
    - constructorTokens: 
    - obsoleted: 3
    - renamed: firstMatch(in:options:range:)
  */
  @objc (firstMatchInString:options:range:) func firstMatch(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> NSTextCheckingResult?

  /**
    - jsName: createWithPattern
    - name: initWithPattern:options:error:
    - argLabels: options, error
    - constructorTokens: pattern, options
  */
  @objc static func createWithPattern(pattern: String, options: NSRegularExpression.Options) -> Self?

  /**
    - jsName: matches
    - name: matchesInString:options:range:
    - argLabels: in, options, range
    - constructorTokens: 
    - obsoleted: 3
    - renamed: matches(in:options:range:)
  */
  @objc (matchesInString:options:range:) func matches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> [NSTextCheckingResult]

  /**
    - jsName: numberOfMatches
    - name: numberOfMatchesInString:options:range:
    - argLabels: in, options, range
    - constructorTokens: 
    - obsoleted: 3
    - renamed: numberOfMatches(in:options:range:)
  */
  @objc (numberOfMatchesInString:options:range:) func numberOfMatches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> Int

  /**
    - jsName: rangeOfFirstMatch
    - name: rangeOfFirstMatchInString:options:range:
    - argLabels: in, options, range
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rangeOfFirstMatch(in:options:range:)
  */
  @objc (rangeOfFirstMatchInString:options:range:) func rangeOfFirstMatch(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange) -> NSRange

  /**
    - jsName: replaceMatches
    - name: replaceMatchesInString:options:range:withTemplate:
    - argLabels: in, options, range, withTemplate
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceMatches(in:options:range:withTemplate:)
  */
  @objc (replaceMatchesInString:options:range:withTemplate:) func replaceMatches(in: NSMutableString, options: NSRegularExpression.MatchingOptions, range: NSRange, withTemplate: String) -> Int

  /**
    - jsName: replacementString
    - name: replacementStringForResult:inString:offset:template:
    - argLabels: for, in, offset, template
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replacementString(for:in:offset:template:)
  */
  @objc (replacementStringForResult:inString:offset:template:) func replacementString(`for`: NSTextCheckingResult, in: String, offset: Int, template: String) -> String

  /**
    - jsName: stringByReplacingMatches
    - name: stringByReplacingMatchesInString:options:range:withTemplate:
    - argLabels: in, options, range, withTemplate
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stringByReplacingMatches(in:options:range:withTemplate:)
  */
  @objc (stringByReplacingMatchesInString:options:range:withTemplate:) func stringByReplacingMatches(in: String, options: NSRegularExpression.MatchingOptions, range: NSRange, withTemplate: String) -> String

  // Own Instance Properties

  /**
    - jsName: numberOfCaptureGroups
    - name: numberOfCaptureGroups
    - argLabels: 
  */
  @objc var numberOfCaptureGroups: Int { @objc get }

  /**
    - jsName: options
    - name: options
    - argLabels: 
  */
  @objc var options: NSRegularExpression.Options { @objc get }

  /**
    - jsName: pattern
    - name: pattern
    - argLabels: 
  */
  @objc var pattern: String { @objc get }
}

extension NSRegularExpression: NSRegularExpressionExports {
  @objc public static func createWithPattern(pattern: String, options: NSRegularExpression.Options) -> Self? {
    return try? self.init(pattern: pattern, options: options)
  }

}
