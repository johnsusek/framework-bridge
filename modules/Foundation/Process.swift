import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Process
    - name: NSTask
    - argLabels: 
  */

@objc(Process) protocol ProcessExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: launchedTaskWithExecutableURL
    - name: launchedTaskWithExecutableURL:arguments:error:terminationHandler:
    - argLabels: arguments, error, terminationHandler
    - constructorTokens: 
    - Introduced: 10.13
  */
  // jsvalue - @objc @available(OSX 10.13, *) static func launchedTaskWithExecutableURL(_: URL, `arguments`: [String], error: UnsafeMutablePointer<Error?>?, terminationHandler: JSValue) -> Process?

  /**
    - jsName: launchedProcess
    - name: launchedTaskWithLaunchPath:arguments:
    - argLabels: launchPath, arguments
    - constructorTokens: 
    - obsoleted: 3
    - renamed: launchedProcess(launchPath:arguments:)
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: launchedTaskWithExecutableURL:arguments:error:
  */
  @objc (launchedTaskWithLaunchPath:arguments:) @available(OSX 10.0, *) static func launchedProcess(launchPath: String, `arguments`: [String]) -> Process

  // Instance Methods

  /**
    - jsName: interrupt
    - name: interrupt
    - argLabels: 
    - constructorTokens: 
  */
  @objc func interrupt()

  /**
    - jsName: launch
    - name: launch
    - argLabels: 
    - constructorTokens: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: launchAndReturnError:
  */
  @objc @available(OSX 10.0, *) func launch()

  /**
    - jsName: launchAndReturnError
    - name: launchAndReturnError:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.13
  */
  // throws - // unavailableInSwift @objc @available(OSX 10.13, *) func launchAndReturnError() -> Bool

  /**
    - jsName: resume
    - name: resume
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resume() -> Bool

  /**
    - jsName: suspend
    - name: suspend
    - argLabels: 
    - constructorTokens: 
  */
  @objc func suspend() -> Bool

  /**
    - jsName: terminate
    - name: terminate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func terminate()

  /**
    - jsName: waitUntilExit
    - name: waitUntilExit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func waitUntilExit()

  // Own Instance Properties

  /**
    - jsName: arguments
    - name: arguments
    - argLabels: 
  */
  @objc var `arguments`: [String]? { @objc get @objc (setArguments:) set }

  /**
    - jsName: currentDirectoryPath
    - name: currentDirectoryPath
    - argLabels: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: currentDirectoryURL
  */
  @objc @available(OSX 10.0, *) var currentDirectoryPath: String { @objc get @objc (setCurrentDirectoryPath:) set }

  /**
    - jsName: currentDirectoryURL
    - name: currentDirectoryURL
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var currentDirectoryURL: URL? { @objc get @objc (setCurrentDirectoryURL:) set }

  /**
    - jsName: environment
    - name: environment
    - argLabels: 
  */
  @objc var environment: [String: String]? { @objc get @objc (setEnvironment:) set }

  /**
    - jsName: executableURL
    - name: executableURL
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var executableURL: URL? { @objc get @objc (setExecutableURL:) set }

  /**
    - jsName: launchPath
    - name: launchPath
    - argLabels: 
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: executableURL
  */
  @objc @available(OSX 10.0, *) var launchPath: String? { @objc get @objc (setLaunchPath:) set }

  /**
    - jsName: processIdentifier
    - name: processIdentifier
    - argLabels: 
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - jsName: qualityOfService
    - name: qualityOfService
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - jsName: isRunning
    - name: running
    - argLabels: 
    - obsoleted: 3
    - renamed: isRunning
  */
  @objc var isRunning: Bool { @objc get }

  /**
    - jsName: standardError
    - name: standardError
    - argLabels: 
  */
  @objc var standardError: Any? { @objc get @objc (setStandardError:) set }

  /**
    - jsName: standardInput
    - name: standardInput
    - argLabels: 
  */
  @objc var standardInput: Any? { @objc get @objc (setStandardInput:) set }

  /**
    - jsName: standardOutput
    - name: standardOutput
    - argLabels: 
  */
  @objc var standardOutput: Any? { @objc get @objc (setStandardOutput:) set }

  /**
    - jsName: terminationHandler
    - name: terminationHandler
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var terminationHandler: JSValue? { @objc get @objc (setTerminationHandler:) set }

  /**
    - jsName: terminationReason
    - name: terminationReason
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var terminationReason: Process.TerminationReason { @objc get }

  /**
    - jsName: terminationStatus
    - name: terminationStatus
    - argLabels: 
  */
  @objc var terminationStatus: Int32 { @objc get }
}

extension Process: ProcessExports {
}
