import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSPointerArray
    - Introduced: 10.5
  */

@objc(NSPointerArray) protocol NSPointerArrayExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: pointerArrayWithPointerFunctions:
  */
  @objc static func create(pointerFunctions: NSPointerFunctions) -> NSPointerArray

  /**
    - Selector: strongObjectsPointerArray
    - Introduced: 10.8
  */
  @objc (strongObjectsPointerArray) @available(OSX 10.8, *) static func strongObjects() -> NSPointerArray

  /**
    - Selector: weakObjectsPointerArray
    - Introduced: 10.8
  */
  @objc (weakObjectsPointerArray) @available(OSX 10.8, *) static func weakObjects() -> NSPointerArray

  // Instance Methods

  /**
    - Selector: addPointer:
  */
  @objc func addPointer(_: UnsafeMutableRawPointer?)

  /**
    - Selector: compact
  */
  @objc func compact()

  /**
    - Selector: insertPointer:atIndex:
  */
  @objc (insertPointer:atIndex:) func insertPointer(_: UnsafeMutableRawPointer?, at: Int)

  /**
    - Selector: pointerAtIndex:
  */
  @objc (pointerAtIndex:) func pointer(at: Int) -> UnsafeMutableRawPointer?

  /**
    - Selector: removePointerAtIndex:
  */
  @objc (removePointerAtIndex:) func removePointer(at: Int)

  /**
    - Selector: replacePointerAtIndex:withPointer:
  */
  @objc (replacePointerAtIndex:withPointer:) func replacePointer(at: Int, withPointer: UnsafeMutableRawPointer?)

  // Own Instance Properties

  /**
    - Selector: allObjects
  */
  @objc var allObjects: [Any] { @objc get }

  /**
    - Selector: count
  */
  @objc var count: Int { @objc get @objc (setCount:) set }

  /**
    - Selector: pointerFunctions
  */
  @objc var pointerFunctions: NSPointerFunctions { @objc get }
}

extension NSPointerArray: NSPointerArrayExports {
  @objc public static func create(pointerFunctions: NSPointerFunctions) -> NSPointerArray {
    return self.init(pointerFunctions: pointerFunctions)
  }

}
