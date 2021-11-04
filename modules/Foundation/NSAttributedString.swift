import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSAttributedString
    - Introduced: 10.0
  */

@objc(NSAttributedString) protocol NSAttributedStringExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: attributedStringWithAttachment:
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) static func create(attachment: NSTextAttachment) -> NSAttributedString

  // Own Static Properties

  /**
    - Selector: textTypes
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var textTypes: [String] { @objc get }

  /**
    - Selector: textUnfilteredTypes
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var textUnfilteredTypes: [String] { @objc get }

  // Instance Methods

  /**
    - Selector: RTFDFileWrapperFromRange:documentAttributes:
  */
  @objc (RTFDFileWrapperFromRange:documentAttributes:) func rtfdFileWrapper(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> FileWrapper?

  /**
    - Selector: RTFDFromRange:documentAttributes:
  */
  @objc (RTFDFromRange:documentAttributes:) func rtfd(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - Selector: RTFFromRange:documentAttributes:
  */
  @objc (RTFFromRange:documentAttributes:) func rtf(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - Selector: attribute:atIndex:effectiveRange:
  */
  @objc (attribute:atIndex:effectiveRange:) func attribute(_: NSAttributedString.Key, at: Int, effectiveRange: NSRangePointer?) -> Any?

  /**
    - Selector: attribute:atIndex:longestEffectiveRange:inRange:
  */
  @objc (attribute:atIndex:longestEffectiveRange:inRange:) func attribute(_: NSAttributedString.Key, at: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> Any?

  /**
    - Selector: attributedSubstringFromRange:
  */
  @objc (attributedSubstringFromRange:) func attributedSubstring(from: NSRange) -> NSAttributedString

  /**
    - Selector: attributesAtIndex:effectiveRange:
  */
  @objc (attributesAtIndex:effectiveRange:) func attributes(at: Int, effectiveRange: NSRangePointer?) -> [NSAttributedString.Key: Any]

  /**
    - Selector: attributesAtIndex:longestEffectiveRange:inRange:
  */
  @objc (attributesAtIndex:longestEffectiveRange:inRange:) func attributes(at: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - Selector: boundingRectWithSize:options:
  */
  @objc (boundingRectWithSize:options:) func boundingRect(with: CGSize, options: NSString.DrawingOptions) -> CGRect

  /**
    - Selector: boundingRectWithSize:options:context:
    - Introduced: 10.11
  */
  @objc (boundingRectWithSize:options:context:) @available(OSX 10.11, *) func boundingRect(with: CGSize, options: NSString.DrawingOptions, context: NSStringDrawingContext?) -> CGRect

  /**
    - Selector: containsAttachmentsInRange:
    - Introduced: 10.11
  */
  @objc (containsAttachmentsInRange:) @available(OSX 10.11, *) func containsAttachments(in: NSRange) -> Bool

  /**
    - Selector: dataFromRange:documentAttributes:error:
    - Introduced: 10.0
  */
  // throws - @objc @available(OSX 10.0, *) func dataFromRange(documentAttributes: NSRange, error: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - Selector: docFormatFromRange:documentAttributes:
  */
  @objc (docFormatFromRange:documentAttributes:) func docFormat(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - Selector: doubleClickAtIndex:
  */
  @objc (doubleClickAtIndex:) func doubleClick(at: Int) -> NSRange

  /**
    - Selector: drawAtPoint:
    - Introduced: 10.0
  */
  @objc (drawAtPoint:) @available(OSX 10.0, *) func draw(at: CGPoint)

  /**
    - Selector: drawInRect:
    - Introduced: 10.0
  */
  @objc (drawInRect:) @available(OSX 10.0, *) func draw(in: CGRect)

  /**
    - Selector: drawWithRect:options:
  */
  @objc (drawWithRect:options:) func draw(with: CGRect, options: NSString.DrawingOptions)

  /**
    - Selector: drawWithRect:options:context:
    - Introduced: 10.11
  */
  @objc (drawWithRect:options:context:) @available(OSX 10.11, *) func draw(with: CGRect, options: NSString.DrawingOptions, context: NSStringDrawingContext?)

  /**
    - Selector: enumerateAttribute:inRange:options:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerateAttribute(_: NSAttributedString.Key, in: NSRange, options: NSAttributedString.EnumerationOptions, using: JSValue)

  /**
    - Selector: enumerateAttributesInRange:options:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerateAttributes(in: NSRange, options: NSAttributedString.EnumerationOptions, using: JSValue)

  /**
    - Selector: fileWrapperFromRange:documentAttributes:error:
    - Introduced: 10.0
  */
  // throws - @objc @available(OSX 10.0, *) func fileWrapperFromRange(documentAttributes: NSRange, error: [NSAttributedString.DocumentAttributeKey: Any]) -> FileWrapper?

  /**
    - Selector: fontAttributesInRange:
  */
  @objc (fontAttributesInRange:) func fontAttributes(in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - Selector: initWithDocFormat:documentAttributes:
  */
  @objc static func createWithDocFormat(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithHTML:baseURL:documentAttributes:
  */
  @objc static func createWithHTML(_: Data, baseURL: URL, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithHTML:documentAttributes:
  */
  @objc static func createWithHTML(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithHTML:options:documentAttributes:
  */
  @objc static func createWithHTML(_: Data, options: [NSAttributedString.DocumentReadingOptionKey: Any], documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithRTF:documentAttributes:
  */
  @objc static func createWithRTF(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithRTFD:documentAttributes:
  */
  @objc static func createWithRTFD(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithRTFDFileWrapper:documentAttributes:
  */
  @objc static func createWithRTFDFileWrapper(_: FileWrapper, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithURL:options:documentAttributes:error:
    - Introduced: 10.4
  */
  @objc @available(OSX 10.4, *) static func createWithURL(url: URL, options: [NSAttributedString.DocumentReadingOptionKey: Any], documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: isEqualToAttributedString:
  */
  @objc (isEqualToAttributedString:) func isEqual(to: NSAttributedString) -> Bool

  /**
    - Selector: itemNumberInTextList:atIndex:
  */
  @objc (itemNumberInTextList:atIndex:) func itemNumber(in: NSTextList, at: Int) -> Int

  /**
    - Selector: lineBreakBeforeIndex:withinRange:
  */
  @objc (lineBreakBeforeIndex:withinRange:) func lineBreak(before: Int, within: NSRange) -> Int

  /**
    - Selector: lineBreakByHyphenatingBeforeIndex:withinRange:
  */
  @objc (lineBreakByHyphenatingBeforeIndex:withinRange:) func lineBreakByHyphenating(before: Int, within: NSRange) -> Int

  /**
    - Selector: nextWordFromIndex:forward:
  */
  @objc (nextWordFromIndex:forward:) func nextWord(from: Int, forward: Bool) -> Int

  /**
    - Selector: rangeOfTextBlock:atIndex:
  */
  @objc (rangeOfTextBlock:atIndex:) func range(of: NSTextBlock, at: Int) -> NSRange

  /**
    - Selector: rangeOfTextList:atIndex:
  */
  @objc (rangeOfTextList:atIndex:) func range(of: NSTextList, at: Int) -> NSRange

  /**
    - Selector: rangeOfTextTable:atIndex:
  */
  @objc (rangeOfTextTable:atIndex:) func range(of: NSTextTable, at: Int) -> NSRange

  /**
    - Selector: rulerAttributesInRange:
  */
  @objc (rulerAttributesInRange:) func rulerAttributes(in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - Selector: size
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func size() -> CGSize

  // Own Instance Properties

  /**
    - Selector: containsAttachments
  */
  @objc var containsAttachments: Bool { @objc get }

  /**
    - Selector: length
  */
  @objc var length: Int { @objc get }

  /**
    - Selector: string
  */
  @objc var string: String { @objc get }
}

extension NSAttributedString: NSAttributedStringExports {
  @objc public static func create(attachment: NSTextAttachment) -> NSAttributedString {
    return self.init(attachment: attachment)
  }

  @objc public static func createWithDocFormat(_ docFormat: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(docFormat: docFormat, documentAttributes: documentAttributes)
  }

  @objc public static func createWithHTML(_ html: Data, baseURL: URL, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(html: html, baseURL: baseURL, documentAttributes: documentAttributes)
  }

  @objc public static func createWithHTML(_ html: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(html: html, documentAttributes: documentAttributes)
  }

  @objc public static func createWithHTML(_ html: Data, options: [NSAttributedString.DocumentReadingOptionKey: Any], documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(html: html, options: options, documentAttributes: documentAttributes)
  }

  @objc public static func createWithRTF(_ rtf: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(rtf: rtf, documentAttributes: documentAttributes)
  }

  @objc public static func createWithRTFD(_ rtfd: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(rtfd: rtfd, documentAttributes: documentAttributes)
  }

  @objc public static func createWithRTFDFileWrapper(_ rtfdFileWrapper: FileWrapper, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(rtfdFileWrapper: rtfdFileWrapper, documentAttributes: documentAttributes)
  }

  @objc public static func createWithURL(url: URL, options: [NSAttributedString.DocumentReadingOptionKey: Any], documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return try? self.init(url: url, options: options, documentAttributes: documentAttributes)
  }

}
