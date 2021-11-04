import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSParagraphStyle
    - Introduced: 10.0
  */

@objc(NSParagraphStyle) protocol NSParagraphStyleExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: defaultWritingDirectionForLanguage:
  */
  @objc (defaultWritingDirectionForLanguage:) static func defaultWritingDirection(forLanguage: String?) -> NSWritingDirection

  // Own Static Properties

  /**
    - Selector: defaultParagraphStyle
  */
  @objc static var `default`: NSParagraphStyle { @objc (defaultParagraphStyle) get }

  // Own Instance Properties

  /**
    - Selector: alignment
  */
  @objc var alignment: NSTextAlignment { @objc get }

  /**
    - Selector: allowsDefaultTighteningForTruncation
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsDefaultTighteningForTruncation: Bool { @objc get }

  /**
    - Selector: baseWritingDirection
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get }

  /**
    - Selector: defaultTabInterval
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var defaultTabInterval: CGFloat { @objc get }

  /**
    - Selector: firstLineHeadIndent
  */
  @objc var firstLineHeadIndent: CGFloat { @objc get }

  /**
    - Selector: headIndent
  */
  @objc var headIndent: CGFloat { @objc get }

  /**
    - Selector: headerLevel
  */
  @objc var headerLevel: Int { @objc get }

  /**
    - Selector: hyphenationFactor
  */
  @objc var hyphenationFactor: Float { @objc get }

  /**
    - Selector: lineBreakMode
  */
  @objc var lineBreakMode: NSLineBreakMode { @objc get }

  /**
    - Selector: lineHeightMultiple
  */
  @objc var lineHeightMultiple: CGFloat { @objc get }

  /**
    - Selector: lineSpacing
  */
  @objc var lineSpacing: CGFloat { @objc get }

  /**
    - Selector: maximumLineHeight
  */
  @objc var maximumLineHeight: CGFloat { @objc get }

  /**
    - Selector: minimumLineHeight
  */
  @objc var minimumLineHeight: CGFloat { @objc get }

  /**
    - Selector: paragraphSpacing
  */
  @objc var paragraphSpacing: CGFloat { @objc get }

  /**
    - Selector: paragraphSpacingBefore
  */
  @objc var paragraphSpacingBefore: CGFloat { @objc get }

  /**
    - Selector: tabStops
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var tabStops: [NSTextTab] { @objc get }

  /**
    - Selector: tailIndent
  */
  @objc var tailIndent: CGFloat { @objc get }

  /**
    - Selector: textBlocks
  */
  @objc var textBlocks: [NSTextBlock] { @objc get }

  /**
    - Selector: textLists
  */
  @objc var textLists: [NSTextList] { @objc get }

  /**
    - Selector: tighteningFactorForTruncation
  */
  @objc var tighteningFactorForTruncation: Float { @objc get }
}

extension NSParagraphStyle: NSParagraphStyleExports {
}
