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
    - Selector: NSString
  */

@objc(NSString) protocol NSStringExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: localizedNameOfStringEncoding:
  */
  @objc (localizedNameOfStringEncoding:) static func localizedName(of: UInt) -> String

  /**
    - Selector: pathWithComponents:
  */
  @objc (pathWithComponents:) static func path(withComponents: [String]) -> String

  /**
    - Selector: stringEncodingForData:encodingOptions:convertedString:usedLossyConversion:
    - Introduced: 10.10
  */
  @objc (stringEncodingForData:encodingOptions:convertedString:usedLossyConversion:) @available(OSX 10.10, *) static func stringEncoding(`for`: Data, encodingOptions: [StringEncodingDetectionOptionsKey: Any]?, convertedString: AutoreleasingUnsafeMutablePointer<NSString?>?, usedLossyConversion: UnsafeMutablePointer<ObjCBool>?) -> UInt

  /**
    - Selector: stringWithCString:encoding:
  */
  @objc static func createWithCString_Encoding(_ cString: UnsafePointer<Int8>, _ encoding: UInt) -> Self?

  /**
    - Selector: stringWithCharacters:length:
  */
  @objc static func createWithCharacters_Length(_ characters: UnsafePointer<unichar>, _ length: Int) -> Self

  /**
    - Selector: stringWithContentsOfFile:encoding:error:
  */
  @objc static func createWithContentsOfFile_Encoding(_ path: String, _ encoding: UInt) -> Self?

  /**
    - Selector: stringWithContentsOfFile:usedEncoding:error:
  */
  @objc static func createWithContentsOfFile_UsedEncoding(_ path: String, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self?

  /**
    - Selector: stringWithContentsOfURL:encoding:error:
  */
  @objc static func createWithContentsOfURL_Encoding(_ url: URL, _ encoding: UInt) -> Self?

  /**
    - Selector: stringWithContentsOfURL:usedEncoding:error:
  */
  @objc static func createWithContentsOfURL_UsedEncoding(_ url: URL, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self?

  /**
    - Selector: stringWithString:
  */
  @objc static func createWithString(_ string: String) -> Self

  /**
    - Selector: stringWithUTF8String:
  */
  @objc static func createWithUTF8String(_ utf8String: UnsafePointer<Int8>) -> Self?

  // Own Static Properties

  /**
    - Selector: availableStringEncodings
  */
  @objc static var availableStringEncodings: UnsafePointer<UInt> { @objc get }

  /**
    - Selector: defaultCStringEncoding
  */
  @objc static var defaultCStringEncoding: UInt { @objc get }

  // Instance Methods

  /**
    - Selector: boundingRectWithSize:options:attributes:
  */
  @objc (boundingRectWithSize:options:attributes:) func boundingRect(with: CGSize, options: NSString.DrawingOptions, attributes: [NSAttributedString.Key: Any]?) -> CGRect

  /**
    - Selector: boundingRectWithSize:options:attributes:context:
    - Introduced: 10.11
  */
  @objc (boundingRectWithSize:options:attributes:context:) @available(OSX 10.11, *) func boundingRect(with: CGSize, options: NSString.DrawingOptions, attributes: [NSAttributedString.Key: Any]?, context: NSStringDrawingContext?) -> CGRect

  /**
    - Selector: cStringUsingEncoding:
  */
  @objc (cStringUsingEncoding:) func cString(using: UInt) -> UnsafePointer<Int8>?

  /**
    - Selector: canBeConvertedToEncoding:
  */
  @objc (canBeConvertedToEncoding:) func canBeConverted(to: UInt) -> Bool

  /**
    - Selector: capitalizedStringWithLocale:
    - Introduced: 10.8
  */
  @objc (capitalizedStringWithLocale:) @available(OSX 10.8, *) func capitalized(with: Locale?) -> String

  /**
    - Selector: caseInsensitiveCompare:
  */
  @objc func caseInsensitiveCompare(_: String) -> ComparisonResult

  /**
    - Selector: characterAtIndex:
  */
  @objc (characterAtIndex:) func character(at: Int) -> unichar

  /**
    - Selector: commonPrefixWithString:options:
  */
  @objc (commonPrefixWithString:options:) func commonPrefix(with: String, options: NSString.CompareOptions) -> String

  /**
    - Selector: compare:
  */
  @objc func compare(_: String) -> ComparisonResult

  /**
    - Selector: compare:options:
  */
  @objc func compare(_: String, options: NSString.CompareOptions) -> ComparisonResult

  /**
    - Selector: compare:options:range:
  */
  @objc func compare(_: String, options: NSString.CompareOptions, range: NSRange) -> ComparisonResult

  /**
    - Selector: compare:options:range:locale:
  */
  @objc func compare(_: String, options: NSString.CompareOptions, range: NSRange, locale: Any?) -> ComparisonResult

  /**
    - Selector: completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:
  */
  // @objc (completePathIntoString:caseSensitive:matchesIntoArray:filterTypes:) func completePath(into: UnsafeMutablePointer<NSString?>?, caseSensitive: Bool, matchesInto: AutoreleasingUnsafeMutablePointer<NSArray<NSString>?>?, filterTypes: [String]?) -> Int

  /**
    - Selector: componentsSeparatedByCharactersInSet:
    - Introduced: 10.5
  */
  @objc (componentsSeparatedByCharactersInSet:) @available(OSX 10.5, *) func components(separatedBy: CharacterSet) -> [String]

  /**
    - Selector: componentsSeparatedByString:
  */
  @objc (componentsSeparatedByString:) func components(separatedBy: String) -> [String]

  /**
    - Selector: containsString:
    - Introduced: 10.10
  */
  @objc (containsString:) @available(OSX 10.10, *) func contains(_: String) -> Bool

  /**
    - Selector: dataUsingEncoding:
  */
  @objc (dataUsingEncoding:) func data(using: UInt) -> Data?

  /**
    - Selector: dataUsingEncoding:allowLossyConversion:
  */
  @objc (dataUsingEncoding:allowLossyConversion:) func data(using: UInt, allowLossyConversion: Bool) -> Data?

  /**
    - Selector: drawAtPoint:withAttributes:
    - Introduced: 10.0
  */
  @objc (drawAtPoint:withAttributes:) @available(OSX 10.0, *) func draw(at: CGPoint, withAttributes: [NSAttributedString.Key: Any]?)

  /**
    - Selector: drawInRect:withAttributes:
    - Introduced: 10.0
  */
  @objc (drawInRect:withAttributes:) @available(OSX 10.0, *) func draw(in: CGRect, withAttributes: [NSAttributedString.Key: Any]?)

  /**
    - Selector: drawWithRect:options:attributes:
  */
  @objc (drawWithRect:options:attributes:) func draw(with: CGRect, options: NSString.DrawingOptions, attributes: [NSAttributedString.Key: Any]?)

  /**
    - Selector: drawWithRect:options:attributes:context:
    - Introduced: 10.11
  */
  @objc (drawWithRect:options:attributes:context:) @available(OSX 10.11, *) func draw(with: CGRect, options: NSString.DrawingOptions, attributes: [NSAttributedString.Key: Any]?, context: NSStringDrawingContext?)

  /**
    - Selector: enumerateLinesUsingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerateLines(_: JSValue)

  /**
    - Selector: enumerateLinguisticTagsInRange:scheme:options:orthography:usingBlock:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func enumerateLinguisticTags(in: NSRange, scheme: NSLinguisticTagScheme, options: NSLinguisticTagger.Options, orthography: NSOrthography?, using: JSValue)

  /**
    - Selector: enumerateSubstringsInRange:options:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerateSubstrings(in: NSRange, options: NSString.EnumerationOptions, using: JSValue)

  /**
    - Selector: getBytes:maxLength:usedLength:encoding:options:range:remainingRange:
  */
  @objc (getBytes:maxLength:usedLength:encoding:options:range:remainingRange:) func getBytes(_: UnsafeMutableRawPointer?, maxLength: Int, usedLength: UnsafeMutablePointer<Int>?, encoding: UInt, options: NSString.EncodingConversionOptions, range: NSRange, remaining: NSRangePointer?) -> Bool

  /**
    - Selector: getCString:maxLength:encoding:
  */
  @objc func getCString(_: UnsafeMutablePointer<Int8>, maxLength: Int, encoding: UInt) -> Bool

  /**
    - Selector: getCharacters:
  */
  @objc func getCharacters(_: UnsafeMutablePointer<unichar>)

  /**
    - Selector: getCharacters:range:
  */
  @objc func getCharacters(_: UnsafeMutablePointer<unichar>, range: NSRange)

  /**
    - Selector: getFileSystemRepresentation:maxLength:
  */
  @objc func getFileSystemRepresentation(_: UnsafeMutablePointer<Int8>, maxLength: Int) -> Bool

  /**
    - Selector: getLineStart:end:contentsEnd:forRange:
  */
  @objc (getLineStart:end:contentsEnd:forRange:) func getLineStart(_: UnsafeMutablePointer<Int>?, end: UnsafeMutablePointer<Int>?, contentsEnd: UnsafeMutablePointer<Int>?, `for`: NSRange)

  /**
    - Selector: getParagraphStart:end:contentsEnd:forRange:
  */
  @objc (getParagraphStart:end:contentsEnd:forRange:) func getParagraphStart(_: UnsafeMutablePointer<Int>?, end: UnsafeMutablePointer<Int>?, contentsEnd: UnsafeMutablePointer<Int>?, `for`: NSRange)

  /**
    - Selector: hasPrefix:
  */
  @objc func hasPrefix(_: String) -> Bool

  /**
    - Selector: hasSuffix:
  */
  @objc func hasSuffix(_: String) -> Bool

  /**
    - Selector: initWithBytes:length:encoding:
  */
  @objc static func createWithBytes_Length_Encoding(_ bytes: UnsafeRawPointer, _ length: Int, _ encoding: UInt) -> Self?

  /**
    - Selector: initWithBytesNoCopy:length:encoding:freeWhenDone:
  */
  @objc static func createWithBytesNoCopy_Length_Encoding_FreeWhenDone(_ bytesNoCopy: UnsafeMutableRawPointer, _ length: Int, _ encoding: UInt, _ freeWhenDone: Bool) -> Self?

  /**
    - Selector: initWithCString:encoding:
  */
  // @objc static func createWithCString_Encoding(_ cString: UnsafePointer<Int8>, _ encoding: UInt) -> Self?

  /**
    - Selector: initWithCharacters:length:
  */
  // @objc static func createWithCharacters_Length(_ characters: UnsafePointer<unichar>, _ length: Int) -> Self

  /**
    - Selector: initWithCharactersNoCopy:length:freeWhenDone:
  */
  @objc static func createWithCharactersNoCopy_Length_FreeWhenDone(_ charactersNoCopy: UnsafeMutablePointer<unichar>, _ length: Int, _ freeWhenDone: Bool) -> Self

  /**
    - Selector: initWithContentsOfFile:encoding:error:
  */
  @objc static func createWithContentsOfFile__Encoding(_ contentsOfFile: String, _ encoding: UInt) -> Self?

  /**
    - Selector: initWithContentsOfFile:usedEncoding:error:
  */
  @objc static func createWithContentsOfFile__UsedEncoding(_ contentsOfFile: String, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self?

  /**
    - Selector: initWithContentsOfURL:encoding:error:
  */
  @objc static func createWithContentsOf_Encoding(_ contentsOf: URL, _ encoding: UInt) -> Self?

  /**
    - Selector: initWithContentsOfURL:usedEncoding:error:
  */
  @objc static func createWithContentsOf_UsedEncoding(_ contentsOf: URL, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self?

  /**
    - Selector: initWithData:encoding:
  */
  @objc static func createWithData_Encoding(_ data: Data, _ encoding: UInt) -> Self?

  /**
    - Selector: isEqualToString:
  */
  @objc (isEqualToString:) func isEqual(to: String) -> Bool

  /**
    - Selector: lengthOfBytesUsingEncoding:
  */
  @objc (lengthOfBytesUsingEncoding:) func lengthOfBytes(using: UInt) -> Int

  /**
    - Selector: lineRangeForRange:
  */
  @objc (lineRangeForRange:) func lineRange(`for`: NSRange) -> NSRange

  /**
    - Selector: linguisticTagsInRange:scheme:options:orthography:tokenRanges:
    - Introduced: 10.7
  */
  // @objc (linguisticTagsInRange:scheme:options:orthography:tokenRanges:) @available(OSX 10.7, *) func linguisticTags(in: NSRange, scheme: NSLinguisticTagScheme, options: NSLinguisticTagger.Options, orthography: NSOrthography?, tokenRanges: AutoreleasingUnsafeMutablePointer<NSArray<NSValue>?>?) -> [NSLinguisticTag]

  /**
    - Selector: localizedCaseInsensitiveCompare:
  */
  @objc func localizedCaseInsensitiveCompare(_: String) -> ComparisonResult

  /**
    - Selector: localizedCaseInsensitiveContainsString:
    - Introduced: 10.10
  */
  @objc (localizedCaseInsensitiveContainsString:) @available(OSX 10.10, *) func localizedCaseInsensitiveContains(_: String) -> Bool

  /**
    - Selector: localizedCompare:
  */
  @objc func localizedCompare(_: String) -> ComparisonResult

  /**
    - Selector: localizedStandardCompare:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func localizedStandardCompare(_: String) -> ComparisonResult

  /**
    - Selector: localizedStandardContainsString:
    - Introduced: 10.11
  */
  @objc (localizedStandardContainsString:) @available(OSX 10.11, *) func localizedStandardContains(_: String) -> Bool

  /**
    - Selector: localizedStandardRangeOfString:
    - Introduced: 10.11
  */
  @objc (localizedStandardRangeOfString:) @available(OSX 10.11, *) func localizedStandardRange(of: String) -> NSRange

  /**
    - Selector: lowercaseStringWithLocale:
    - Introduced: 10.8
  */
  @objc (lowercaseStringWithLocale:) @available(OSX 10.8, *) func lowercased(with: Locale?) -> String

  /**
    - Selector: maximumLengthOfBytesUsingEncoding:
  */
  @objc (maximumLengthOfBytesUsingEncoding:) func maximumLengthOfBytes(using: UInt) -> Int

  /**
    - Selector: paragraphRangeForRange:
  */
  @objc (paragraphRangeForRange:) func paragraphRange(`for`: NSRange) -> NSRange

  /**
    - Selector: propertyList
  */
  @objc func propertyList() -> Any

  /**
    - Selector: propertyListFromStringsFileFormat
  */
  @objc func propertyListFromStringsFileFormat() -> [AnyHashable: Any]?

  /**
    - Selector: rangeOfCharacterFromSet:
  */
  @objc (rangeOfCharacterFromSet:) func rangeOfCharacter(from: CharacterSet) -> NSRange

  /**
    - Selector: rangeOfCharacterFromSet:options:
  */
  @objc (rangeOfCharacterFromSet:options:) func rangeOfCharacter(from: CharacterSet, options: NSString.CompareOptions) -> NSRange

  /**
    - Selector: rangeOfCharacterFromSet:options:range:
  */
  @objc (rangeOfCharacterFromSet:options:range:) func rangeOfCharacter(from: CharacterSet, options: NSString.CompareOptions, range: NSRange) -> NSRange

  /**
    - Selector: rangeOfComposedCharacterSequenceAtIndex:
  */
  @objc (rangeOfComposedCharacterSequenceAtIndex:) func rangeOfComposedCharacterSequence(at: Int) -> NSRange

  /**
    - Selector: rangeOfComposedCharacterSequencesForRange:
    - Introduced: 10.5
  */
  @objc (rangeOfComposedCharacterSequencesForRange:) @available(OSX 10.5, *) func rangeOfComposedCharacterSequences(`for`: NSRange) -> NSRange

  /**
    - Selector: rangeOfString:
  */
  @objc (rangeOfString:) func range(of: String) -> NSRange

  /**
    - Selector: rangeOfString:options:
  */
  @objc (rangeOfString:options:) func range(of: String, options: NSString.CompareOptions) -> NSRange

  /**
    - Selector: rangeOfString:options:range:
  */
  @objc (rangeOfString:options:range:) func range(of: String, options: NSString.CompareOptions, range: NSRange) -> NSRange

  /**
    - Selector: rangeOfString:options:range:locale:
    - Introduced: 10.5
  */
  @objc (rangeOfString:options:range:locale:) @available(OSX 10.5, *) func range(of: String, options: NSString.CompareOptions, range: NSRange, locale: Locale?) -> NSRange

  /**
    - Selector: sizeWithAttributes:
    - Introduced: 10.0
  */
  @objc (sizeWithAttributes:) @available(OSX 10.0, *) func size(withAttributes: [NSAttributedString.Key: Any]?) -> CGSize

  /**
    - Selector: stringByAddingPercentEncodingWithAllowedCharacters:
    - Introduced: 10.9
  */
  @objc (stringByAddingPercentEncodingWithAllowedCharacters:) @available(OSX 10.9, *) func addingPercentEncoding(withAllowedCharacters: CharacterSet) -> String?

  /**
    - Selector: stringByAppendingPathComponent:
  */
  @objc (stringByAppendingPathComponent:) func appendingPathComponent(_: String) -> String

  /**
    - Selector: stringByAppendingPathExtension:
  */
  @objc (stringByAppendingPathExtension:) func appendingPathExtension(_: String) -> String?

  /**
    - Selector: stringByAppendingString:
  */
  @objc (stringByAppendingString:) func appending(_: String) -> String

  /**
    - Selector: stringByApplyingTransform:reverse:
    - Introduced: 10.11
  */
  @objc (stringByApplyingTransform:reverse:) @available(OSX 10.11, *) func applyingTransform(_: StringTransform, reverse: Bool) -> String?

  /**
    - Selector: stringByFoldingWithOptions:locale:
    - Introduced: 10.5
  */
  @objc (stringByFoldingWithOptions:locale:) @available(OSX 10.5, *) func folding(options: NSString.CompareOptions, locale: Locale?) -> String

  /**
    - Selector: stringByPaddingToLength:withString:startingAtIndex:
  */
  @objc (stringByPaddingToLength:withString:startingAtIndex:) func padding(toLength: Int, withPad: String, startingAt: Int) -> String

  /**
    - Selector: stringByReplacingCharactersInRange:withString:
    - Introduced: 10.5
  */
  @objc (stringByReplacingCharactersInRange:withString:) @available(OSX 10.5, *) func replacingCharacters(in: NSRange, with: String) -> String

  /**
    - Selector: stringByReplacingOccurrencesOfString:withString:
    - Introduced: 10.5
  */
  @objc (stringByReplacingOccurrencesOfString:withString:) @available(OSX 10.5, *) func replacingOccurrences(of: String, with: String) -> String

  /**
    - Selector: stringByReplacingOccurrencesOfString:withString:options:range:
    - Introduced: 10.5
  */
  @objc (stringByReplacingOccurrencesOfString:withString:options:range:) @available(OSX 10.5, *) func replacingOccurrences(of: String, with: String, options: NSString.CompareOptions, range: NSRange) -> String

  /**
    - Selector: stringByTrimmingCharactersInSet:
  */
  @objc (stringByTrimmingCharactersInSet:) func trimmingCharacters(in: CharacterSet) -> String

  /**
    - Selector: stringsByAppendingPaths:
  */
  @objc (stringsByAppendingPaths:) func strings(byAppendingPaths: [String]) -> [String]

  /**
    - Selector: substringFromIndex:
  */
  @objc (substringFromIndex:) func substring(from: Int) -> String

  /**
    - Selector: substringToIndex:
  */
  @objc (substringToIndex:) func substring(to: Int) -> String

  /**
    - Selector: substringWithRange:
  */
  @objc (substringWithRange:) func substring(with: NSRange) -> String

  /**
    - Selector: uppercaseStringWithLocale:
    - Introduced: 10.8
  */
  @objc (uppercaseStringWithLocale:) @available(OSX 10.8, *) func uppercased(with: Locale?) -> String

  /**
    - Selector: variantFittingPresentationWidth:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func variantFittingPresentationWidth(_: Int) -> String

  /**
    - Selector: writeToFile:atomically:encoding:error:
  */
  // throws - @objc func writeToFile(path: String, atomically: Bool, encoding: UInt) -> Bool

  /**
    - Selector: writeToURL:atomically:encoding:error:
  */
  // throws - @objc func writeToURL(url: URL, atomically: Bool, encoding: UInt) -> Bool

  // Own Instance Properties

  /**
    - Selector: UTF8String
  */
  @objc var utf8String: UnsafePointer<Int8>? { @objc (UTF8String) get }

  /**
    - Selector: absolutePath
  */
  @objc var isAbsolutePath: Bool { @objc get }

  /**
    - Selector: boolValue
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var boolValue: Bool { @objc get }

  /**
    - Selector: capitalizedString
  */
  @objc var capitalized: String { @objc (capitalizedString) get }

  /**
    - Selector: decomposedStringWithCanonicalMapping
  */
  @objc var decomposedStringWithCanonicalMapping: String { @objc get }

  /**
    - Selector: decomposedStringWithCompatibilityMapping
  */
  @objc var decomposedStringWithCompatibilityMapping: String { @objc get }

  /**
    - Selector: doubleValue
  */
  @objc var doubleValue: Double { @objc get }

  /**
    - Selector: fastestEncoding
  */
  @objc var fastestEncoding: UInt { @objc get }

  /**
    - Selector: fileSystemRepresentation
  */
  @objc var fileSystemRepresentation: UnsafePointer<Int8> { @objc get }

  /**
    - Selector: floatValue
  */
  @objc var floatValue: Float { @objc get }

  /**
    - Selector: intValue
  */
  @objc var intValue: Int32 { @objc get }

  /**
    - Selector: integerValue
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var integerValue: Int { @objc get }

  /**
    - Selector: lastPathComponent
  */
  @objc var lastPathComponent: String { @objc get }

  /**
    - Selector: length
  */
  @objc var length: Int { @objc get }

  /**
    - Selector: localizedCapitalizedString
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var localizedCapitalized: String { @objc (localizedCapitalizedString) get }

  /**
    - Selector: localizedLowercaseString
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var localizedLowercase: String { @objc (localizedLowercaseString) get }

  /**
    - Selector: localizedUppercaseString
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var localizedUppercase: String { @objc (localizedUppercaseString) get }

  /**
    - Selector: longLongValue
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var longLongValue: Int64 { @objc get }

  /**
    - Selector: lowercaseString
  */
  @objc var lowercased: String { @objc (lowercaseString) get }

  /**
    - Selector: pathComponents
  */
  @objc var pathComponents: [String] { @objc get }

  /**
    - Selector: pathExtension
  */
  @objc var pathExtension: String { @objc get }

  /**
    - Selector: precomposedStringWithCanonicalMapping
  */
  @objc var precomposedStringWithCanonicalMapping: String { @objc get }

  /**
    - Selector: precomposedStringWithCompatibilityMapping
  */
  @objc var precomposedStringWithCompatibilityMapping: String { @objc get }

  /**
    - Selector: smallestEncoding
  */
  @objc var smallestEncoding: UInt { @objc get }

  /**
    - Selector: stringByAbbreviatingWithTildeInPath
  */
  @objc var abbreviatingWithTildeInPath: String { @objc (stringByAbbreviatingWithTildeInPath) get }

  /**
    - Selector: stringByDeletingLastPathComponent
  */
  @objc var deletingLastPathComponent: String { @objc (stringByDeletingLastPathComponent) get }

  /**
    - Selector: stringByDeletingPathExtension
  */
  @objc var deletingPathExtension: String { @objc (stringByDeletingPathExtension) get }

  /**
    - Selector: stringByExpandingTildeInPath
  */
  @objc var expandingTildeInPath: String { @objc (stringByExpandingTildeInPath) get }

  /**
    - Selector: stringByRemovingPercentEncoding
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var removingPercentEncoding: String? { @objc (stringByRemovingPercentEncoding) get }

  /**
    - Selector: stringByResolvingSymlinksInPath
  */
  @objc var resolvingSymlinksInPath: String { @objc (stringByResolvingSymlinksInPath) get }

  /**
    - Selector: stringByStandardizingPath
  */
  @objc var standardizingPath: String { @objc (stringByStandardizingPath) get }

  /**
    - Selector: uppercaseString
  */
  @objc var uppercased: String { @objc (uppercaseString) get }
}

extension NSString: NSStringExports {
  /**
    - Selector: stringWithCString:encoding:
  */
  @objc public static func createWithCString_Encoding(_ cString: UnsafePointer<Int8>, _ encoding: UInt) -> Self? {
    return self.init(cString: cString, encoding: encoding)
  }


  /**
    - Selector: stringWithCharacters:length:
  */
  @objc public static func createWithCharacters_Length(_ characters: UnsafePointer<unichar>, _ length: Int) -> Self {
    return self.init(characters: characters, length: length)
  }


  /**
    - Selector: stringWithContentsOfFile:encoding:error:
  */
  @objc public static func createWithContentsOfFile_Encoding(_ path: String, _ encoding: UInt) -> Self? {
    return try? self.init(contentsOfFile: path, encoding: encoding)
  }


  /**
    - Selector: stringWithContentsOfFile:usedEncoding:error:
  */
  @objc public static func createWithContentsOfFile_UsedEncoding(_ path: String, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self? {
    return try? self.init(contentsOfFile: path, usedEncoding: usedEncoding)
  }


  /**
    - Selector: stringWithContentsOfURL:encoding:error:
  */
  @objc public static func createWithContentsOfURL_Encoding(_ url: URL, _ encoding: UInt) -> Self? {
    return try? self.init(contentsOf: url, encoding: encoding)
  }


  /**
    - Selector: stringWithContentsOfURL:usedEncoding:error:
  */
  @objc public static func createWithContentsOfURL_UsedEncoding(_ url: URL, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self? {
    return try? self.init(contentsOf: url, usedEncoding: usedEncoding)
  }


  /**
    - Selector: stringWithString:
  */
  @objc public static func createWithString(_ string: String) -> Self {
    return self.init(string: string)
  }


  /**
    - Selector: stringWithUTF8String:
  */
  @objc public static func createWithUTF8String(_ utf8String: UnsafePointer<Int8>) -> Self? {
    return self.init(utf8String: utf8String)
  }


  /**
    - Selector: initWithBytes:length:encoding:
  */
  @objc public static func createWithBytes_Length_Encoding(_ bytes: UnsafeRawPointer, _ length: Int, _ encoding: UInt) -> Self? {
    return self.init(bytes: bytes, length: length, encoding: encoding)
  }


  /**
    - Selector: initWithBytesNoCopy:length:encoding:freeWhenDone:
  */
  @objc public static func createWithBytesNoCopy_Length_Encoding_FreeWhenDone(_ bytesNoCopy: UnsafeMutableRawPointer, _ length: Int, _ encoding: UInt, _ freeWhenDone: Bool) -> Self? {
    return self.init(bytesNoCopy: bytesNoCopy, length: length, encoding: encoding, freeWhenDone: freeWhenDone)
  }


  /**
    - Selector: initWithCString:encoding:
  */
  // @objc public static func createWithCString_Encoding(_ cString: UnsafePointer<Int8>, _ encoding: UInt) -> Self? {
  //   return self.init(cString: cString, encoding: encoding)
  // }


  /**
    - Selector: initWithCharacters:length:
  */
  // @objc public static func createWithCharacters_Length(_ characters: UnsafePointer<unichar>, _ length: Int) -> Self {
  //   return self.init(characters: characters, length: length)
  // }


  /**
    - Selector: initWithCharactersNoCopy:length:freeWhenDone:
  */
  @objc public static func createWithCharactersNoCopy_Length_FreeWhenDone(_ charactersNoCopy: UnsafeMutablePointer<unichar>, _ length: Int, _ freeWhenDone: Bool) -> Self {
    return self.init(charactersNoCopy: charactersNoCopy, length: length, freeWhenDone: freeWhenDone)
  }


  /**
    - Selector: initWithContentsOfFile:encoding:error:
  */
  @objc public static func createWithContentsOfFile__Encoding(_ contentsOfFile: String, _ encoding: UInt) -> Self? {
    return try? self.init(contentsOfFile: contentsOfFile, encoding: encoding)
  }


  /**
    - Selector: initWithContentsOfFile:usedEncoding:error:
  */
  @objc public static func createWithContentsOfFile__UsedEncoding(_ contentsOfFile: String, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self? {
    return try? self.init(contentsOfFile: contentsOfFile, usedEncoding: usedEncoding)
  }


  /**
    - Selector: initWithContentsOfURL:encoding:error:
  */
  @objc public static func createWithContentsOf_Encoding(_ contentsOf: URL, _ encoding: UInt) -> Self? {
    return try? self.init(contentsOf: contentsOf, encoding: encoding)
  }


  /**
    - Selector: initWithContentsOfURL:usedEncoding:error:
  */
  @objc public static func createWithContentsOf_UsedEncoding(_ contentsOf: URL, _ usedEncoding: UnsafeMutablePointer<UInt>?) -> Self? {
    return try? self.init(contentsOf: contentsOf, usedEncoding: usedEncoding)
  }


  /**
    - Selector: initWithData:encoding:
  */
  @objc public static func createWithData_Encoding(_ data: Data, _ encoding: UInt) -> Self? {
    return self.init(data: data, encoding: encoding)
  }

}
