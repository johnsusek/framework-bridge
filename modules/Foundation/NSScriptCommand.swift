import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptCommand
    - name: NSScriptCommand
    - argLabels: 
  */

@objc(NSScriptCommand) protocol NSScriptCommandExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: current
    - name: currentCommand
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: current()
  */
  @objc (currentCommand) static func current() -> NSScriptCommand?

  // Instance Methods

  /**
    - jsName: execute
    - name: executeCommand
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: execute()
  */
  @objc (executeCommand) func execute() -> Any?

  /**
    - jsName: createWithCommandDescription
    - name: initWithCommandDescription:
    - argLabels: 
    - constructorTokens: commandDescription
  */
  @objc static func createWithCommandDescription(_: NSScriptCommandDescription) -> Self

  /**
    - jsName: performDefaultImplementation
    - name: performDefaultImplementation
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performDefaultImplementation() -> Any?

  /**
    - jsName: resumeExecution
    - name: resumeExecutionWithResult:
    - argLabels: withResult
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resumeExecution(withResult:)
  */
  @objc (resumeExecutionWithResult:) func resumeExecution(withResult: Any?)

  /**
    - jsName: suspendExecution
    - name: suspendExecution
    - argLabels: 
    - constructorTokens: 
  */
  @objc func suspendExecution()

  // Own Instance Properties

  /**
    - jsName: appleEvent
    - name: appleEvent
    - argLabels: 
  */
  @objc var appleEvent: NSAppleEventDescriptor? { @objc get }

  /**
    - jsName: arguments
    - name: arguments
    - argLabels: 
  */
  @objc var `arguments`: [String: Any]? { @objc get @objc (setArguments:) set }

  /**
    - jsName: commandDescription
    - name: commandDescription
    - argLabels: 
  */
  @objc var commandDescription: NSScriptCommandDescription { @objc get }

  /**
    - jsName: directParameter
    - name: directParameter
    - argLabels: 
  */
  @objc var directParameter: Any? { @objc get @objc (setDirectParameter:) set }

  /**
    - jsName: evaluatedArguments
    - name: evaluatedArguments
    - argLabels: 
  */
  @objc var evaluatedArguments: [String: Any]? { @objc get }

  /**
    - jsName: evaluatedReceivers
    - name: evaluatedReceivers
    - argLabels: 
  */
  @objc var evaluatedReceivers: Any? { @objc get }

  /**
    - jsName: receiversSpecifier
    - name: receiversSpecifier
    - argLabels: 
  */
  @objc var receiversSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setReceiversSpecifier:) set }

  /**
    - jsName: scriptErrorExpectedTypeDescriptor
    - name: scriptErrorExpectedTypeDescriptor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var scriptErrorExpectedTypeDescriptor: NSAppleEventDescriptor? { @objc get @objc (setScriptErrorExpectedTypeDescriptor:) set }

  /**
    - jsName: scriptErrorNumber
    - name: scriptErrorNumber
    - argLabels: 
  */
  @objc var scriptErrorNumber: Int { @objc get @objc (setScriptErrorNumber:) set }

  /**
    - jsName: scriptErrorOffendingObjectDescriptor
    - name: scriptErrorOffendingObjectDescriptor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var scriptErrorOffendingObjectDescriptor: NSAppleEventDescriptor? { @objc get @objc (setScriptErrorOffendingObjectDescriptor:) set }

  /**
    - jsName: scriptErrorString
    - name: scriptErrorString
    - argLabels: 
  */
  @objc var scriptErrorString: String? { @objc get @objc (setScriptErrorString:) set }

  /**
    - jsName: isWellFormed
    - name: wellFormed
    - argLabels: 
    - obsoleted: 3
    - renamed: isWellFormed
  */
  @objc var isWellFormed: Bool { @objc get }
}

extension NSScriptCommand: NSScriptCommandExports {
  @objc public static func createWithCommandDescription(_ commandDescription: NSScriptCommandDescription) -> Self {
    return self.init(commandDescription: commandDescription)
  }

}
