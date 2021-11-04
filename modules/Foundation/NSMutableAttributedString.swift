import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSMutableAttributedString
    - Introduced: 10.0
  */

@objc(NSMutableAttributedString) protocol NSMutableAttributedStringExports: JSExport, NSAttributedStringExports {
  // Static Methods

  /**
    - Selector: readableTypesForPasteboard:
  */
  @objc (readableTypesForPasteboard:) static func readableTypes(`for`: NSPasteboard) -> [NSPasteboard.PasteboardType]

  /**
    - Selector: readingOptionsForType:pasteboard:
  */
  @objc (readingOptionsForType:pasteboard:) static func readingOptions(forType: NSPasteboard.PasteboardType, pasteboard: NSPasteboard) -> NSPasteboard.ReadingOptions

  // Instance Methods

  /**
    - Selector: addAttribute:value:range:
  */
  @objc func addAttribute(_: NSAttributedString.Key, value: Any, range: NSRange)

  /**
    - Selector: addAttributes:range:
  */
  @objc func addAttributes(_: [NSAttributedString.Key: Any], range: NSRange)

  /**
    - Selector: appendAttributedString:
  */
  @objc (appendAttributedString:) func append(_: NSAttributedString)

  /**
    - Selector: applyFontTraits:range:
  */
  @objc func applyFontTraits(_: NSFontTraitMask, range: NSRange)

  /**
    - Selector: beginEditing
  */
  @objc func beginEditing()

  /**
    - Selector: deleteCharactersInRange:
  */
  @objc (deleteCharactersInRange:) func deleteCharacters(in: NSRange)

  /**
    - Selector: endEditing
  */
  @objc func endEditing()

  /**
    - Selector: fixAttachmentAttributeInRange:
  */
  @objc (fixAttachmentAttributeInRange:) func fixAttachmentAttribute(in: NSRange)

  /**
    - Selector: fixAttributesInRange:
    - Introduced: 10.0
  */
  @objc (fixAttributesInRange:) @available(OSX 10.0, *) func fixAttributes(in: NSRange)

  /**
    - Selector: fixFontAttributeInRange:
  */
  @objc (fixFontAttributeInRange:) func fixFontAttribute(in: NSRange)

  /**
    - Selector: fixParagraphStyleAttributeInRange:
  */
  @objc (fixParagraphStyleAttributeInRange:) func fixParagraphStyleAttribute(in: NSRange)

  /**
    - Selector: insertAttributedString:atIndex:
  */
  @objc (insertAttributedString:atIndex:) func insert(_: NSAttributedString, at: Int)

  /**
    - Selector: readFromData:options:documentAttributes:error:
    - Introduced: 10.0
  */
  // throws - @objc (readFromData:options:documentAttributes:error:) @available(OSX 10.0, *) func read(_: Data, _: [NSAttributedString.DocumentReadingOptionKey: Any], _: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool

  /**
    - Selector: readFromURL:options:documentAttributes:error:
    - Introduced: 10.5
  */
  // throws - @objc (readFromURL:options:documentAttributes:error:) @available(OSX 10.5, *) func read(_: URL, _: [NSAttributedString.DocumentReadingOptionKey: Any], _: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool

  /**
    - Selector: removeAttribute:range:
  */
  @objc func removeAttribute(_: NSAttributedString.Key, range: NSRange)

  /**
    - Selector: replaceCharactersInRange:withAttributedString:
  */
  @objc (replaceCharactersInRange:withAttributedString:) func replaceCharacters(in: NSRange, with: NSAttributedString)

  /**
    - Selector: replaceCharactersInRange:withString:
  */
  @objc (replaceCharactersInRange:withString:) func replaceCharacters(in: NSRange, with: String)

  /**
    - Selector: setAlignment:range:
  */
  @objc func setAlignment(_: NSTextAlignment, range: NSRange)

  /**
    - Selector: setAttributedString:
  */
  @objc func setAttributedString(_: NSAttributedString)

  /**
    - Selector: setAttributes:range:
  */
  @objc func setAttributes(_: [NSAttributedString.Key: Any]?, range: NSRange)

  /**
    - Selector: setBaseWritingDirection:range:
  */
  @objc func setBaseWritingDirection(_: NSWritingDirection, range: NSRange)

  /**
    - Selector: subscriptRange:
  */
  @objc func subscriptRange(_: NSRange)

  /**
    - Selector: superscriptRange:
  */
  @objc func superscriptRange(_: NSRange)

  /**
    - Selector: unscriptRange:
  */
  @objc func unscriptRange(_: NSRange)

  /**
    - Selector: updateAttachmentsFromPath:
  */
  @objc (updateAttachmentsFromPath:) func updateAttachments(fromPath: String)

  // Own Instance Properties

  /**
    - Selector: mutableString
  */
  @objc var mutableString: NSMutableString { @objc get }
}

extension NSMutableAttributedString: NSMutableAttributedStringExports {
}
