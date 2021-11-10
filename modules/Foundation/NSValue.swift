import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
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
  @objc static func createWithValueWithObjCType(_ p0: UnsafeRawPointer, _ withObjCType: UnsafePointer<Int8>) -> NSValue

  /**
    - Selector: valueWithBytes:objCType:
  */
  @objc static func createWithValueWithBytesWithObjCType(_ bytes: UnsafeRawPointer, _ objCType: UnsafePointer<Int8>) -> NSValue

  /**
    - Selector: valueWithCATransform3D:
  */
  @objc static func createWithValueWithCATransform3D(_ caTransform3D: CATransform3D) -> NSValue

  /**
    - Selector: valueWithCMTime:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithValueWithCMTime(_ time: CMTime) -> NSValue

  /**
    - Selector: valueWithCMTimeMapping:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithValueWithCMTimeMapping(_ timeMapping: CMTimeMapping) -> NSValue

  /**
    - Selector: valueWithCMTimeRange:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithValueWithCMTimeRange(_ timeRange: CMTimeRange) -> NSValue

  /**
    - Selector: valueWithEdgeInsets:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithValueWithEdgeInsets(_ edgeInsets: NSEdgeInsets) -> NSValue

  /**
    - Selector: valueWithNonretainedObject:
  */
  @objc static func createWithValueWithNonretainedObject(_ nonretainedObject: Any?) -> NSValue

  /**
    - Selector: valueWithPoint:
  */
  @objc static func createWithValueWithPoint(_ point: CGPoint) -> NSValue

  /**
    - Selector: valueWithPointer:
  */
  @objc static func createWithValueWithPointer(_ pointer: UnsafeRawPointer?) -> NSValue

  /**
    - Selector: valueWithRange:
  */
  @objc static func createWithValueWithRange(_ range: NSRange) -> NSValue

  /**
    - Selector: valueWithRect:
  */
  @objc static func createWithValueWithRect(_ rect: CGRect) -> NSValue

  /**
    - Selector: valueWithSize:
  */
  @objc static func createWithValueWithSize(_ size: CGSize) -> NSValue

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

  /**
    - Selector: value:withObjCType:
  */
  @objc public static func createWithValueWithObjCType(_ p0: UnsafeRawPointer, _ withObjCType: UnsafePointer<Int8>) -> NSValue {
    return self.init(p0, withObjCType: withObjCType)
  }


  /**
    - Selector: valueWithBytes:objCType:
  */
  @objc public static func createWithValueWithBytesWithObjCType(_ bytes: UnsafeRawPointer, _ objCType: UnsafePointer<Int8>) -> NSValue {
    return self.init(bytes: bytes, objCType: objCType)
  }


  /**
    - Selector: valueWithCATransform3D:
  */
  @objc public static func createWithValueWithCATransform3D(_ caTransform3D: CATransform3D) -> NSValue {
    return self.init(caTransform3D: caTransform3D)
  }


  /**
    - Selector: valueWithCMTime:
    - Introduced: 10.7
  */
  @objc public static func createWithValueWithCMTime(_ time: CMTime) -> NSValue {
    return self.init(time: time)
  }


  /**
    - Selector: valueWithCMTimeMapping:
    - Introduced: 10.7
  */
  @objc public static func createWithValueWithCMTimeMapping(_ timeMapping: CMTimeMapping) -> NSValue {
    return self.init(timeMapping: timeMapping)
  }


  /**
    - Selector: valueWithCMTimeRange:
    - Introduced: 10.7
  */
  @objc public static func createWithValueWithCMTimeRange(_ timeRange: CMTimeRange) -> NSValue {
    return self.init(timeRange: timeRange)
  }


  /**
    - Selector: valueWithEdgeInsets:
    - Introduced: 10.10
  */
  @objc public static func createWithValueWithEdgeInsets(_ edgeInsets: NSEdgeInsets) -> NSValue {
    return self.init(edgeInsets: edgeInsets)
  }


  /**
    - Selector: valueWithNonretainedObject:
  */
  @objc public static func createWithValueWithNonretainedObject(_ nonretainedObject: Any?) -> NSValue {
    return self.init(nonretainedObject: nonretainedObject)
  }


  /**
    - Selector: valueWithPoint:
  */
  @objc public static func createWithValueWithPoint(_ point: CGPoint) -> NSValue {
    return self.init(point: point)
  }


  /**
    - Selector: valueWithPointer:
  */
  @objc public static func createWithValueWithPointer(_ pointer: UnsafeRawPointer?) -> NSValue {
    return self.init(pointer: pointer)
  }


  /**
    - Selector: valueWithRange:
  */
  @objc public static func createWithValueWithRange(_ range: NSRange) -> NSValue {
    return self.init(range: range)
  }


  /**
    - Selector: valueWithRect:
  */
  @objc public static func createWithValueWithRect(_ rect: CGRect) -> NSValue {
    return self.init(rect: rect)
  }


  /**
    - Selector: valueWithSize:
  */
  @objc public static func createWithValueWithSize(_ size: CGSize) -> NSValue {
    return self.init(size: size)
  }

}
