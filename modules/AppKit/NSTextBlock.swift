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
    - Selector: NSTextBlock
  */

@objc(NSTextBlock) protocol NSTextBlockExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: borderColorForEdge:
  */
  @objc (borderColorForEdge:) func borderColor(`for`: NSRectEdge) -> NSColor?

  /**
    - Selector: boundsRectForContentRect:inRect:textContainer:characterRange:
  */
  @objc (boundsRectForContentRect:inRect:textContainer:characterRange:) func boundsRect(forContentRect: CGRect, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  /**
    - Selector: drawBackgroundWithFrame:inView:characterRange:layoutManager:
  */
  @objc (drawBackgroundWithFrame:inView:characterRange:layoutManager:) func drawBackground(withFrame: CGRect, in: NSView, characterRange: NSRange, layoutManager: NSLayoutManager)

  /**
    - Selector: rectForLayoutAtPoint:inRect:textContainer:characterRange:
  */
  @objc (rectForLayoutAtPoint:inRect:textContainer:characterRange:) func rectForLayout(at: CGPoint, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  /**
    - Selector: setBorderColor:
  */
  @objc func setBorderColor(_ p0: NSColor?)

  /**
    - Selector: setBorderColor:forEdge:
  */
  @objc (setBorderColor:forEdge:) func setBorderColor(_ p0: NSColor?, `for`: NSRectEdge)

  /**
    - Selector: setContentWidth:type:
  */
  @objc func setContentWidth(_ p0: CGFloat, type: NSTextBlock.ValueType)

  /**
    - Selector: setValue:type:forDimension:
  */
  @objc (setValue:type:forDimension:) func setValue(_ p0: CGFloat, type: NSTextBlock.ValueType, `for`: NSTextBlock.Dimension)

  /**
    - Selector: setWidth:type:forLayer:
  */
  @objc (setWidth:type:forLayer:) func setWidth(_ p0: CGFloat, type: NSTextBlock.ValueType, `for`: NSTextBlock.Layer)

  /**
    - Selector: setWidth:type:forLayer:edge:
  */
  @objc (setWidth:type:forLayer:edge:) func setWidth(_ p0: CGFloat, type: NSTextBlock.ValueType, `for`: NSTextBlock.Layer, edge: NSRectEdge)

  /**
    - Selector: valueForDimension:
  */
  @objc (valueForDimension:) func value(`for`: NSTextBlock.Dimension) -> CGFloat

  /**
    - Selector: valueTypeForDimension:
  */
  @objc (valueTypeForDimension:) func valueType(`for`: NSTextBlock.Dimension) -> NSTextBlock.ValueType

  /**
    - Selector: widthForLayer:edge:
  */
  @objc (widthForLayer:edge:) func width(`for`: NSTextBlock.Layer, edge: NSRectEdge) -> CGFloat

  /**
    - Selector: widthValueTypeForLayer:edge:
  */
  @objc (widthValueTypeForLayer:edge:) func widthValueType(`for`: NSTextBlock.Layer, edge: NSRectEdge) -> NSTextBlock.ValueType

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: contentWidth
  */
  @objc var contentWidth: CGFloat { @objc get }

  /**
    - Selector: contentWidthValueType
  */
  @objc var contentWidthValueType: NSTextBlock.ValueType { @objc get }

  /**
    - Selector: verticalAlignment
  */
  @objc var verticalAlignment: NSTextBlock.VerticalAlignment { @objc get @objc (setVerticalAlignment:) set }
}

extension NSTextBlock: NSTextBlockExports {
}
