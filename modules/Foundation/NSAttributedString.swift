import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSAttributedString
    - name: NSAttributedString
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSAttributedString) protocol NSAttributedStringExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: attributedStringWithAttachment:
    - argLabels: attachment
    - constructorTokens: 
    - available: 10.0
    - unavailable: true
    - renamed: init(attachment:)
    - message: Not available in Swift
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) static func create(attachment: NSTextAttachment) -> NSAttributedString

  // Own Static Properties

  /**
    - jsName: textTypes
    - name: textTypes
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var textTypes: [String] { @objc get }

  /**
    - jsName: textUnfilteredTypes
    - name: textUnfilteredTypes
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var textUnfilteredTypes: [String] { @objc get }

  // Instance Methods

  /**
    - jsName: rtfdFileWrapper
    - name: RTFDFileWrapperFromRange:documentAttributes:
    - argLabels: from, documentAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rtfdFileWrapper(from:documentAttributes:)
  */
  @objc (RTFDFileWrapperFromRange:documentAttributes:) func rtfdFileWrapper(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> FileWrapper?

  /**
    - jsName: rtfd
    - name: RTFDFromRange:documentAttributes:
    - argLabels: from, documentAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rtfd(from:documentAttributes:)
  */
  @objc (RTFDFromRange:documentAttributes:) func rtfd(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - jsName: rtf
    - name: RTFFromRange:documentAttributes:
    - argLabels: from, documentAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rtf(from:documentAttributes:)
  */
  @objc (RTFFromRange:documentAttributes:) func rtf(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - jsName: attribute
    - name: attribute:atIndex:effectiveRange:
    - argLabels: _, at, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attribute(_:at:effectiveRange:)
  */
  @objc (attribute:atIndex:effectiveRange:) func attribute(_: NSAttributedString.Key, at: Int, effectiveRange: NSRangePointer?) -> Any?

  /**
    - jsName: attribute
    - name: attribute:atIndex:longestEffectiveRange:inRange:
    - argLabels: _, at, longestEffectiveRange, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attribute(_:at:longestEffectiveRange:in:)
  */
  @objc (attribute:atIndex:longestEffectiveRange:inRange:) func attribute(_: NSAttributedString.Key, at: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> Any?

  /**
    - jsName: attributedSubstring
    - name: attributedSubstringFromRange:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attributedSubstring(from:)
  */
  @objc (attributedSubstringFromRange:) func attributedSubstring(from: NSRange) -> NSAttributedString

  /**
    - jsName: attributes
    - name: attributesAtIndex:effectiveRange:
    - argLabels: at, effectiveRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attributes(at:effectiveRange:)
  */
  @objc (attributesAtIndex:effectiveRange:) func attributes(at: Int, effectiveRange: NSRangePointer?) -> [NSAttributedString.Key: Any]

  /**
    - jsName: attributes
    - name: attributesAtIndex:longestEffectiveRange:inRange:
    - argLabels: at, longestEffectiveRange, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attributes(at:longestEffectiveRange:in:)
  */
  @objc (attributesAtIndex:longestEffectiveRange:inRange:) func attributes(at: Int, longestEffectiveRange: NSRangePointer?, in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - jsName: boundingRect
    - name: boundingRectWithSize:options:
    - argLabels: with, options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: boundingRect(with:options:)
  */
  @objc (boundingRectWithSize:options:) func boundingRect(with: CGSize, options: NSString.DrawingOptions) -> CGRect

  /**
    - jsName: boundingRect
    - name: boundingRectWithSize:options:context:
    - argLabels: with, options, context
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: boundingRect(with:options:context:)
    - Introduced: 10.11
  */
  @objc (boundingRectWithSize:options:context:) @available(OSX 10.11, *) func boundingRect(with: CGSize, options: NSString.DrawingOptions, context: NSStringDrawingContext?) -> CGRect

  /**
    - jsName: containsAttachments
    - name: containsAttachmentsInRange:
    - argLabels: in
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: containsAttachments(in:)
    - Introduced: 10.11
  */
  @objc (containsAttachmentsInRange:) @available(OSX 10.11, *) func containsAttachments(in: NSRange) -> Bool

  /**
    - jsName: dataFromRange
    - name: dataFromRange:documentAttributes:error:
    - argLabels: documentAttributes, error
    - constructorTokens: 
    - Introduced: 10.0
  */
  // throws - @objc @available(OSX 10.0, *) func dataFromRange(documentAttributes: NSRange, error: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - jsName: docFormat
    - name: docFormatFromRange:documentAttributes:
    - argLabels: from, documentAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: docFormat(from:documentAttributes:)
  */
  @objc (docFormatFromRange:documentAttributes:) func docFormat(from: NSRange, documentAttributes: [NSAttributedString.DocumentAttributeKey: Any]) -> Data?

  /**
    - jsName: doubleClick
    - name: doubleClickAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: doubleClick(at:)
  */
  @objc (doubleClickAtIndex:) func doubleClick(at: Int) -> NSRange

  /**
    - jsName: draw
    - name: drawAtPoint:
    - argLabels: at
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: draw(at:)
    - Introduced: 10.0
  */
  @objc (drawAtPoint:) @available(OSX 10.0, *) func draw(at: CGPoint)

  /**
    - jsName: draw
    - name: drawInRect:
    - argLabels: in
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: draw(in:)
    - Introduced: 10.0
  */
  @objc (drawInRect:) @available(OSX 10.0, *) func draw(in: CGRect)

  /**
    - jsName: draw
    - name: drawWithRect:options:
    - argLabels: with, options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(with:options:)
  */
  @objc (drawWithRect:options:) func draw(with: CGRect, options: NSString.DrawingOptions)

  /**
    - jsName: draw
    - name: drawWithRect:options:context:
    - argLabels: with, options, context
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: draw(with:options:context:)
    - Introduced: 10.11
  */
  @objc (drawWithRect:options:context:) @available(OSX 10.11, *) func draw(with: CGRect, options: NSString.DrawingOptions, context: NSStringDrawingContext?)

  /**
    - jsName: enumerateAttribute
    - name: enumerateAttribute:inRange:options:usingBlock:
    - argLabels: _, in, options, using
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: enumerateAttribute(_:in:options:using:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (enumerateAttribute:inRange:options:usingBlock:) @available(OSX 10.6, *) func enumerateAttribute(_: NSAttributedString.Key, in: NSRange, options: NSAttributedString.EnumerationOptions, using: JSValue)

  /**
    - jsName: enumerateAttributes
    - name: enumerateAttributesInRange:options:usingBlock:
    - argLabels: in, options, using
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: enumerateAttributes(in:options:using:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (enumerateAttributesInRange:options:usingBlock:) @available(OSX 10.6, *) func enumerateAttributes(in: NSRange, options: NSAttributedString.EnumerationOptions, using: JSValue)

  /**
    - jsName: fileWrapperFromRange
    - name: fileWrapperFromRange:documentAttributes:error:
    - argLabels: documentAttributes, error
    - constructorTokens: 
    - Introduced: 10.0
  */
  // throws - @objc @available(OSX 10.0, *) func fileWrapperFromRange(documentAttributes: NSRange, error: [NSAttributedString.DocumentAttributeKey: Any]) -> FileWrapper?

  /**
    - jsName: fontAttributes
    - name: fontAttributesInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fontAttributes(in:)
  */
  @objc (fontAttributesInRange:) func fontAttributes(in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - jsName: createWithDocFormat
    - name: initWithDocFormat:documentAttributes:
    - argLabels: documentAttributes
    - constructorTokens: docFormat, documentAttributes
  */
  @objc static func createWithDocFormat(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithHTML
    - name: initWithHTML:baseURL:documentAttributes:
    - argLabels: baseURL, documentAttributes
    - constructorTokens: html, baseURL, documentAttributes
  */
  @objc static func createWithHTML(_: Data, baseURL: URL, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithHTML
    - name: initWithHTML:documentAttributes:
    - argLabels: documentAttributes
    - constructorTokens: html, documentAttributes
  */
  @objc static func createWithHTML(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithHTML
    - name: initWithHTML:options:documentAttributes:
    - argLabels: options, documentAttributes
    - constructorTokens: html, options, documentAttributes
  */
  @objc static func createWithHTML(_: Data, options: [NSAttributedString.DocumentReadingOptionKey: Any], documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithRTF
    - name: initWithRTF:documentAttributes:
    - argLabels: documentAttributes
    - constructorTokens: rtf, documentAttributes
  */
  @objc static func createWithRTF(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithRTFD
    - name: initWithRTFD:documentAttributes:
    - argLabels: documentAttributes
    - constructorTokens: rtfd, documentAttributes
  */
  @objc static func createWithRTFD(_: Data, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithRTFDFileWrapper
    - name: initWithRTFDFileWrapper:documentAttributes:
    - argLabels: documentAttributes
    - constructorTokens: rtfdFileWrapper, documentAttributes
  */
  @objc static func createWithRTFDFileWrapper(_: FileWrapper, documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithURL
    - name: initWithURL:options:documentAttributes:error:
    - argLabels: options, documentAttributes, error
    - constructorTokens: url, options, documentAttributes
    - Introduced: 10.4
  */
  @objc @available(OSX 10.4, *) static func createWithURL(url: URL, options: [NSAttributedString.DocumentReadingOptionKey: Any], documentAttributes: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: isEqual
    - name: isEqualToAttributedString:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isEqual(to:)
  */
  @objc (isEqualToAttributedString:) func isEqual(to: NSAttributedString) -> Bool

  /**
    - jsName: itemNumber
    - name: itemNumberInTextList:atIndex:
    - argLabels: in, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: itemNumber(in:at:)
  */
  @objc (itemNumberInTextList:atIndex:) func itemNumber(in: NSTextList, at: Int) -> Int

  /**
    - jsName: lineBreak
    - name: lineBreakBeforeIndex:withinRange:
    - argLabels: before, within
    - constructorTokens: 
    - obsoleted: 3
    - renamed: lineBreak(before:within:)
  */
  @objc (lineBreakBeforeIndex:withinRange:) func lineBreak(before: Int, within: NSRange) -> Int

  /**
    - jsName: lineBreakByHyphenating
    - name: lineBreakByHyphenatingBeforeIndex:withinRange:
    - argLabels: before, within
    - constructorTokens: 
    - obsoleted: 3
    - renamed: lineBreakByHyphenating(before:within:)
  */
  @objc (lineBreakByHyphenatingBeforeIndex:withinRange:) func lineBreakByHyphenating(before: Int, within: NSRange) -> Int

  /**
    - jsName: nextWord
    - name: nextWordFromIndex:forward:
    - argLabels: from, forward
    - constructorTokens: 
    - obsoleted: 3
    - renamed: nextWord(from:forward:)
  */
  @objc (nextWordFromIndex:forward:) func nextWord(from: Int, forward: Bool) -> Int

  /**
    - jsName: range
    - name: rangeOfTextBlock:atIndex:
    - argLabels: of, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: range(of:at:)
  */
  @objc (rangeOfTextBlock:atIndex:) func range(of: NSTextBlock, at: Int) -> NSRange

  /**
    - jsName: range
    - name: rangeOfTextList:atIndex:
    - argLabels: of, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: range(of:at:)
  */
  @objc (rangeOfTextList:atIndex:) func range(of: NSTextList, at: Int) -> NSRange

  /**
    - jsName: range
    - name: rangeOfTextTable:atIndex:
    - argLabels: of, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: range(of:at:)
  */
  @objc (rangeOfTextTable:atIndex:) func range(of: NSTextTable, at: Int) -> NSRange

  /**
    - jsName: rulerAttributes
    - name: rulerAttributesInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerAttributes(in:)
  */
  @objc (rulerAttributesInRange:) func rulerAttributes(in: NSRange) -> [NSAttributedString.Key: Any]

  /**
    - jsName: size
    - name: size
    - argLabels: 
    - constructorTokens: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func size() -> CGSize

  // Own Instance Properties

  /**
    - jsName: containsAttachments
    - name: containsAttachments
    - argLabels: 
  */
  @objc var containsAttachments: Bool { @objc get }

  /**
    - jsName: length
    - name: length
    - argLabels: 
  */
  @objc var length: Int { @objc get }

  /**
    - jsName: string
    - name: string
    - argLabels: 
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
