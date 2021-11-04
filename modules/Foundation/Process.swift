import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSTask
  */

@objc(Process) protocol ProcessExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: launchedTaskWithExecutableURL:arguments:error:terminationHandler:
    - Introduced: 10.13
  */
// jsvalue   @objc @available(OSX 10.13, *) static func launchedTaskWithExecutableURL(_: URL, `arguments`: [String], error: UnsafeMutablePointer<Error?>?, terminationHandler: JSValue) -> Process?

  /**
    - Selector: launchedTaskWithLaunchPath:arguments:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: launchedTaskWithExecutableURL:arguments:error:
  */
  @objc (launchedTaskWithLaunchPath:arguments:) @available(OSX 10.0, *) static func launchedProcess(launchPath: String, `arguments`: [String]) -> Process

  // Instance Methods

  /**
    - Selector: interrupt
  */
  @objc func interrupt()

  /**
    - Selector: launch
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: launchAndReturnError:
  */
  @objc @available(OSX 10.0, *) func launch()

  /**
    - Selector: launchAndReturnError:
    - Introduced: 10.13
  */
  // throws - // unavailableInSwift @objc @available(OSX 10.13, *) func launchAndReturnError() -> Bool

  /**
    - Selector: resume
  */
  @objc func resume() -> Bool

  /**
    - Selector: suspend
  */
  @objc func suspend() -> Bool

  /**
    - Selector: terminate
  */
  @objc func terminate()

  /**
    - Selector: waitUntilExit
  */
  @objc func waitUntilExit()

  // Own Instance Properties

  /**
    - Selector: arguments
  */
  @objc var `arguments`: [String]? { @objc get @objc (setArguments:) set }

  /**
    - Selector: currentDirectoryPath
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: currentDirectoryURL
  */
  @objc @available(OSX 10.0, *) var currentDirectoryPath: String { @objc get @objc (setCurrentDirectoryPath:) set }

  /**
    - Selector: currentDirectoryURL
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var currentDirectoryURL: URL? { @objc get @objc (setCurrentDirectoryURL:) set }

  /**
    - Selector: environment
  */
  @objc var environment: [String: String]? { @objc get @objc (setEnvironment:) set }

  /**
    - Selector: executableURL
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var executableURL: URL? { @objc get @objc (setExecutableURL:) set }

  /**
    - Selector: launchPath
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: executableURL
  */
  @objc @available(OSX 10.0, *) var launchPath: String? { @objc get @objc (setLaunchPath:) set }

  /**
    - Selector: processIdentifier
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - Selector: qualityOfService
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - Selector: running
  */
  @objc var isRunning: Bool { @objc get }

  /**
    - Selector: standardError
  */
  @objc var standardError: Any? { @objc get @objc (setStandardError:) set }

  /**
    - Selector: standardInput
  */
  @objc var standardInput: Any? { @objc get @objc (setStandardInput:) set }

  /**
    - Selector: standardOutput
  */
  @objc var standardOutput: Any? { @objc get @objc (setStandardOutput:) set }

  /**
    - Selector: terminationHandler
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var terminationHandler: JSValue? { @objc get @objc (setTerminationHandler:) set }

  /**
    - Selector: terminationReason
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var terminationReason: Process.TerminationReason { @objc get }

  /**
    - Selector: terminationStatus
  */
  @objc var terminationStatus: Int32 { @objc get }
}

extension Process: ProcessExports {
}
