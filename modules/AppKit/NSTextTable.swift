import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextTable
  */

@objc(NSTextTable) protocol NSTextTableExports: JSExport, NSTextBlockExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: boundsRectForBlock:contentRect:inRect:textContainer:characterRange:
  */
  @objc (boundsRectForBlock:contentRect:inRect:textContainer:characterRange:) func boundsRect(`for`: NSTextTableBlock, contentRect: CGRect, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  /**
    - Selector: drawBackgroundForBlock:withFrame:inView:characterRange:layoutManager:
  */
  @objc (drawBackgroundForBlock:withFrame:inView:characterRange:layoutManager:) func drawBackground(`for`: NSTextTableBlock, withFrame: CGRect, in: NSView, characterRange: NSRange, layoutManager: NSLayoutManager)

  /**
    - Selector: rectForBlock:layoutAtPoint:inRect:textContainer:characterRange:
  */
  @objc (rectForBlock:layoutAtPoint:inRect:textContainer:characterRange:) func rect(`for`: NSTextTableBlock, layoutAt: CGPoint, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  // Own Instance Properties

  /**
    - Selector: collapsesBorders
  */
  @objc var collapsesBorders: Bool { @objc get @objc (setCollapsesBorders:) set }

  /**
    - Selector: hidesEmptyCells
  */
  @objc var hidesEmptyCells: Bool { @objc get @objc (setHidesEmptyCells:) set }

  /**
    - Selector: layoutAlgorithm
  */
  @objc var layoutAlgorithm: NSTextTable.LayoutAlgorithm { @objc get @objc (setLayoutAlgorithm:) set }

  /**
    - Selector: numberOfColumns
  */
  @objc var numberOfColumns: Int { @objc get @objc (setNumberOfColumns:) set }
}

extension NSTextTable: NSTextTableExports {
}
