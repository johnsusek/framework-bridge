import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSBezierPath
    - name: NSBezierPath
    - argLabels: 
  */

@objc(NSBezierPath) protocol NSBezierPathExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: bezierPathWithOvalInRect:
    - argLabels: ovalIn
    - constructorTokens: 
    - unavailable: true
    - renamed: init(ovalIn:)
    - message: Not available in Swift
  */
  @objc static func create(ovalIn: CGRect) -> NSBezierPath

  /**
    - jsName: create
    - name: bezierPathWithRect:
    - argLabels: rect
    - constructorTokens: 
    - unavailable: true
    - renamed: init(rect:)
    - message: Not available in Swift
  */
  @objc static func create(rect: CGRect) -> NSBezierPath

  /**
    - jsName: create
    - name: bezierPathWithRoundedRect:xRadius:yRadius:
    - argLabels: roundedRect, xRadius, yRadius
    - constructorTokens: 
    - available: 10.5
    - unavailable: true
    - renamed: init(roundedRect:xRadius:yRadius:)
    - message: Not available in Swift
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func create(roundedRect: CGRect, xRadius: CGFloat, yRadius: CGFloat) -> NSBezierPath

  /**
    - jsName: clip
    - name: clipRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: clip(_:)
  */
  @objc (clipRect:) static func clip(_: CGRect)

  /**
    - jsName: drawPackedGlyphs
    - name: drawPackedGlyphs:atPoint:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawPackedGlyphs(_:at:)
  */
  @objc (drawPackedGlyphs:atPoint:) static func drawPackedGlyphs(_: UnsafePointer<Int8>, at: CGPoint)

  /**
    - jsName: fill
    - name: fillRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fill(_:)
  */
  @objc (fillRect:) static func fill(_: CGRect)

  /**
    - jsName: strokeLine
    - name: strokeLineFromPoint:toPoint:
    - argLabels: from, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: strokeLine(from:to:)
  */
  @objc (strokeLineFromPoint:toPoint:) static func strokeLine(from: CGPoint, to: CGPoint)

  /**
    - jsName: stroke
    - name: strokeRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stroke(_:)
  */
  @objc (strokeRect:) static func stroke(_: CGRect)

  // Own Static Properties

  /**
    - jsName: defaultFlatness
    - name: defaultFlatness
    - argLabels: 
  */
  @objc static var defaultFlatness: CGFloat { @objc get @objc (setDefaultFlatness:) set }

  /**
    - jsName: defaultLineCapStyle
    - name: defaultLineCapStyle
    - argLabels: 
  */
  @objc static var defaultLineCapStyle: NSBezierPath.LineCapStyle { @objc get @objc (setDefaultLineCapStyle:) set }

  /**
    - jsName: defaultLineJoinStyle
    - name: defaultLineJoinStyle
    - argLabels: 
  */
  @objc static var defaultLineJoinStyle: NSBezierPath.LineJoinStyle { @objc get @objc (setDefaultLineJoinStyle:) set }

  /**
    - jsName: defaultLineWidth
    - name: defaultLineWidth
    - argLabels: 
  */
  @objc static var defaultLineWidth: CGFloat { @objc get @objc (setDefaultLineWidth:) set }

  /**
    - jsName: defaultMiterLimit
    - name: defaultMiterLimit
    - argLabels: 
  */
  @objc static var defaultMiterLimit: CGFloat { @objc get @objc (setDefaultMiterLimit:) set }

  /**
    - jsName: defaultWindingRule
    - name: defaultWindingRule
    - argLabels: 
  */
  @objc static var defaultWindingRule: NSBezierPath.WindingRule { @objc get @objc (setDefaultWindingRule:) set }

  // Instance Methods

  /**
    - jsName: addClip
    - name: addClip
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addClip()

  /**
    - jsName: append
    - name: appendBezierPath:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: append(_:)
  */
  @objc (appendBezierPath:) func append(_: NSBezierPath)

  /**
    - jsName: appendArc
    - name: appendBezierPathWithArcFromPoint:toPoint:radius:
    - argLabels: from, to, radius
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appendArc(from:to:radius:)
  */
  @objc (appendBezierPathWithArcFromPoint:toPoint:radius:) func appendArc(from: CGPoint, to: CGPoint, radius: CGFloat)

  /**
    - jsName: appendArc
    - name: appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:
    - argLabels: withCenter, radius, startAngle, endAngle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appendArc(withCenter:radius:startAngle:endAngle:)
  */
  @objc (appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:) func appendArc(withCenter: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)

  /**
    - jsName: appendArc
    - name: appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:
    - argLabels: withCenter, radius, startAngle, endAngle, clockwise
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appendArc(withCenter:radius:startAngle:endAngle:clockwise:)
  */
  @objc (appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:) func appendArc(withCenter: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)

  /**
    - jsName: append
    - name: appendBezierPathWithCGGlyph:inFont:
    - argLabels: withCGGlyph, in
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: append(withCGGlyph:in:)
    - Introduced: 10.13
  */
  @objc (appendBezierPathWithCGGlyph:inFont:) @available(OSX 10.13, *) func append(withCGGlyph: CGGlyph, in: NSFont)

  /**
    - jsName: append
    - name: appendBezierPathWithCGGlyphs:count:inFont:
    - argLabels: withCGGlyphs, count, in
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: append(withCGGlyphs:count:in:)
    - Introduced: 10.13
  */
  @objc (appendBezierPathWithCGGlyphs:count:inFont:) @available(OSX 10.13, *) func append(withCGGlyphs: UnsafePointer<CGGlyph>, count: Int, in: NSFont)

  /**
    - jsName: appendOval
    - name: appendBezierPathWithOvalInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appendOval(in:)
  */
  @objc (appendBezierPathWithOvalInRect:) func appendOval(in: CGRect)

  /**
    - jsName: appendPoints
    - name: appendBezierPathWithPoints:count:
    - argLabels: _, count
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appendPoints(_:count:)
  */
  @objc (appendBezierPathWithPoints:count:) func appendPoints(_: NSPointArray, count: Int)

  /**
    - jsName: appendRect
    - name: appendBezierPathWithRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appendRect(_:)
  */
  @objc (appendBezierPathWithRect:) func appendRect(_: CGRect)

  /**
    - jsName: appendRoundedRect
    - name: appendBezierPathWithRoundedRect:xRadius:yRadius:
    - argLabels: _, xRadius, yRadius
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: appendRoundedRect(_:xRadius:yRadius:)
    - Introduced: 10.5
  */
  @objc (appendBezierPathWithRoundedRect:xRadius:yRadius:) @available(OSX 10.5, *) func appendRoundedRect(_: CGRect, xRadius: CGFloat, yRadius: CGFloat)

  /**
    - jsName: close
    - name: closePath
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: close()
  */
  @objc (closePath) func close()

  /**
    - jsName: contains
    - name: containsPoint:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: contains(_:)
  */
  @objc (containsPoint:) func contains(_: CGPoint) -> Bool

  /**
    - jsName: curve
    - name: curveToPoint:controlPoint1:controlPoint2:
    - argLabels: to, controlPoint1, controlPoint2
    - constructorTokens: 
    - obsoleted: 3
    - renamed: curve(to:controlPoint1:controlPoint2:)
  */
  @objc (curveToPoint:controlPoint1:controlPoint2:) func curve(to: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)

  /**
    - jsName: element
    - name: elementAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: element(at:)
  */
  @objc (elementAtIndex:) func element(at: Int) -> NSBezierPath.ElementType

  /**
    - jsName: element
    - name: elementAtIndex:associatedPoints:
    - argLabels: at, associatedPoints
    - constructorTokens: 
    - obsoleted: 3
    - renamed: element(at:associatedPoints:)
  */
  @objc (elementAtIndex:associatedPoints:) func element(at: Int, associatedPoints: NSPointArray?) -> NSBezierPath.ElementType

  /**
    - jsName: fill
    - name: fill
    - argLabels: 
    - constructorTokens: 
  */
  @objc func fill()

  /**
    - jsName: getLineDash
    - name: getLineDash:count:phase:
    - argLabels: count, phase
    - constructorTokens: 
  */
  @objc func getLineDash(_: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<NSInteger>?, phase: UnsafeMutablePointer<CGFloat>?)

  /**
    - jsName: line
    - name: lineToPoint:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: line(to:)
  */
  @objc (lineToPoint:) func line(to: CGPoint)

  /**
    - jsName: move
    - name: moveToPoint:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: move(to:)
  */
  @objc (moveToPoint:) func move(to: CGPoint)

  /**
    - jsName: relativeCurve
    - name: relativeCurveToPoint:controlPoint1:controlPoint2:
    - argLabels: to, controlPoint1, controlPoint2
    - constructorTokens: 
    - obsoleted: 3
    - renamed: relativeCurve(to:controlPoint1:controlPoint2:)
  */
  @objc (relativeCurveToPoint:controlPoint1:controlPoint2:) func relativeCurve(to: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)

  /**
    - jsName: relativeLine
    - name: relativeLineToPoint:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: relativeLine(to:)
  */
  @objc (relativeLineToPoint:) func relativeLine(to: CGPoint)

  /**
    - jsName: relativeMove
    - name: relativeMoveToPoint:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: relativeMove(to:)
  */
  @objc (relativeMoveToPoint:) func relativeMove(to: CGPoint)

  /**
    - jsName: removeAllPoints
    - name: removeAllPoints
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeAllPoints()

  /**
    - jsName: setAssociatedPoints
    - name: setAssociatedPoints:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setAssociatedPoints(_:at:)
  */
  @objc (setAssociatedPoints:atIndex:) func setAssociatedPoints(_: NSPointArray?, at: Int)

  /**
    - jsName: setClip
    - name: setClip
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setClip()

  /**
    - jsName: setLineDash
    - name: setLineDash:count:phase:
    - argLabels: count, phase
    - constructorTokens: 
  */
  @objc func setLineDash(_: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat)

  /**
    - jsName: stroke
    - name: stroke
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stroke()

  /**
    - jsName: transform
    - name: transformUsingAffineTransform:
    - argLabels: using
    - constructorTokens: 
    - obsoleted: 3
    - renamed: transform(using:)
  */
  @objc (transformUsingAffineTransform:) func transform(using: AffineTransform)

  // Own Instance Properties

  /**
    - jsName: flattened
    - name: bezierPathByFlatteningPath
    - argLabels: 
    - obsoleted: 3
    - renamed: flattened
  */
  @objc var flattened: NSBezierPath { @objc (bezierPathByFlatteningPath) get }

  /**
    - jsName: reversed
    - name: bezierPathByReversingPath
    - argLabels: 
    - obsoleted: 3
    - renamed: reversed
  */
  @objc var reversed: NSBezierPath { @objc (bezierPathByReversingPath) get }

  /**
    - jsName: bounds
    - name: bounds
    - argLabels: 
  */
  @objc var bounds: CGRect { @objc get }

  /**
    - jsName: controlPointBounds
    - name: controlPointBounds
    - argLabels: 
  */
  @objc var controlPointBounds: CGRect { @objc get }

  /**
    - jsName: currentPoint
    - name: currentPoint
    - argLabels: 
  */
  @objc var currentPoint: CGPoint { @objc get }

  /**
    - jsName: elementCount
    - name: elementCount
    - argLabels: 
  */
  @objc var elementCount: Int { @objc get }

  /**
    - jsName: isEmpty
    - name: empty
    - argLabels: 
    - obsoleted: 3
    - renamed: isEmpty
  */
  @objc var isEmpty: Bool { @objc get }

  /**
    - jsName: flatness
    - name: flatness
    - argLabels: 
  */
  @objc var flatness: CGFloat { @objc get @objc (setFlatness:) set }

  /**
    - jsName: lineCapStyle
    - name: lineCapStyle
    - argLabels: 
  */
  @objc var lineCapStyle: NSBezierPath.LineCapStyle { @objc get @objc (setLineCapStyle:) set }

  /**
    - jsName: lineJoinStyle
    - name: lineJoinStyle
    - argLabels: 
  */
  @objc var lineJoinStyle: NSBezierPath.LineJoinStyle { @objc get @objc (setLineJoinStyle:) set }

  /**
    - jsName: lineWidth
    - name: lineWidth
    - argLabels: 
  */
  @objc var lineWidth: CGFloat { @objc get @objc (setLineWidth:) set }

  /**
    - jsName: miterLimit
    - name: miterLimit
    - argLabels: 
  */
  @objc var miterLimit: CGFloat { @objc get @objc (setMiterLimit:) set }

  /**
    - jsName: windingRule
    - name: windingRule
    - argLabels: 
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
