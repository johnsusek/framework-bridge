import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSPointerArray
    - name: NSPointerArray
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSPointerArray) protocol NSPointerArrayExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: pointerArrayWithPointerFunctions:
    - argLabels: pointerFunctions
    - constructorTokens: 
    - unavailable: true
    - renamed: init(pointerFunctions:)
    - message: Not available in Swift
  */
  @objc static func create(pointerFunctions: NSPointerFunctions) -> NSPointerArray

  /**
    - jsName: strongObjects
    - name: strongObjectsPointerArray
    - argLabels: 
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: strongObjects()
    - Introduced: 10.8
  */
  @objc (strongObjectsPointerArray) @available(OSX 10.8, *) static func strongObjects() -> NSPointerArray

  /**
    - jsName: weakObjects
    - name: weakObjectsPointerArray
    - argLabels: 
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: weakObjects()
    - Introduced: 10.8
  */
  @objc (weakObjectsPointerArray) @available(OSX 10.8, *) static func weakObjects() -> NSPointerArray

  // Instance Methods

  /**
    - jsName: addPointer
    - name: addPointer:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addPointer(_: UnsafeMutableRawPointer?)

  /**
    - jsName: compact
    - name: compact
    - argLabels: 
    - constructorTokens: 
  */
  @objc func compact()

  /**
    - jsName: insertPointer
    - name: insertPointer:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertPointer(_:at:)
  */
  @objc (insertPointer:atIndex:) func insertPointer(_: UnsafeMutableRawPointer?, at: Int)

  /**
    - jsName: pointer
    - name: pointerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: pointer(at:)
  */
  @objc (pointerAtIndex:) func pointer(at: Int) -> UnsafeMutableRawPointer?

  /**
    - jsName: removePointer
    - name: removePointerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removePointer(at:)
  */
  @objc (removePointerAtIndex:) func removePointer(at: Int)

  /**
    - jsName: replacePointer
    - name: replacePointerAtIndex:withPointer:
    - argLabels: at, withPointer
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replacePointer(at:withPointer:)
  */
  @objc (replacePointerAtIndex:withPointer:) func replacePointer(at: Int, withPointer: UnsafeMutableRawPointer?)

  // Own Instance Properties

  /**
    - jsName: allObjects
    - name: allObjects
    - argLabels: 
  */
  @objc var allObjects: [Any] { @objc get }

  /**
    - jsName: count
    - name: count
    - argLabels: 
  */
  @objc var count: Int { @objc get @objc (setCount:) set }

  /**
    - jsName: pointerFunctions
    - name: pointerFunctions
    - argLabels: 
  */
  @objc var pointerFunctions: NSPointerFunctions { @objc get }
}

extension NSPointerArray: NSPointerArrayExports {
  @objc public static func create(pointerFunctions: NSPointerFunctions) -> NSPointerArray {
    return self.init(pointerFunctions: pointerFunctions)
  }

}
