import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSRunningApplication
    - Introduced: 10.6
  */

@objc(NSRunningApplication) protocol NSRunningApplicationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: runningApplicationWithProcessIdentifier:
  */
  @objc static func createWithRunningApplicationWithProcessIdentifier(_ processIdentifier: Int32) -> Self?

  /**
    - Selector: runningApplicationsWithBundleIdentifier:
  */
  @objc (runningApplicationsWithBundleIdentifier:) static func runningApplications(withBundleIdentifier: String) -> [NSRunningApplication]

  /**
    - Selector: terminateAutomaticallyTerminableApplications
  */
  @objc static func terminateAutomaticallyTerminableApplications()

  // Own Static Properties

  /**
    - Selector: currentApplication
  */
  @objc static var current: NSRunningApplication { @objc (currentApplication) get }

  // Instance Methods

  /**
    - Selector: activateWithOptions:
  */
  @objc (activateWithOptions:) func activate(options: NSApplication.ActivationOptions) -> Bool

  /**
    - Selector: forceTerminate
  */
  @objc func forceTerminate() -> Bool

  /**
    - Selector: hide
  */
  @objc func hide() -> Bool

  /**
    - Selector: terminate
  */
  @objc func terminate() -> Bool

  /**
    - Selector: unhide
  */
  @objc func unhide() -> Bool

  // Own Instance Properties

  /**
    - Selector: activationPolicy
  */
  @objc var activationPolicy: NSApplication.ActivationPolicy { @objc get }

  /**
    - Selector: active
  */
  @objc var isActive: Bool { @objc get }

  /**
    - Selector: bundleIdentifier
  */
  @objc var bundleIdentifier: String? { @objc get }

  /**
    - Selector: bundleURL
  */
  @objc var bundleURL: URL? { @objc get }

  /**
    - Selector: executableArchitecture
  */
  @objc var executableArchitecture: Int { @objc get }

  /**
    - Selector: executableURL
  */
  @objc var executableURL: URL? { @objc get }

  /**
    - Selector: finishedLaunching
  */
  @objc var isFinishedLaunching: Bool { @objc get }

  /**
    - Selector: hidden
  */
  @objc var isHidden: Bool { @objc get }

  /**
    - Selector: icon
  */
  @objc var icon: NSImage? { @objc get }

  /**
    - Selector: launchDate
  */
  @objc var launchDate: Date? { @objc get }

  /**
    - Selector: localizedName
  */
  @objc var localizedName: String? { @objc get }

  /**
    - Selector: ownsMenuBar
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var ownsMenuBar: Bool { @objc get }

  /**
    - Selector: processIdentifier
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - Selector: terminated
  */
  @objc var isTerminated: Bool { @objc get }
}

extension NSRunningApplication: NSRunningApplicationExports {

  /**
    - Selector: runningApplicationWithProcessIdentifier:
  */
  @objc public static func createWithRunningApplicationWithProcessIdentifier(_ processIdentifier: Int32) -> Self? {
    return self.init(processIdentifier: processIdentifier)
  }

}
