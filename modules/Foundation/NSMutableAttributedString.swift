import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSMutableAttributedString
    - name: NSMutableAttributedString
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSMutableAttributedString) protocol NSMutableAttributedStringExports: JSExport, NSAttributedStringExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addAttribute
    - name: addAttribute:value:range:
    - argLabels: value, range
    - constructorTokens: 
  */
  @objc func addAttribute(_: NSAttributedString.Key, value: Any, range: NSRange)

  /**
    - jsName: addAttributes
    - name: addAttributes:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func addAttributes(_: [NSAttributedString.Key: Any], range: NSRange)

  /**
    - jsName: append
    - name: appendAttributedString:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: append(_:)
  */
  @objc (appendAttributedString:) func append(_: NSAttributedString)

  /**
    - jsName: applyFontTraits
    - name: applyFontTraits:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func applyFontTraits(_: NSFontTraitMask, range: NSRange)

  /**
    - jsName: beginEditing
    - name: beginEditing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func beginEditing()

  /**
    - jsName: deleteCharacters
    - name: deleteCharactersInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: deleteCharacters(in:)
  */
  @objc (deleteCharactersInRange:) func deleteCharacters(in: NSRange)

  /**
    - jsName: endEditing
    - name: endEditing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func endEditing()

  /**
    - jsName: fixAttachmentAttribute
    - name: fixAttachmentAttributeInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fixAttachmentAttribute(in:)
  */
  @objc (fixAttachmentAttributeInRange:) func fixAttachmentAttribute(in: NSRange)

  /**
    - jsName: fixAttributes
    - name: fixAttributesInRange:
    - argLabels: in
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: fixAttributes(in:)
    - Introduced: 10.0
  */
  @objc (fixAttributesInRange:) @available(OSX 10.0, *) func fixAttributes(in: NSRange)

  /**
    - jsName: fixFontAttribute
    - name: fixFontAttributeInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fixFontAttribute(in:)
  */
  @objc (fixFontAttributeInRange:) func fixFontAttribute(in: NSRange)

  /**
    - jsName: fixParagraphStyleAttribute
    - name: fixParagraphStyleAttributeInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fixParagraphStyleAttribute(in:)
  */
  @objc (fixParagraphStyleAttributeInRange:) func fixParagraphStyleAttribute(in: NSRange)

  /**
    - jsName: insert
    - name: insertAttributedString:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insert(_:at:)
  */
  @objc (insertAttributedString:atIndex:) func insert(_: NSAttributedString, at: Int)

  /**
    - jsName: read
    - name: readFromData:options:documentAttributes:error:
    - argLabels: from, options, documentAttributes, error
    - constructorTokens: 
    - available: 10.0
    - obsoleted: 3
    - renamed: read(from:options:documentAttributes:error:)
    - Introduced: 10.0
  */
  // throws - @objc (readFromData:options:documentAttributes:error:) @available(OSX 10.0, *) func read(_: Data, _: [NSAttributedString.DocumentReadingOptionKey: Any], _: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool

  /**
    - jsName: read
    - name: readFromURL:options:documentAttributes:error:
    - argLabels: from, options, documentAttributes, error
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: read(from:options:documentAttributes:error:)
    - Introduced: 10.5
  */
  // throws - @objc (readFromURL:options:documentAttributes:error:) @available(OSX 10.5, *) func read(_: URL, _: [NSAttributedString.DocumentReadingOptionKey: Any], _: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool

  /**
    - jsName: removeAttribute
    - name: removeAttribute:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func removeAttribute(_: NSAttributedString.Key, range: NSRange)

  /**
    - jsName: replaceCharacters
    - name: replaceCharactersInRange:withAttributedString:
    - argLabels: in, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceCharacters(in:with:)
  */
  @objc (replaceCharactersInRange:withAttributedString:) func replaceCharacters(in: NSRange, with: NSAttributedString)

  /**
    - jsName: replaceCharacters
    - name: replaceCharactersInRange:withString:
    - argLabels: in, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceCharacters(in:with:)
  */
  @objc (replaceCharactersInRange:withString:) func replaceCharacters(in: NSRange, with: String)

  /**
    - jsName: setAlignment
    - name: setAlignment:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func setAlignment(_: NSTextAlignment, range: NSRange)

  /**
    - jsName: setAttributedString
    - name: setAttributedString:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setAttributedString(_: NSAttributedString)

  /**
    - jsName: setAttributes
    - name: setAttributes:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func setAttributes(_: [NSAttributedString.Key: Any]?, range: NSRange)

  /**
    - jsName: setBaseWritingDirection
    - name: setBaseWritingDirection:range:
    - argLabels: range
    - constructorTokens: 
  */
  @objc func setBaseWritingDirection(_: NSWritingDirection, range: NSRange)

  /**
    - jsName: subscriptRange
    - name: subscriptRange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func subscriptRange(_: NSRange)

  /**
    - jsName: superscriptRange
    - name: superscriptRange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func superscriptRange(_: NSRange)

  /**
    - jsName: unscriptRange
    - name: unscriptRange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unscriptRange(_: NSRange)

  /**
    - jsName: updateAttachments
    - name: updateAttachmentsFromPath:
    - argLabels: fromPath
    - constructorTokens: 
    - obsoleted: 3
    - renamed: updateAttachments(fromPath:)
  */
  @objc (updateAttachmentsFromPath:) func updateAttachments(fromPath: String)

  // Own Instance Properties

  /**
    - jsName: mutableString
    - name: mutableString
    - argLabels: 
  */
  @objc var mutableString: NSMutableString { @objc get }
}

extension NSMutableAttributedString: NSMutableAttributedStringExports {
}
