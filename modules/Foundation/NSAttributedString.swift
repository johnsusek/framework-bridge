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
    - Selector: NSAttributedString
    - Introduced: 10.0
  */

@objc(NSAttributedString) protocol NSAttributedStringExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: attributedStringWithAttachment:
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) static func createWithAttributedStringWithAttachment(_ attachment: NSTextAttachment) -> NSAttributedString

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
  // jsvalue @objc @available(OSX 10.6, *) func enumerateAttributeWithInRangeWithOptionsWithUsingBlock(_ p0: NSAttributedString.Key, _ in: NSRange, _ options: NSAttributedString.EnumerationOptions, _ using: JSValue)

  /**
    - Selector: enumerateAttributesInRange:options:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func enumerateAttributesInRangeWithOptionsWithUsingBlock(_ in: NSRange, _ options: NSAttributedString.EnumerationOptions, _ using: JSValue)

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

  /**
    - Selector: attributedStringWithAttachment:
    - Introduced: 10.0
  */
  @objc public static func createWithAttributedStringWithAttachment(_ attachment: NSTextAttachment) -> NSAttributedString {
    return self.init(attachment: attachment)
  }

}
