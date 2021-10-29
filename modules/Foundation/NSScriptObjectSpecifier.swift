import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptObjectSpecifier
    - name: NSScriptObjectSpecifier
    - argLabels: 
  */

@objc(NSScriptObjectSpecifier) protocol NSScriptObjectSpecifierExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: objectSpecifierWithDescriptor:
    - argLabels: descriptor
    - constructorTokens: 
    - available: 10.5
    - unavailable: true
    - renamed: init(descriptor:)
    - message: Not available in Swift
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func create(descriptor: NSAppleEventDescriptor) -> NSScriptObjectSpecifier?

  // Instance Methods

  /**
    - jsName: indicesOfObjectsByEvaluating
    - name: indicesOfObjectsByEvaluatingWithContainer:count:
    - argLabels: withContainer, count
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indicesOfObjectsByEvaluating(withContainer:count:)
  */
  @objc (indicesOfObjectsByEvaluatingWithContainer:count:) func indicesOfObjectsByEvaluating(withContainer: Any, count: UnsafeMutablePointer<NSInteger>) -> UnsafeMutablePointer<NSInteger>?

  /**
    - jsName: createWithContainerClassDescription
    - name: initWithContainerClassDescription:containerSpecifier:key:
    - argLabels: containerSpecifier, key
    - constructorTokens: containerClassDescription, containerSpecifier, key
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String) -> Self

  /**
    - jsName: createWithContainerSpecifier
    - name: initWithContainerSpecifier:key:
    - argLabels: key
    - constructorTokens: containerSpecifier, key
  */
  @objc static func createWithContainerSpecifier(_: NSScriptObjectSpecifier, key: String) -> Self

  /**
    - jsName: objectsByEvaluating
    - name: objectsByEvaluatingWithContainers:
    - argLabels: withContainers
    - constructorTokens: 
    - obsoleted: 3
    - renamed: objectsByEvaluating(withContainers:)
  */
  @objc (objectsByEvaluatingWithContainers:) func objectsByEvaluating(withContainers: Any) -> Any?

  // Own Instance Properties

  /**
    - jsName: child
    - name: childSpecifier
    - argLabels: 
    - obsoleted: 3
    - renamed: child
  */
  @objc var child: NSScriptObjectSpecifier? { @objc (childSpecifier) get @objc (setChildSpecifier:) set }

  /**
    - jsName: containerClassDescription
    - name: containerClassDescription
    - argLabels: 
  */
  @objc var containerClassDescription: NSScriptClassDescription? { @objc get @objc (setContainerClassDescription:) set }

  /**
    - jsName: containerIsObjectBeingTested
    - name: containerIsObjectBeingTested
    - argLabels: 
  */
  @objc var containerIsObjectBeingTested: Bool { @objc get @objc (setContainerIsObjectBeingTested:) set }

  /**
    - jsName: containerIsRangeContainerObject
    - name: containerIsRangeContainerObject
    - argLabels: 
  */
  @objc var containerIsRangeContainerObject: Bool { @objc get @objc (setContainerIsRangeContainerObject:) set }

  /**
    - jsName: container
    - name: containerSpecifier
    - argLabels: 
    - obsoleted: 3
    - renamed: container
  */
  @objc var container: NSScriptObjectSpecifier? { @objc (containerSpecifier) get @objc (setContainerSpecifier:) set }

  /**
    - jsName: descriptor
    - name: descriptor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var descriptor: NSAppleEventDescriptor? { @objc get }

  /**
    - jsName: evaluationErrorNumber
    - name: evaluationErrorNumber
    - argLabels: 
  */
  @objc var evaluationErrorNumber: Int { @objc get @objc (setEvaluationErrorNumber:) set }

  /**
    - jsName: evaluationError
    - name: evaluationErrorSpecifier
    - argLabels: 
    - obsoleted: 3
    - renamed: evaluationError
  */
  @objc var evaluationError: NSScriptObjectSpecifier? { @objc (evaluationErrorSpecifier) get }

  /**
    - jsName: key
    - name: key
    - argLabels: 
  */
  @objc var key: String { @objc get @objc (setKey:) set }

  /**
    - jsName: keyClassDescription
    - name: keyClassDescription
    - argLabels: 
  */
  @objc var keyClassDescription: NSScriptClassDescription? { @objc get }

  /**
    - jsName: objectsByEvaluatingSpecifier
    - name: objectsByEvaluatingSpecifier
    - argLabels: 
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
