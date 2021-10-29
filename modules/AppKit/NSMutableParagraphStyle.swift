import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMutableParagraphStyle
    - name: NSMutableParagraphStyle
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSMutableParagraphStyle) protocol NSMutableParagraphStyleExports: JSExport, NSParagraphStyleExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addTabStop
    - name: addTabStop:
    - argLabels: 
    - constructorTokens: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func addTabStop(_: NSTextTab)

  /**
    - jsName: removeTabStop
    - name: removeTabStop:
    - argLabels: 
    - constructorTokens: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func removeTabStop(_: NSTextTab)

  /**
    - jsName: setParagraphStyle
    - name: setParagraphStyle:
    - argLabels: 
    - constructorTokens: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) func setParagraphStyle(_: NSParagraphStyle)

  // Own Instance Properties

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSTextAlignment { @objc get @objc (setAlignment:) set }

  /**
    - jsName: allowsDefaultTighteningForTruncation
    - name: allowsDefaultTighteningForTruncation
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsDefaultTighteningForTruncation: Bool { @objc get @objc (setAllowsDefaultTighteningForTruncation:) set }

  /**
    - jsName: baseWritingDirection
    - name: baseWritingDirection
    - argLabels: 
  */
  @objc var baseWritingDirection: NSWritingDirection { @objc get @objc (setBaseWritingDirection:) set }

  /**
    - jsName: defaultTabInterval
    - name: defaultTabInterval
    - argLabels: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var defaultTabInterval: CGFloat { @objc get @objc (setDefaultTabInterval:) set }

  /**
    - jsName: firstLineHeadIndent
    - name: firstLineHeadIndent
    - argLabels: 
  */
  @objc var firstLineHeadIndent: CGFloat { @objc get @objc (setFirstLineHeadIndent:) set }

  /**
    - jsName: headIndent
    - name: headIndent
    - argLabels: 
  */
  @objc var headIndent: CGFloat { @objc get @objc (setHeadIndent:) set }

  /**
    - jsName: headerLevel
    - name: headerLevel
    - argLabels: 
  */
  @objc var headerLevel: Int { @objc get @objc (setHeaderLevel:) set }

  /**
    - jsName: hyphenationFactor
    - name: hyphenationFactor
    - argLabels: 
  */
  @objc var hyphenationFactor: Float { @objc get @objc (setHyphenationFactor:) set }

  /**
    - jsName: lineBreakMode
    - name: lineBreakMode
    - argLabels: 
  */
  @objc var lineBreakMode: NSLineBreakMode { @objc get @objc (setLineBreakMode:) set }

  /**
    - jsName: lineHeightMultiple
    - name: lineHeightMultiple
    - argLabels: 
  */
  @objc var lineHeightMultiple: CGFloat { @objc get @objc (setLineHeightMultiple:) set }

  /**
    - jsName: lineSpacing
    - name: lineSpacing
    - argLabels: 
  */
  @objc var lineSpacing: CGFloat { @objc get @objc (setLineSpacing:) set }

  /**
    - jsName: maximumLineHeight
    - name: maximumLineHeight
    - argLabels: 
  */
  @objc var maximumLineHeight: CGFloat { @objc get @objc (setMaximumLineHeight:) set }

  /**
    - jsName: minimumLineHeight
    - name: minimumLineHeight
    - argLabels: 
  */
  @objc var minimumLineHeight: CGFloat { @objc get @objc (setMinimumLineHeight:) set }

  /**
    - jsName: paragraphSpacing
    - name: paragraphSpacing
    - argLabels: 
  */
  @objc var paragraphSpacing: CGFloat { @objc get @objc (setParagraphSpacing:) set }

  /**
    - jsName: paragraphSpacingBefore
    - name: paragraphSpacingBefore
    - argLabels: 
  */
  @objc var paragraphSpacingBefore: CGFloat { @objc get @objc (setParagraphSpacingBefore:) set }

  /**
    - jsName: tabStops
    - name: tabStops
    - argLabels: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var tabStops: [NSTextTab]! { @objc get @objc (setTabStops:) set }

  /**
    - jsName: tailIndent
    - name: tailIndent
    - argLabels: 
  */
  @objc var tailIndent: CGFloat { @objc get @objc (setTailIndent:) set }

  /**
    - jsName: textBlocks
    - name: textBlocks
    - argLabels: 
  */
  @objc var textBlocks: [NSTextBlock] { @objc get @objc (setTextBlocks:) set }

  /**
    - jsName: textLists
    - name: textLists
    - argLabels: 
  */
  @objc var textLists: [NSTextList] { @objc get @objc (setTextLists:) set }

  /**
    - jsName: tighteningFactorForTruncation
    - name: tighteningFactorForTruncation
    - argLabels: 
  */
  @objc var tighteningFactorForTruncation: Float { @objc get @objc (setTighteningFactorForTruncation:) set }
}

extension NSMutableParagraphStyle: NSMutableParagraphStyleExports {
}
