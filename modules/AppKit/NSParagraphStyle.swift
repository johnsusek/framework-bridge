import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSParagraphStyle
    - name: NSParagraphStyle
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSParagraphStyle) protocol NSParagraphStyleExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: defaultWritingDirection
    - name: defaultWritingDirectionForLanguage:
    - argLabels: forLanguage
    - constructorTokens: 
    - obsoleted: 3
    - renamed: defaultWritingDirection(forLanguage:)
  */
  @objc (defaultWritingDirectionForLanguage:) static func defaultWritingDirection(forLanguage: String?) -> NSWritingDirection

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultParagraphStyle
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: NSParagraphStyle { @objc (defaultParagraphStyle) get }

  // Own Instance Properties

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSTextAlignment { @objc get }

  /**
    - jsName: allowsDefaultTighteningForTruncation
    - name: allowsDefaultTighteningForTruncation
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsDefaultTighteningForTruncation: Bool { @objc get }

  /**
    - jsName: baseWritingDirection
    - name: baseWritingDirection
    - argLabels: 
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get }

  /**
    - jsName: defaultTabInterval
    - name: defaultTabInterval
    - argLabels: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var defaultTabInterval: CGFloat { @objc get }

  /**
    - jsName: firstLineHeadIndent
    - name: firstLineHeadIndent
    - argLabels: 
  */
  @objc var firstLineHeadIndent: CGFloat { @objc get }

  /**
    - jsName: headIndent
    - name: headIndent
    - argLabels: 
  */
  @objc var headIndent: CGFloat { @objc get }

  /**
    - jsName: headerLevel
    - name: headerLevel
    - argLabels: 
  */
  @objc var headerLevel: Int { @objc get }

  /**
    - jsName: hyphenationFactor
    - name: hyphenationFactor
    - argLabels: 
  */
  @objc var hyphenationFactor: Float { @objc get }

  /**
    - jsName: lineBreakMode
    - name: lineBreakMode
    - argLabels: 
  */
  @objc var lineBreakMode: NSLineBreakMode { @objc get }

  /**
    - jsName: lineHeightMultiple
    - name: lineHeightMultiple
    - argLabels: 
  */
  @objc var lineHeightMultiple: CGFloat { @objc get }

  /**
    - jsName: lineSpacing
    - name: lineSpacing
    - argLabels: 
  */
  @objc var lineSpacing: CGFloat { @objc get }

  /**
    - jsName: maximumLineHeight
    - name: maximumLineHeight
    - argLabels: 
  */
  @objc var maximumLineHeight: CGFloat { @objc get }

  /**
    - jsName: minimumLineHeight
    - name: minimumLineHeight
    - argLabels: 
  */
  @objc var minimumLineHeight: CGFloat { @objc get }

  /**
    - jsName: paragraphSpacing
    - name: paragraphSpacing
    - argLabels: 
  */
  @objc var paragraphSpacing: CGFloat { @objc get }

  /**
    - jsName: paragraphSpacingBefore
    - name: paragraphSpacingBefore
    - argLabels: 
  */
  @objc var paragraphSpacingBefore: CGFloat { @objc get }

  /**
    - jsName: tabStops
    - name: tabStops
    - argLabels: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var tabStops: [NSTextTab] { @objc get }

  /**
    - jsName: tailIndent
    - name: tailIndent
    - argLabels: 
  */
  @objc var tailIndent: CGFloat { @objc get }

  /**
    - jsName: textBlocks
    - name: textBlocks
    - argLabels: 
  */
  @objc var textBlocks: [NSTextBlock] { @objc get }

  /**
    - jsName: textLists
    - name: textLists
    - argLabels: 
  */
  @objc var textLists: [NSTextList] { @objc get }

  /**
    - jsName: tighteningFactorForTruncation
    - name: tighteningFactorForTruncation
    - argLabels: 
  */
  @objc var tighteningFactorForTruncation: Float { @objc get }
}

extension NSParagraphStyle: NSParagraphStyleExports {
}
