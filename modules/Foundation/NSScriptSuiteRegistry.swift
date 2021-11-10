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
    - Selector: NSScriptSuiteRegistry
  */

@objc(NSScriptSuiteRegistry) protocol NSScriptSuiteRegistryExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: setSharedScriptSuiteRegistry:
  */
  @objc (setSharedScriptSuiteRegistry:) static func setShared(_: NSScriptSuiteRegistry)

  /**
    - Selector: sharedScriptSuiteRegistry
  */
  @objc (sharedScriptSuiteRegistry) static func shared() -> NSScriptSuiteRegistry

  // Instance Methods

  /**
    - Selector: aeteResource:
  */
  @objc func aeteResource(_: String) -> Data?

  /**
    - Selector: appleEventCodeForSuite:
  */
  @objc (appleEventCodeForSuite:) func appleEventCode(forSuite: String) -> FourCharCode

  /**
    - Selector: bundleForSuite:
  */
  @objc (bundleForSuite:) func bundle(forSuite: String) -> Bundle?

  /**
    - Selector: classDescriptionWithAppleEventCode:
  */
  @objc (classDescriptionWithAppleEventCode:) func classDescription(withAppleEventCode: FourCharCode) -> NSScriptClassDescription?

  /**
    - Selector: classDescriptionsInSuite:
  */
  @objc (classDescriptionsInSuite:) func classDescriptions(inSuite: String) -> [String: NSScriptClassDescription]?

  /**
    - Selector: commandDescriptionWithAppleEventClass:andAppleEventCode:
  */
  @objc (commandDescriptionWithAppleEventClass:andAppleEventCode:) func commandDescription(withAppleEventClass: FourCharCode, andAppleEventCode: FourCharCode) -> NSScriptCommandDescription?

  /**
    - Selector: commandDescriptionsInSuite:
  */
  @objc (commandDescriptionsInSuite:) func commandDescriptions(inSuite: String) -> [String: NSScriptCommandDescription]?

  /**
    - Selector: loadSuiteWithDictionary:fromBundle:
  */
  @objc (loadSuiteWithDictionary:fromBundle:) func loadSuite(with: [AnyHashable: Any], from: Bundle)

  /**
    - Selector: loadSuitesFromBundle:
  */
  @objc (loadSuitesFromBundle:) func loadSuites(from: Bundle)

  /**
    - Selector: registerClassDescription:
  */
  @objc (registerClassDescription:) func register(_: NSScriptClassDescription)

  /**
    - Selector: registerCommandDescription:
  */
  @objc (registerCommandDescription:) func register(_: NSScriptCommandDescription)

  /**
    - Selector: suiteForAppleEventCode:
  */
  @objc (suiteForAppleEventCode:) func suite(forAppleEventCode: FourCharCode) -> String?

  // Own Instance Properties

  /**
    - Selector: suiteNames
  */
  @objc var suiteNames: [String] { @objc get }
}

extension NSScriptSuiteRegistry: NSScriptSuiteRegistryExports {
}
