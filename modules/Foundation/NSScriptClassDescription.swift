import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSScriptClassDescription
  */

@objc(NSScriptClassDescription) protocol NSScriptClassDescriptionExports: JSExport, NSClassDescriptionExports {
  // Static Methods

  /**
    - Selector: invalidateClassDescriptionCache
  */
  @objc static func invalidateClassDescriptionCache()

  /**
    - Selector: registerClassDescription:forClass:
  */
  @objc (registerClassDescription:forClass:) static func register(_: NSClassDescription, `for`: AnyClass)

  // Instance Methods

  /**
    - Selector: appleEventCodeForKey:
  */
  @objc (appleEventCodeForKey:) func appleEventCode(forKey: String) -> FourCharCode

  /**
    - Selector: classDescriptionForKey:
  */
  @objc (classDescriptionForKey:) func forKey(_: String) -> NSScriptClassDescription?

  /**
    - Selector: hasOrderedToManyRelationshipForKey:
    - Introduced: 10.5
  */
  @objc (hasOrderedToManyRelationshipForKey:) @available(OSX 10.5, *) func hasOrderedToManyRelationship(forKey: String) -> Bool

  /**
    - Selector: hasPropertyForKey:
    - Introduced: 10.5
  */
  @objc (hasPropertyForKey:) @available(OSX 10.5, *) func hasProperty(forKey: String) -> Bool

  /**
    - Selector: hasReadablePropertyForKey:
    - Introduced: 10.5
  */
  @objc (hasReadablePropertyForKey:) @available(OSX 10.5, *) func hasReadableProperty(forKey: String) -> Bool

  /**
    - Selector: hasWritablePropertyForKey:
    - Introduced: 10.5
  */
  @objc (hasWritablePropertyForKey:) @available(OSX 10.5, *) func hasWritableProperty(forKey: String) -> Bool

  /**
    - Selector: initWithSuiteName:className:dictionary:
  */
  @objc static func createWithSuiteName(_: String, className: String, dictionary: [AnyHashable: Any]?) -> Self?

  /**
    - Selector: isLocationRequiredToCreateForKey:
  */
  @objc (isLocationRequiredToCreateForKey:) func isLocationRequiredToCreate(forKey: String) -> Bool

  /**
    - Selector: keyWithAppleEventCode:
  */
  @objc (keyWithAppleEventCode:) func key(withAppleEventCode: FourCharCode) -> String?

  /**
    - Selector: matchesAppleEventCode:
  */
  @objc func matchesAppleEventCode(_: FourCharCode) -> Bool

  /**
    - Selector: selectorForCommand:
  */
  @objc (selectorForCommand:) func selector(forCommand: NSScriptCommandDescription) -> Selector?

  /**
    - Selector: supportsCommand:
  */
  @objc func supportsCommand(_: NSScriptCommandDescription) -> Bool

  /**
    - Selector: typeForKey:
  */
  @objc (typeForKey:) func type(forKey: String) -> String?

  // Own Instance Properties

  /**
    - Selector: appleEventCode
  */
  @objc var appleEventCode: FourCharCode { @objc get }

  /**
    - Selector: defaultSubcontainerAttributeKey
  */
  @objc var defaultSubcontainerAttributeKey: String? { @objc get }

  /**
    - Selector: implementationClassName
  */
  @objc var implementationClassName: String? { @objc get }

  /**
    - Selector: suiteName
  */
  @objc var suiteName: String? { @objc get }

  /**
    - Selector: superclassDescription
  */
  @objc var superclass: NSScriptClassDescription? { @objc (superclassDescription) get }
}

extension NSScriptClassDescription: NSScriptClassDescriptionExports {
  @objc public static func createWithSuiteName(_ suiteName: String, className: String, dictionary: [AnyHashable: Any]?) -> Self? {
    return self.init(suiteName: suiteName, className: className, dictionary: dictionary)
  }

}
