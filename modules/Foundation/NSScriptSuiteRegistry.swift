import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptSuiteRegistry
    - name: NSScriptSuiteRegistry
    - argLabels: 
  */

@objc(NSScriptSuiteRegistry) protocol NSScriptSuiteRegistryExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: setShared
    - name: setSharedScriptSuiteRegistry:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setShared(_:)
  */
  @objc (setSharedScriptSuiteRegistry:) static func setShared(_: NSScriptSuiteRegistry)

  /**
    - jsName: shared
    - name: sharedScriptSuiteRegistry
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shared()
  */
  @objc (sharedScriptSuiteRegistry) static func shared() -> NSScriptSuiteRegistry

  // Instance Methods

  /**
    - jsName: aeteResource
    - name: aeteResource:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func aeteResource(_: String) -> Data?

  /**
    - jsName: appleEventCode
    - name: appleEventCodeForSuite:
    - argLabels: forSuite
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appleEventCode(forSuite:)
  */
  @objc (appleEventCodeForSuite:) func appleEventCode(forSuite: String) -> FourCharCode

  /**
    - jsName: bundle
    - name: bundleForSuite:
    - argLabels: forSuite
    - constructorTokens: 
    - obsoleted: 3
    - renamed: bundle(forSuite:)
  */
  @objc (bundleForSuite:) func bundle(forSuite: String) -> Bundle?

  /**
    - jsName: classDescription
    - name: classDescriptionWithAppleEventCode:
    - argLabels: withAppleEventCode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: classDescription(withAppleEventCode:)
  */
  @objc (classDescriptionWithAppleEventCode:) func classDescription(withAppleEventCode: FourCharCode) -> NSScriptClassDescription?

  /**
    - jsName: classDescriptions
    - name: classDescriptionsInSuite:
    - argLabels: inSuite
    - constructorTokens: 
    - obsoleted: 3
    - renamed: classDescriptions(inSuite:)
  */
  @objc (classDescriptionsInSuite:) func classDescriptions(inSuite: String) -> [String: NSScriptClassDescription]?

  /**
    - jsName: commandDescription
    - name: commandDescriptionWithAppleEventClass:andAppleEventCode:
    - argLabels: withAppleEventClass, andAppleEventCode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: commandDescription(withAppleEventClass:andAppleEventCode:)
  */
  @objc (commandDescriptionWithAppleEventClass:andAppleEventCode:) func commandDescription(withAppleEventClass: FourCharCode, andAppleEventCode: FourCharCode) -> NSScriptCommandDescription?

  /**
    - jsName: commandDescriptions
    - name: commandDescriptionsInSuite:
    - argLabels: inSuite
    - constructorTokens: 
    - obsoleted: 3
    - renamed: commandDescriptions(inSuite:)
  */
  @objc (commandDescriptionsInSuite:) func commandDescriptions(inSuite: String) -> [String: NSScriptCommandDescription]?

  /**
    - jsName: loadSuite
    - name: loadSuiteWithDictionary:fromBundle:
    - argLabels: with, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: loadSuite(with:from:)
  */
  @objc (loadSuiteWithDictionary:fromBundle:) func loadSuite(with: [AnyHashable: Any], from: Bundle)

  /**
    - jsName: loadSuites
    - name: loadSuitesFromBundle:
    - argLabels: from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: loadSuites(from:)
  */
  @objc (loadSuitesFromBundle:) func loadSuites(from: Bundle)

  /**
    - jsName: register
    - name: registerClassDescription:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:)
  */
  @objc (registerClassDescription:) func register(_: NSScriptClassDescription)

  /**
    - jsName: register
    - name: registerCommandDescription:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:)
  */
  @objc (registerCommandDescription:) func register(_: NSScriptCommandDescription)

  /**
    - jsName: suite
    - name: suiteForAppleEventCode:
    - argLabels: forAppleEventCode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: suite(forAppleEventCode:)
  */
  @objc (suiteForAppleEventCode:) func suite(forAppleEventCode: FourCharCode) -> String?

  // Own Instance Properties

  /**
    - jsName: suiteNames
    - name: suiteNames
    - argLabels: 
  */
  @objc var suiteNames: [String] { @objc get }
}

extension NSScriptSuiteRegistry: NSScriptSuiteRegistryExports {
}
