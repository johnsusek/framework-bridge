import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: AffineTransform
    - name: NSAffineTransform
    - argLabels: 
  */

@objc(NSAffineTransform) protocol NSAffineTransformExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: append
    - name: appendTransform:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (appendTransform:) func append(_: AffineTransform)

  /**
    - jsName: concat
    - name: concat
    - argLabels: 
    - constructorTokens: 
  */
  @objc func concat()

  /**
    - jsName: createWithTransform
    - name: initWithTransform:
    - argLabels: 
    - constructorTokens: transform
  */
  @objc static func createWithTransform(_: AffineTransform) -> Self

  /**
    - jsName: invert
    - name: invert
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invert()

  /**
    - jsName: prepend
    - name: prependTransform:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (prependTransform:) func prepend(_: AffineTransform)

  /**
    - jsName: rotate
    - name: rotateByDegrees:
    - argLabels: byDegrees
    - constructorTokens: 
  */
  @objc (rotateByDegrees:) func rotate(byDegrees: CGFloat)

  /**
    - jsName: rotate
    - name: rotateByRadians:
    - argLabels: byRadians
    - constructorTokens: 
  */
  @objc (rotateByRadians:) func rotate(byRadians: CGFloat)

  /**
    - jsName: scale
    - name: scaleBy:
    - argLabels: by
    - constructorTokens: 
  */
  @objc (scaleBy:) func scale(by: CGFloat)

  /**
    - jsName: scaleX
    - name: scaleXBy:yBy:
    - argLabels: by, yBy
    - constructorTokens: 
  */
  @objc (scaleXBy:yBy:) func scaleX(by: CGFloat, yBy: CGFloat)

  /**
    - jsName: set
    - name: set
    - argLabels: 
    - constructorTokens: 
  */
  @objc func set()

  /**
    - jsName: transform
    - name: transformBezierPath:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (transformBezierPath:) func transform(_: NSBezierPath) -> NSBezierPath

  /**
    - jsName: transform
    - name: transformPoint:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (transformPoint:) func transform(_: CGPoint) -> CGPoint

  /**
    - jsName: transform
    - name: transformSize:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (transformSize:) func transform(_: CGSize) -> CGSize

  /**
    - jsName: translateX
    - name: translateXBy:yBy:
    - argLabels: by, yBy
    - constructorTokens: 
  */
  @objc (translateXBy:yBy:) func translateX(by: CGFloat, yBy: CGFloat)

  // Own Instance Properties

  /**
    - jsName: transformStruct
    - name: transformStruct
    - argLabels: 
  */
  @objc var transformStruct: NSAffineTransformStruct { @objc get @objc (setTransformStruct:) set }
}

extension NSAffineTransform: NSAffineTransformExports {
  @objc public static func createWithTransform(_ transform: AffineTransform) -> Self {
    return self.init(transform: transform)
  }

}
