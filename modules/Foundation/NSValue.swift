import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSValue
    - name: NSValue
    - argLabels: 
  */

@objc(NSValue) protocol NSValueExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: value:withObjCType:
    - argLabels: _, withObjCType
    - constructorTokens: 
    - unavailable: true
    - renamed: init(_:withObjCType:)
    - message: Not available in Swift
  */
  @objc static func create(_: UnsafeRawPointer, withObjCType: UnsafePointer<Int8>) -> NSValue

  /**
    - jsName: create
    - name: valueWithBytes:objCType:
    - argLabels: bytes, objCType
    - constructorTokens: 
    - unavailable: true
    - renamed: init(bytes:objCType:)
    - message: Not available in Swift
  */
  @objc static func create(bytes: UnsafeRawPointer, objCType: UnsafePointer<Int8>) -> NSValue

  /**
    - jsName: create
    - name: valueWithCATransform3D:
    - argLabels: caTransform3D
    - constructorTokens: 
    - unavailable: true
    - renamed: init(caTransform3D:)
    - message: Not available in Swift
  */
  @objc static func create(caTransform3D: CATransform3D) -> NSValue

  /**
    - jsName: create
    - name: valueWithCMTime:
    - argLabels: time
    - constructorTokens: 
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(time: CMTime) -> NSValue

  /**
    - jsName: create
    - name: valueWithCMTimeMapping:
    - argLabels: timeMapping
    - constructorTokens: 
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(timeMapping: CMTimeMapping) -> NSValue

  /**
    - jsName: create
    - name: valueWithEdgeInsets:
    - argLabels: edgeInsets
    - constructorTokens: 
    - available: 10.10
    - unavailable: true
    - renamed: init(edgeInsets:)
    - message: Not available in Swift
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func create(edgeInsets: NSEdgeInsets) -> NSValue

  /**
    - jsName: create
    - name: valueWithNonretainedObject:
    - argLabels: nonretainedObject
    - constructorTokens: 
    - unavailable: true
    - renamed: init(nonretainedObject:)
    - message: Not available in Swift
  */
  @objc static func create(nonretainedObject: Any?) -> NSValue

  /**
    - jsName: create
    - name: valueWithPoint:
    - argLabels: point
    - constructorTokens: 
    - unavailable: true
    - renamed: init(point:)
    - message: Not available in Swift
  */
  @objc static func create(point: CGPoint) -> NSValue

  /**
    - jsName: create
    - name: valueWithPointer:
    - argLabels: pointer
    - constructorTokens: 
    - unavailable: true
    - renamed: init(pointer:)
    - message: Not available in Swift
  */
  @objc static func create(pointer: UnsafeRawPointer?) -> NSValue

  /**
    - jsName: create
    - name: valueWithRange:
    - argLabels: range
    - constructorTokens: 
    - unavailable: true
    - renamed: init(range:)
    - message: Not available in Swift
  */
  @objc static func create(range: NSRange) -> NSValue

  /**
    - jsName: create
    - name: valueWithSize:
    - argLabels: size
    - constructorTokens: 
    - unavailable: true
    - renamed: init(size:)
    - message: Not available in Swift
  */
  @objc static func create(size: CGSize) -> NSValue

  // Instance Methods

  /**
    - jsName: getValue
    - name: getValue:
    - argLabels: 
    - constructorTokens: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: getValue:size:
  */
  @objc @available(OSX 10.0, *) func getValue(_: UnsafeMutableRawPointer)

  /**
    - jsName: getValue
    - name: getValue:size:
    - argLabels: size
    - constructorTokens: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) func getValue(_: UnsafeMutableRawPointer, size: Int)

  /**
    - jsName: isEqual
    - name: isEqualToValue:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isEqual(to:)
  */
  @objc (isEqualToValue:) func isEqual(to: NSValue) -> Bool

  // Own Instance Properties

  /**
    - jsName: caTransform3DValue
    - name: CATransform3DValue
    - argLabels: 
    - obsoleted: 3
    - renamed: caTransform3DValue
  */
  @objc var caTransform3DValue: CATransform3D { @objc (CATransform3DValue) get }

  /**
    - jsName: timeMappingValue
    - name: CMTimeMappingValue
    - argLabels: 
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timeMappingValue: CMTimeMapping { @objc (CMTimeMappingValue) get }

  /**
    - jsName: timeRangeValue
    - name: CMTimeRangeValue
    - argLabels: 
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timeRangeValue: CMTimeRange { @objc (CMTimeRangeValue) get }

  /**
    - jsName: timeValue
    - name: CMTimeValue
    - argLabels: 
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timeValue: CMTime { @objc (CMTimeValue) get }

  /**
    - jsName: edgeInsetsValue
    - name: edgeInsetsValue
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var edgeInsetsValue: NSEdgeInsets { @objc get }

  /**
    - jsName: nonretainedObjectValue
    - name: nonretainedObjectValue
    - argLabels: 
  */
  @objc var nonretainedObjectValue: Any? { @objc get }

  /**
    - jsName: objCType
    - name: objCType
    - argLabels: 
  */
  @objc var objCType: UnsafePointer<Int8> { @objc get }

  /**
    - jsName: pointValue
    - name: pointValue
    - argLabels: 
  */
  @objc var pointValue: CGPoint { @objc get }

  /**
    - jsName: pointerValue
    - name: pointerValue
    - argLabels: 
  */
  @objc var pointerValue: UnsafeMutableRawPointer? { @objc get }

  /**
    - jsName: rangeValue
    - name: rangeValue
    - argLabels: 
  */
  @objc var rangeValue: NSRange { @objc get }

  /**
    - jsName: rectValue
    - name: rectValue
    - argLabels: 
  */
  @objc var rectValue: CGRect { @objc get }

  /**
    - jsName: sizeValue
    - name: sizeValue
    - argLabels: 
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
