import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSScriptObjectSpecifier
  */

@objc(NSScriptObjectSpecifier) protocol NSScriptObjectSpecifierExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: objectSpecifierWithDescriptor:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func create(descriptor: NSAppleEventDescriptor) -> NSScriptObjectSpecifier?

  // Instance Methods

  /**
    - Selector: indicesOfObjectsByEvaluatingWithContainer:count:
  */
  @objc (indicesOfObjectsByEvaluatingWithContainer:count:) func indicesOfObjectsByEvaluating(withContainer: Any, count: UnsafeMutablePointer<NSInteger>) -> UnsafeMutablePointer<NSInteger>?

  /**
    - Selector: initWithContainerClassDescription:containerSpecifier:key:
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String) -> Self

  /**
    - Selector: initWithContainerSpecifier:key:
  */
  @objc static func createWithContainerSpecifier(_: NSScriptObjectSpecifier, key: String) -> Self

  /**
    - Selector: objectsByEvaluatingWithContainers:
  */
  @objc (objectsByEvaluatingWithContainers:) func objectsByEvaluating(withContainers: Any) -> Any?

  // Own Instance Properties

  /**
    - Selector: childSpecifier
  */
  @objc var child: NSScriptObjectSpecifier? { @objc (childSpecifier) get @objc (setChildSpecifier:) set }

  /**
    - Selector: containerClassDescription
  */
  @objc var containerClassDescription: NSScriptClassDescription? { @objc get @objc (setContainerClassDescription:) set }

  /**
    - Selector: containerIsObjectBeingTested
  */
  @objc var containerIsObjectBeingTested: Bool { @objc get @objc (setContainerIsObjectBeingTested:) set }

  /**
    - Selector: containerIsRangeContainerObject
  */
  @objc var containerIsRangeContainerObject: Bool { @objc get @objc (setContainerIsRangeContainerObject:) set }

  /**
    - Selector: containerSpecifier
  */
  @objc var container: NSScriptObjectSpecifier? { @objc (containerSpecifier) get @objc (setContainerSpecifier:) set }

  /**
    - Selector: descriptor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var descriptor: NSAppleEventDescriptor? { @objc get }

  /**
    - Selector: evaluationErrorNumber
  */
  @objc var evaluationErrorNumber: Int { @objc get @objc (setEvaluationErrorNumber:) set }

  /**
    - Selector: evaluationErrorSpecifier
  */
  @objc var evaluationError: NSScriptObjectSpecifier? { @objc (evaluationErrorSpecifier) get }

  /**
    - Selector: key
  */
  @objc var key: String { @objc get @objc (setKey:) set }

  /**
    - Selector: keyClassDescription
  */
  @objc var keyClassDescription: NSScriptClassDescription? { @objc get }

  /**
    - Selector: objectsByEvaluatingSpecifier
  */
  @objc var objectsByEvaluatingSpecifier: Any? { @objc get }
}

extension NSScriptObjectSpecifier: NSScriptObjectSpecifierExports {
  @objc public static func create(descriptor: NSAppleEventDescriptor) -> NSScriptObjectSpecifier? {
    return self.init(descriptor: descriptor)
  }

  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key)
  }

  @objc public static func createWithContainerSpecifier(_ containerSpecifier: NSScriptObjectSpecifier, key: String) -> Self {
    return self.init(containerSpecifier: containerSpecifier, key: key)
  }

}
