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
    - Selector: NSProcessInfo
  */

@objc(ProcessInfo) protocol ProcessInfoExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: processInfo
  */
  @objc static var processInfo: ProcessInfo { @objc get }

  // Instance Methods

  /**
    - Selector: beginActivityWithOptions:reason:
    - Introduced: 10.9
  */
  @objc (beginActivityWithOptions:reason:) @available(OSX 10.9, *) func beginActivity(options: ProcessInfo.ActivityOptions, reason: String) -> NSObjectProtocol

  /**
    - Selector: disableAutomaticTermination:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func disableAutomaticTermination(_ p0: String)

  /**
    - Selector: disableSuddenTermination
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func disableSuddenTermination()

  /**
    - Selector: enableAutomaticTermination:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func enableAutomaticTermination(_ p0: String)

  /**
    - Selector: enableSuddenTermination
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func enableSuddenTermination()

  /**
    - Selector: endActivity:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func endActivity(_ p0: NSObjectProtocol)

  /**
    - Selector: isOperatingSystemAtLeastVersion:
    - Introduced: 10.10
  */
  @objc (isOperatingSystemAtLeastVersion:) @available(OSX 10.10, *) func isOperatingSystemAtLeast(_ p0: OperatingSystemVersion) -> Bool

  /**
    - Selector: performActivityWithOptions:reason:usingBlock:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func performActivity(options: ProcessInfo.ActivityOptions, reason: String, using: JSValue)

  // Own Instance Properties

  /**
    - Selector: activeProcessorCount
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var activeProcessorCount: Int { @objc get }

  /**
    - Selector: arguments
  */
  @objc var `arguments`: [String] { @objc get }

  /**
    - Selector: automaticTerminationSupportEnabled
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var automaticTerminationSupportEnabled: Bool { @objc get @objc (setAutomaticTerminationSupportEnabled:) set }

  /**
    - Selector: environment
  */
  @objc var environment: [String: String] { @objc get }

  /**
    - Selector: fullUserName
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var fullUserName: String { @objc get }

  /**
    - Selector: globallyUniqueString
  */
  @objc var globallyUniqueString: String { @objc get }

  /**
    - Selector: hostName
  */
  @objc var hostName: String { @objc get }

  /**
    - Selector: macCatalystApp
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isMacCatalystApp: Bool { @objc get }

  /**
    - Selector: operatingSystemVersion
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var operatingSystemVersion: OperatingSystemVersion { @objc get }

  /**
    - Selector: operatingSystemVersionString
  */
  @objc var operatingSystemVersionString: String { @objc get }

  /**
    - Selector: physicalMemory
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var physicalMemory: UInt64 { @objc get }

  /**
    - Selector: processIdentifier
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - Selector: processName
  */
  @objc var processName: String { @objc get @objc (setProcessName:) set }

  /**
    - Selector: processorCount
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var processorCount: Int { @objc get }

  /**
    - Selector: systemUptime
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var systemUptime: TimeInterval { @objc get }

  /**
    - Selector: thermalState
    - Introduced: 10.10.3
  */
  @objc @available(OSX 10.10.3, *) var thermalState: ProcessInfo.ThermalState { @objc get }

  /**
    - Selector: userName
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var userName: String { @objc get }
}

extension ProcessInfo: ProcessInfoExports {
}
