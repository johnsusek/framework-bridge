import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSMutableParagraphStyle
    - Introduced: 10.0
  */

@objc(NSMutableParagraphStyle) protocol NSMutableParagraphStyleExports: JSExport, NSParagraphStyleExports {
  // Static Methods

  /**
    - Selector: defaultWritingDirectionForLanguage:
  */
  @objc (defaultWritingDirectionForLanguage:) static func defaultWritingDirection(forLanguage: String?) -> NSWritingDirection

  // Instance Methods

  /**
    - Selector: addTabStop:
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func addTabStop(_: NSTextTab)

  /**
    - Selector: removeTabStop:
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func removeTabStop(_: NSTextTab)

  /**
    - Selector: setParagraphStyle:
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func setParagraphStyle(_: NSParagraphStyle)

  // Own Instance Properties

  /**
    - Selector: alignment
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - Selector: allowsDefaultTighteningForTruncation
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsDefaultTighteningForTruncation: Bool { @objc get @objc (setAllowsDefaultTighteningForTruncation:) set }

  /**
    - Selector: baseWritingDirection
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - Selector: defaultTabInterval
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var defaultTabInterval: CGFloat { @objc get @objc (setDefaultTabInterval:) set }

  /**
    - Selector: firstLineHeadIndent
  */
  @objc var firstLineHeadIndent: CGFloat { @objc get @objc (setFirstLineHeadIndent:) set }

  /**
    - Selector: headIndent
  */
  @objc var headIndent: CGFloat { @objc get @objc (setHeadIndent:) set }

  /**
    - Selector: headerLevel
  */
  @objc var headerLevel: Int { @objc get @objc (setHeaderLevel:) set }

  /**
    - Selector: hyphenationFactor
  */
  @objc var hyphenationFactor: Float { @objc get @objc (setHyphenationFactor:) set }

  /**
    - Selector: lineBreakMode
  */
  @objc var lineBreakMode: NSLineBreakMode { @objc get @objc (setLineBreakMode:) set }

  /**
    - Selector: lineHeightMultiple
  */
  @objc var lineHeightMultiple: CGFloat { @objc get @objc (setLineHeightMultiple:) set }

  /**
    - Selector: lineSpacing
  */
  @objc var lineSpacing: CGFloat { @objc get @objc (setLineSpacing:) set }

  /**
    - Selector: maximumLineHeight
  */
  @objc var maximumLineHeight: CGFloat { @objc get @objc (setMaximumLineHeight:) set }

  /**
    - Selector: minimumLineHeight
  */
  @objc var minimumLineHeight: CGFloat { @objc get @objc (setMinimumLineHeight:) set }

  /**
    - Selector: paragraphSpacing
  */
  @objc var paragraphSpacing: CGFloat { @objc get @objc (setParagraphSpacing:) set }

  /**
    - Selector: paragraphSpacingBefore
  */
  @objc var paragraphSpacingBefore: CGFloat { @objc get @objc (setParagraphSpacingBefore:) set }

  /**
    - Selector: tabStops
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var tabStops: [NSTextTab]! { @objc get @objc (setTabStops:) set }

  /**
    - Selector: tailIndent
  */
  @objc var tailIndent: CGFloat { @objc get @objc (setTailIndent:) set }

  /**
    - Selector: textBlocks
  */
  @objc var textBlocks: [NSTextBlock] { @objc get @objc (setTextBlocks:) set }

  /**
    - Selector: textLists
  */
  @objc var textLists: [NSTextList] { @objc get @objc (setTextLists:) set }

  /**
    - Selector: tighteningFactorForTruncation
  */
  @objc var tighteningFactorForTruncation: Float { @objc get @objc (setTighteningFactorForTruncation:) set }
}

extension NSMutableParagraphStyle: NSMutableParagraphStyleExports {
}
