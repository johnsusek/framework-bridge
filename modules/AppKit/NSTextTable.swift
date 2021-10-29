import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextTable
    - name: NSTextTable
    - argLabels: 
  */

@objc(NSTextTable) protocol NSTextTableExports: JSExport, NSTextBlockExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: boundsRect
    - name: boundsRectForBlock:contentRect:inRect:textContainer:characterRange:
    - argLabels: for, contentRect, in, textContainer, characterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: boundsRect(for:contentRect:in:textContainer:characterRange:)
  */
  @objc (boundsRectForBlock:contentRect:inRect:textContainer:characterRange:) func boundsRect(`for`: NSTextTableBlock, contentRect: CGRect, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  /**
    - jsName: drawBackground
    - name: drawBackgroundForBlock:withFrame:inView:characterRange:layoutManager:
    - argLabels: for, withFrame, in, characterRange, layoutManager
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBackground(for:withFrame:in:characterRange:layoutManager:)
  */
  @objc (drawBackgroundForBlock:withFrame:inView:characterRange:layoutManager:) func drawBackground(`for`: NSTextTableBlock, withFrame: CGRect, in: NSView, characterRange: NSRange, layoutManager: NSLayoutManager)

  /**
    - jsName: rect
    - name: rectForBlock:layoutAtPoint:inRect:textContainer:characterRange:
    - argLabels: for, layoutAt, in, textContainer, characterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rect(for:layoutAt:in:textContainer:characterRange:)
  */
  @objc (rectForBlock:layoutAtPoint:inRect:textContainer:characterRange:) func rect(`for`: NSTextTableBlock, layoutAt: CGPoint, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  // Own Instance Properties

  /**
    - jsName: collapsesBorders
    - name: collapsesBorders
    - argLabels: 
  */
  @objc var collapsesBorders: Bool { @objc get @objc (setCollapsesBorders:) set }

  /**
    - jsName: hidesEmptyCells
    - name: hidesEmptyCells
    - argLabels: 
  */
  @objc var hidesEmptyCells: Bool { @objc get @objc (setHidesEmptyCells:) set }

  /**
    - jsName: layoutAlgorithm
    - name: layoutAlgorithm
    - argLabels: 
  */
  @objc var layoutAlgorithm: NSTextTable.LayoutAlgorithm { @objc get @objc (setLayoutAlgorithm:) set }

  /**
    - jsName: numberOfColumns
    - name: numberOfColumns
    - argLabels: 
  */
  @objc var numberOfColumns: Int { @objc get @objc (setNumberOfColumns:) set }
}

extension NSTextTable: NSTextTableExports {
}
