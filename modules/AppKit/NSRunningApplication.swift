import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSRunningApplication
    - name: NSRunningApplication
    - argLabels: 
    - Introduced: 10.6
  */

@objc(NSRunningApplication) protocol NSRunningApplicationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: runningApplicationWithProcessIdentifier:
    - argLabels: processIdentifier
    - constructorTokens: 
    - unavailable: true
    - renamed: init(processIdentifier:)
    - message: Not available in Swift
  */
  @objc static func create(processIdentifier: Int32) -> Self?

  /**
    - jsName: runningApplications
    - name: runningApplicationsWithBundleIdentifier:
    - argLabels: withBundleIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: runningApplications(withBundleIdentifier:)
  */
  @objc (runningApplicationsWithBundleIdentifier:) static func runningApplications(withBundleIdentifier: String) -> [NSRunningApplication]

  /**
    - jsName: terminateAutomaticallyTerminableApplications
    - name: terminateAutomaticallyTerminableApplications
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func terminateAutomaticallyTerminableApplications()

  // Own Static Properties

  /**
    - jsName: current
    - name: currentApplication
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSRunningApplication { @objc (currentApplication) get }

  // Instance Methods

  /**
    - jsName: activate
    - name: activateWithOptions:
    - argLabels: options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: activate(options:)
  */
  @objc (activateWithOptions:) func activate(options: NSApplication.ActivationOptions) -> Bool

  /**
    - jsName: forceTerminate
    - name: forceTerminate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func forceTerminate() -> Bool

  /**
    - jsName: hide
    - name: hide
    - argLabels: 
    - constructorTokens: 
  */
  @objc func hide() -> Bool

  /**
    - jsName: terminate
    - name: terminate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func terminate() -> Bool

  /**
    - jsName: unhide
    - name: unhide
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unhide() -> Bool

  // Own Instance Properties

  /**
    - jsName: activationPolicy
    - name: activationPolicy
    - argLabels: 
  */
  @objc var activationPolicy: NSApplication.ActivationPolicy { @objc get }

  /**
    - jsName: isActive
    - name: active
    - argLabels: 
    - obsoleted: 3
    - renamed: isActive
  */
  @objc var isActive: Bool { @objc get }

  /**
    - jsName: bundleIdentifier
    - name: bundleIdentifier
    - argLabels: 
  */
  @objc var bundleIdentifier: String? { @objc get }

  /**
    - jsName: bundleURL
    - name: bundleURL
    - argLabels: 
  */
  @objc var bundleURL: URL? { @objc get }

  /**
    - jsName: executableArchitecture
    - name: executableArchitecture
    - argLabels: 
  */
  @objc var executableArchitecture: Int { @objc get }

  /**
    - jsName: executableURL
    - name: executableURL
    - argLabels: 
  */
  @objc var executableURL: URL? { @objc get }

  /**
    - jsName: isFinishedLaunching
    - name: finishedLaunching
    - argLabels: 
    - obsoleted: 3
    - renamed: isFinishedLaunching
  */
  @objc var isFinishedLaunching: Bool { @objc get }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isHidden
  */
  @objc var isHidden: Bool { @objc get }

  /**
    - jsName: icon
    - name: icon
    - argLabels: 
  */
  @objc var icon: NSImage? { @objc get }

  /**
    - jsName: launchDate
    - name: launchDate
    - argLabels: 
  */
  @objc var launchDate: Date? { @objc get }

  /**
    - jsName: localizedName
    - name: localizedName
    - argLabels: 
  */
  @objc var localizedName: String? { @objc get }

  /**
    - jsName: ownsMenuBar
    - name: ownsMenuBar
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var ownsMenuBar: Bool { @objc get }

  /**
    - jsName: processIdentifier
    - name: processIdentifier
    - argLabels: 
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - jsName: isTerminated
    - name: terminated
    - argLabels: 
    - obsoleted: 3
    - renamed: isTerminated
  */
  @objc var isTerminated: Bool { @objc get }
}

extension NSRunningApplication: NSRunningApplicationExports {
  @objc public static func create(processIdentifier: Int32) -> Self? {
    return self.init(processIdentifier: processIdentifier)
  }

}
