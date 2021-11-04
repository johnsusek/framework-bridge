import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSScriptCommand
  */

@objc(NSScriptCommand) protocol NSScriptCommandExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: currentCommand
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?

  // Instance Methods

  /**
    - Selector: executeCommand
  */
  @objc (executeCommand) func execute() -> Any?

  /**
    - Selector: initWithCommandDescription:
  */
  @objc static func createWithCommandDescription(_: NSScriptCommandDescription) -> Self

  /**
    - Selector: performDefaultImplementation
  */
  @objc func performDefaultImplementation() -> Any?

  /**
    - Selector: resumeExecutionWithResult:
  */
  @objc (resumeExecutionWithResult:) func resumeExecution(withResult: Any?)

  /**
    - Selector: suspendExecution
  */
  @objc func suspendExecution()

  // Own Instance Properties

  /**
    - Selector: appleEvent
  */
  @objc var appleEvent: NSAppleEventDescriptor? { @objc get }

  /**
    - Selector: arguments
  */
  @objc var `arguments`: [String: Any]? { @objc get @objc (setArguments:) set }

  /**
    - Selector: commandDescription
  */
  @objc var commandDescription: NSScriptCommandDescription { @objc get }

  /**
    - Selector: directParameter
  */
  @objc var directParameter: Any? { @objc get @objc (setDirectParameter:) set }

  /**
    - Selector: evaluatedArguments
  */
  @objc var evaluatedArguments: [String: Any]? { @objc get }

  /**
    - Selector: evaluatedReceivers
  */
  @objc var evaluatedReceivers: Any? { @objc get }

  /**
    - Selector: receiversSpecifier
  */
  @objc var receiversSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setReceiversSpecifier:) set }

  /**
    - Selector: scriptErrorExpectedTypeDescriptor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var scriptErrorExpectedTypeDescriptor: NSAppleEventDescriptor? { @objc get @objc (setScriptErrorExpectedTypeDescriptor:) set }

  /**
    - Selector: scriptErrorNumber
  */
  @objc var scriptErrorNumber: Int { @objc get @objc (setScriptErrorNumber:) set }

  /**
    - Selector: scriptErrorOffendingObjectDescriptor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var scriptErrorOffendingObjectDescriptor: NSAppleEventDescriptor? { @objc get @objc (setScriptErrorOffendingObjectDescriptor:) set }

  /**
    - Selector: scriptErrorString
  */
  @objc var scriptErrorString: String? { @objc get @objc (setScriptErrorString:) set }

  /**
    - Selector: wellFormed
  */
  @objc var isWellFormed: Bool { @objc get }
}

extension NSScriptCommand: NSScriptCommandExports {
  @objc public static func createWithCommandDescription(_ commandDescription: NSScriptCommandDescription) -> Self {
    return self.init(commandDescription: commandDescription)
  }

}
