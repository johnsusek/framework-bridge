import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSValue
  */

@objc(NSValue) protocol NSValueExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: value:withObjCType:
  */
  @objc static func create(_: UnsafeRawPointer, withObjCType: UnsafePointer<Int8>) -> NSValue

  /**
    - Selector: valueWithBytes:objCType:
  */
  @objc static func create(bytes: UnsafeRawPointer, objCType: UnsafePointer<Int8>) -> NSValue

  /**
    - Selector: valueWithCATransform3D:
  */
  @objc static func create(caTransform3D: CATransform3D) -> NSValue

  /**
    - Selector: valueWithCMTime:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(time: CMTime) -> NSValue

  /**
    - Selector: valueWithCMTimeMapping:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(timeMapping: CMTimeMapping) -> NSValue

  /**
    - Selector: valueWithEdgeInsets:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func create(edgeInsets: NSEdgeInsets) -> NSValue

  /**
    - Selector: valueWithNonretainedObject:
  */
  @objc static func create(nonretainedObject: Any?) -> NSValue

  /**
    - Selector: valueWithPoint:
  */
  @objc static func create(point: CGPoint) -> NSValue

  /**
    - Selector: valueWithPointer:
  */
  @objc static func create(pointer: UnsafeRawPointer?) -> NSValue

  /**
    - Selector: valueWithRange:
  */
  @objc static func create(range: NSRange) -> NSValue

  /**
    - Selector: valueWithSize:
  */
  @objc static func create(size: CGSize) -> NSValue

  // Instance Methods

  /**
    - Selector: getValue:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: getValue:size:
  */
  @objc @available(OSX 10.0, *) func getValue(_: UnsafeMutableRawPointer)

  /**
    - Selector: getValue:size:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func getValue(_: UnsafeMutableRawPointer, size: Int)

  /**
    - Selector: isEqualToValue:
  */
  @objc (isEqualToValue:) func isEqual(to: NSValue) -> Bool

  // Own Instance Properties

  /**
    - Selector: CATransform3DValue
  */
  @objc var caTransform3DValue: CATransform3D { @objc (CATransform3DValue) get }

  /**
    - Selector: CMTimeMappingValue
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timeMappingValue: CMTimeMapping { @objc (CMTimeMappingValue) get }

  /**
    - Selector: CMTimeRangeValue
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timeRangeValue: CMTimeRange { @objc (CMTimeRangeValue) get }

  /**
    - Selector: CMTimeValue
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timeValue: CMTime { @objc (CMTimeValue) get }

  /**
    - Selector: edgeInsetsValue
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var edgeInsetsValue: NSEdgeInsets { @objc get }

  /**
    - Selector: nonretainedObjectValue
  */
  @objc var nonretainedObjectValue: Any? { @objc get }

  /**
    - Selector: objCType
  */
  @objc var objCType: UnsafePointer<Int8> { @objc get }

  /**
    - Selector: pointValue
  */
  @objc var pointValue: CGPoint { @objc get }

  /**
    - Selector: pointerValue
  */
  @objc var pointerValue: UnsafeMutableRawPointer? { @objc get }

  /**
    - Selector: rangeValue
  */
  @objc var rangeValue: NSRange { @objc get }

  /**
    - Selector: rectValue
  */
  @objc var rectValue: CGRect { @objc get }

  /**
    - Selector: sizeValue
  */
  @objc var sizeValue: CGSize { @objc get }
}

extension NSValue: NSValueExports {
  @objc public static func create(_ p0: UnsafeRawPointer, withObjCType: UnsafePointer<Int8>) -> NSValue {
    return self.init(p0, withObjCType: withObjCType)
  }

  @objc public static func create(bytes: UnsafeRawPointer, objCType: UnsafePointer<Int8>) -> NSValue {
    return self.init(bytes: bytes, objCType: objCType)
  }

  @objc public static func create(caTransform3D: CATransform3D) -> NSValue {
    return self.init(caTransform3D: caTransform3D)
  }

  @objc public static func create(time: CMTime) -> NSValue {
    return self.init(time: time)
  }

  @objc public static func create(timeMapping: CMTimeMapping) -> NSValue {
    return self.init(timeMapping: timeMapping)
  }

  @objc public static func create(edgeInsets: NSEdgeInsets) -> NSValue {
    return self.init(edgeInsets: edgeInsets)
  }

  @objc public static func create(nonretainedObject: Any?) -> NSValue {
    return self.init(nonretainedObject: nonretainedObject)
  }

  @objc public static func create(point: CGPoint) -> NSValue {
    return self.init(point: point)
  }

  @objc public static func create(pointer: UnsafeRawPointer?) -> NSValue {
    return self.init(pointer: pointer)
  }

  @objc public static func create(range: NSRange) -> NSValue {
    return self.init(range: range)
  }

  @objc public static func create(size: CGSize) -> NSValue {
    return self.init(size: size)
  }

}
