import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSBezierPath
  */

@objc(NSBezierPath) protocol NSBezierPathExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: bezierPathWithOvalInRect:
  */
  @objc static func create(ovalIn: CGRect) -> NSBezierPath

  /**
    - Selector: bezierPathWithRect:
  */
  @objc static func create(rect: CGRect) -> NSBezierPath

  /**
    - Selector: bezierPathWithRoundedRect:xRadius:yRadius:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func create(roundedRect: CGRect, xRadius: CGFloat, yRadius: CGFloat) -> NSBezierPath

  /**
    - Selector: clipRect:
  */
  @objc (clipRect:) static func clip(_: CGRect)

  /**
    - Selector: drawPackedGlyphs:atPoint:
  */
  @objc (drawPackedGlyphs:atPoint:) static func drawPackedGlyphs(_: UnsafePointer<Int8>, at: CGPoint)

  /**
    - Selector: fillRect:
  */
  @objc (fillRect:) static func fill(_: CGRect)

  /**
    - Selector: strokeLineFromPoint:toPoint:
  */
  @objc (strokeLineFromPoint:toPoint:) static func strokeLine(from: CGPoint, to: CGPoint)

  /**
    - Selector: strokeRect:
  */
  @objc (strokeRect:) static func stroke(_: CGRect)

  // Own Static Properties

  /**
    - Selector: defaultFlatness
  */
  @objc static var defaultFlatness: CGFloat { @objc get @objc (setDefaultFlatness:) set }

  /**
    - Selector: defaultLineCapStyle
  */
  @objc static var defaultLineCapStyle: NSBezierPath.LineCapStyle { @objc get @objc (setDefaultLineCapStyle:) set }

  /**
    - Selector: defaultLineJoinStyle
  */
  @objc static var defaultLineJoinStyle: NSBezierPath.LineJoinStyle { @objc get @objc (setDefaultLineJoinStyle:) set }

  /**
    - Selector: defaultLineWidth
  */
  @objc static var defaultLineWidth: CGFloat { @objc get @objc (setDefaultLineWidth:) set }

  /**
    - Selector: defaultMiterLimit
  */
  @objc static var defaultMiterLimit: CGFloat { @objc get @objc (setDefaultMiterLimit:) set }

  /**
    - Selector: defaultWindingRule
  */
  @objc static var defaultWindingRule: NSBezierPath.WindingRule { @objc get @objc (setDefaultWindingRule:) set }

  // Instance Methods

  /**
    - Selector: addClip
  */
  @objc func addClip()

  /**
    - Selector: appendBezierPath:
  */
  @objc (appendBezierPath:) func append(_: NSBezierPath)

  /**
    - Selector: appendBezierPathWithArcFromPoint:toPoint:radius:
  */
  @objc (appendBezierPathWithArcFromPoint:toPoint:radius:) func appendArc(from: CGPoint, to: CGPoint, radius: CGFloat)

  /**
    - Selector: appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:
  */
  @objc (appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:) func appendArc(withCenter: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)

  /**
    - Selector: appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:
  */
  @objc (appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:) func appendArc(withCenter: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)

  /**
    - Selector: appendBezierPathWithCGGlyph:inFont:
    - Introduced: 10.13
  */
  @objc (appendBezierPathWithCGGlyph:inFont:) @available(OSX 10.13, *) func append(withCGGlyph: CGGlyph, in: NSFont)

  /**
    - Selector: appendBezierPathWithCGGlyphs:count:inFont:
    - Introduced: 10.13
  */
  @objc (appendBezierPathWithCGGlyphs:count:inFont:) @available(OSX 10.13, *) func append(withCGGlyphs: UnsafePointer<CGGlyph>, count: Int, in: NSFont)

  /**
    - Selector: appendBezierPathWithOvalInRect:
  */
  @objc (appendBezierPathWithOvalInRect:) func appendOval(in: CGRect)

  /**
    - Selector: appendBezierPathWithPoints:count:
  */
  @objc (appendBezierPathWithPoints:count:) func appendPoints(_: NSPointArray, count: Int)

  /**
    - Selector: appendBezierPathWithRect:
  */
  @objc (appendBezierPathWithRect:) func appendRect(_: CGRect)

  /**
    - Selector: appendBezierPathWithRoundedRect:xRadius:yRadius:
    - Introduced: 10.5
  */
  @objc (appendBezierPathWithRoundedRect:xRadius:yRadius:) @available(OSX 10.5, *) func appendRoundedRect(_: CGRect, xRadius: CGFloat, yRadius: CGFloat)

  /**
    - Selector: closePath
  */
  @objc (closePath) func close()

  /**
    - Selector: containsPoint:
  */
  @objc (containsPoint:) func contains(_: CGPoint) -> Bool

  /**
    - Selector: curveToPoint:controlPoint1:controlPoint2:
  */
  @objc (curveToPoint:controlPoint1:controlPoint2:) func curve(to: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)

  /**
    - Selector: elementAtIndex:
  */
  @objc (elementAtIndex:) func element(at: Int) -> NSBezierPath.ElementType

  /**
    - Selector: elementAtIndex:associatedPoints:
  */
  @objc (elementAtIndex:associatedPoints:) func element(at: Int, associatedPoints: NSPointArray?) -> NSBezierPath.ElementType

  /**
    - Selector: fill
  */
  @objc func fill()

  /**
    - Selector: getLineDash:count:phase:
  */
  @objc func getLineDash(_: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<NSInteger>?, phase: UnsafeMutablePointer<CGFloat>?)

  /**
    - Selector: lineToPoint:
  */
  @objc (lineToPoint:) func line(to: CGPoint)

  /**
    - Selector: moveToPoint:
  */
  @objc (moveToPoint:) func move(to: CGPoint)

  /**
    - Selector: relativeCurveToPoint:controlPoint1:controlPoint2:
  */
  @objc (relativeCurveToPoint:controlPoint1:controlPoint2:) func relativeCurve(to: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)

  /**
    - Selector: relativeLineToPoint:
  */
  @objc (relativeLineToPoint:) func relativeLine(to: CGPoint)

  /**
    - Selector: relativeMoveToPoint:
  */
  @objc (relativeMoveToPoint:) func relativeMove(to: CGPoint)

  /**
    - Selector: removeAllPoints
  */
  @objc func removeAllPoints()

  /**
    - Selector: setAssociatedPoints:atIndex:
  */
  @objc (setAssociatedPoints:atIndex:) func setAssociatedPoints(_: NSPointArray?, at: Int)

  /**
    - Selector: setClip
  */
  @objc func setClip()

  /**
    - Selector: setLineDash:count:phase:
  */
  @objc func setLineDash(_: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat)

  /**
    - Selector: stroke
  */
  @objc func stroke()

  /**
    - Selector: transformUsingAffineTransform:
  */
  @objc (transformUsingAffineTransform:) func transform(using: AffineTransform)

  // Own Instance Properties

  /**
    - Selector: bezierPathByFlatteningPath
  */
  @objc var flattened: NSBezierPath { @objc (bezierPathByFlatteningPath) get }

  /**
    - Selector: bezierPathByReversingPath
  */
  @objc var reversed: NSBezierPath { @objc (bezierPathByReversingPath) get }

  /**
    - Selector: bounds
  */
  @objc var bounds: CGRect { @objc get }

  /**
    - Selector: controlPointBounds
  */
  @objc var controlPointBounds: CGRect { @objc get }

  /**
    - Selector: currentPoint
  */
  @objc var currentPoint: CGPoint { @objc get }

  /**
    - Selector: elementCount
  */
  @objc var elementCount: Int { @objc get }

  /**
    - Selector: empty
  */
  @objc var isEmpty: Bool { @objc get }

  /**
    - Selector: flatness
  */
  @objc var flatness: CGFloat { @objc get @objc (setFlatness:) set }

  /**
    - Selector: lineCapStyle
  */
  @objc var lineCapStyle: NSBezierPath.LineCapStyle { @objc get @objc (setLineCapStyle:) set }

  /**
    - Selector: lineJoinStyle
  */
  @objc var lineJoinStyle: NSBezierPath.LineJoinStyle { @objc get @objc (setLineJoinStyle:) set }

  /**
    - Selector: lineWidth
  */
  @objc var lineWidth: CGFloat { @objc get @objc (setLineWidth:) set }

  /**
    - Selector: miterLimit
  */
  @objc var miterLimit: CGFloat { @objc get @objc (setMiterLimit:) set }

  /**
    - Selector: windingRule
  */
  @objc var windingRule: NSBezierPath.WindingRule { @objc get @objc (setWindingRule:) set }
}

extension NSBezierPath: NSBezierPathExports {
  @objc public static func create(ovalIn: CGRect) -> NSBezierPath {
    return self.init(ovalIn: ovalIn)
  }

  @objc public static func create(rect: CGRect) -> NSBezierPath {
    return self.init(rect: rect)
  }

  @objc public static func create(roundedRect: CGRect, xRadius: CGFloat, yRadius: CGFloat) -> NSBezierPath {
    return self.init(roundedRect: roundedRect, xRadius: xRadius, yRadius: yRadius)
  }

}
