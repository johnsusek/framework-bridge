import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextBlock
    - name: NSTextBlock
    - argLabels: 
  */

@objc(NSTextBlock) protocol NSTextBlockExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: borderColor
    - name: borderColorForEdge:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: borderColor(for:)
  */
  @objc (borderColorForEdge:) func borderColor(`for`: NSRectEdge) -> NSColor?

  /**
    - jsName: boundsRect
    - name: boundsRectForContentRect:inRect:textContainer:characterRange:
    - argLabels: forContentRect, in, textContainer, characterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: boundsRect(forContentRect:in:textContainer:characterRange:)
  */
  @objc (boundsRectForContentRect:inRect:textContainer:characterRange:) func boundsRect(forContentRect: CGRect, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  /**
    - jsName: drawBackground
    - name: drawBackgroundWithFrame:inView:characterRange:layoutManager:
    - argLabels: withFrame, in, characterRange, layoutManager
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBackground(withFrame:in:characterRange:layoutManager:)
  */
  @objc (drawBackgroundWithFrame:inView:characterRange:layoutManager:) func drawBackground(withFrame: CGRect, in: NSView, characterRange: NSRange, layoutManager: NSLayoutManager)

  /**
    - jsName: rectForLayout
    - name: rectForLayoutAtPoint:inRect:textContainer:characterRange:
    - argLabels: at, in, textContainer, characterRange
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectForLayout(at:in:textContainer:characterRange:)
  */
  @objc (rectForLayoutAtPoint:inRect:textContainer:characterRange:) func rectForLayout(at: CGPoint, in: CGRect, textContainer: NSTextContainer, characterRange: NSRange) -> CGRect

  /**
    - jsName: setBorderColor
    - name: setBorderColor:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setBorderColor(_: NSColor?)

  /**
    - jsName: setBorderColor
    - name: setBorderColor:forEdge:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setBorderColor(_:for:)
  */
  @objc (setBorderColor:forEdge:) func setBorderColor(_: NSColor?, `for`: NSRectEdge)

  /**
    - jsName: setContentWidth
    - name: setContentWidth:type:
    - argLabels: type
    - constructorTokens: 
  */
  @objc func setContentWidth(_: CGFloat, type: NSTextBlock.ValueType)

  /**
    - jsName: setValue
    - name: setValue:type:forDimension:
    - argLabels: _, type, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setValue(_:type:for:)
  */
  @objc (setValue:type:forDimension:) func setValue(_: CGFloat, type: NSTextBlock.ValueType, `for`: NSTextBlock.Dimension)

  /**
    - jsName: setWidth
    - name: setWidth:type:forLayer:
    - argLabels: _, type, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setWidth(_:type:for:)
  */
  @objc (setWidth:type:forLayer:) func setWidth(_: CGFloat, type: NSTextBlock.ValueType, `for`: NSTextBlock.Layer)

  /**
    - jsName: setWidth
    - name: setWidth:type:forLayer:edge:
    - argLabels: _, type, for, edge
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setWidth(_:type:for:edge:)
  */
  @objc (setWidth:type:forLayer:edge:) func setWidth(_: CGFloat, type: NSTextBlock.ValueType, `for`: NSTextBlock.Layer, edge: NSRectEdge)

  /**
    - jsName: value
    - name: valueForDimension:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: value(for:)
  */
  @objc (valueForDimension:) func value(`for`: NSTextBlock.Dimension) -> CGFloat

  /**
    - jsName: valueType
    - name: valueTypeForDimension:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: valueType(for:)
  */
  @objc (valueTypeForDimension:) func valueType(`for`: NSTextBlock.Dimension) -> NSTextBlock.ValueType

  /**
    - jsName: width
    - name: widthForLayer:edge:
    - argLabels: for, edge
    - constructorTokens: 
    - obsoleted: 3
    - renamed: width(for:edge:)
  */
  @objc (widthForLayer:edge:) func width(`for`: NSTextBlock.Layer, edge: NSRectEdge) -> CGFloat

  /**
    - jsName: widthValueType
    - name: widthValueTypeForLayer:edge:
    - argLabels: for, edge
    - constructorTokens: 
    - obsoleted: 3
    - renamed: widthValueType(for:edge:)
  */
  @objc (widthValueTypeForLayer:edge:) func widthValueType(`for`: NSTextBlock.Layer, edge: NSRectEdge) -> NSTextBlock.ValueType

  // Own Instance Properties

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: contentWidth
    - name: contentWidth
    - argLabels: 
  */
  @objc var contentWidth: CGFloat { @objc get }

  /**
    - jsName: contentWidthValueType
    - name: contentWidthValueType
    - argLabels: 
  */
  @objc var contentWidthValueType: NSTextBlock.ValueType { @objc get }

  /**
    - jsName: verticalAlignment
    - name: verticalAlignment
    - argLabels: 
  */
  @objc var verticalAlignment: NSTextBlock.VerticalAlignment { @objc get @objc (setVerticalAlignment:) set }
}

extension NSTextBlock: NSTextBlockExports {
}
