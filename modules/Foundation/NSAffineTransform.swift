import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSAffineTransform
  */

@objc(NSAffineTransform) protocol NSAffineTransformExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: appendTransform:
  */
  @objc (appendTransform:) func append(_: AffineTransform)

  /**
    - Selector: concat
  */
  @objc func concat()

  /**
    - Selector: initWithTransform:
  */
  @objc static func createWithTransform(_: AffineTransform) -> Self

  /**
    - Selector: invert
  */
  @objc func invert()

  /**
    - Selector: prependTransform:
  */
  @objc (prependTransform:) func prepend(_: AffineTransform)

  /**
    - Selector: rotateByDegrees:
  */
  @objc (rotateByDegrees:) func rotate(byDegrees: CGFloat)

  /**
    - Selector: rotateByRadians:
  */
  @objc (rotateByRadians:) func rotate(byRadians: CGFloat)

  /**
    - Selector: scaleBy:
  */
  @objc (scaleBy:) func scale(by: CGFloat)

  /**
    - Selector: scaleXBy:yBy:
  */
  @objc (scaleXBy:yBy:) func scaleX(by: CGFloat, yBy: CGFloat)

  /**
    - Selector: set
  */
  @objc func set()

  /**
    - Selector: transformBezierPath:
  */
  @objc (transformBezierPath:) func transform(_: NSBezierPath) -> NSBezierPath

  /**
    - Selector: transformPoint:
  */
  @objc (transformPoint:) func transform(_: CGPoint) -> CGPoint

  /**
    - Selector: transformSize:
  */
  @objc (transformSize:) func transform(_: CGSize) -> CGSize

  /**
    - Selector: translateXBy:yBy:
  */
  @objc (translateXBy:yBy:) func translateX(by: CGFloat, yBy: CGFloat)

  // Own Instance Properties

  /**
    - Selector: transformStruct
  */
  @objc var transformStruct: NSAffineTransformStruct { @objc get @objc (setTransformStruct:) set }
}

extension NSAffineTransform: NSAffineTransformExports {
  @objc public static func createWithTransform(_ transform: AffineTransform) -> Self {
    return self.init(transform: transform)
  }

}
