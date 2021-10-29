import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptClassDescription
    - name: NSScriptClassDescription
    - argLabels: 
  */

@objc(NSScriptClassDescription) protocol NSScriptClassDescriptionExports: JSExport, NSClassDescriptionExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: appleEventCode
    - name: appleEventCodeForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appleEventCode(forKey:)
  */
  @objc (appleEventCodeForKey:) func appleEventCode(forKey: String) -> FourCharCode

  /**
    - jsName: forKey
    - name: classDescriptionForKey:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: forKey(_:)
  */
  @objc (classDescriptionForKey:) func forKey(_: String) -> NSScriptClassDescription?

  /**
    - jsName: hasOrderedToManyRelationship
    - name: hasOrderedToManyRelationshipForKey:
    - argLabels: forKey
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: hasOrderedToManyRelationship(forKey:)
    - Introduced: 10.5
  */
  @objc (hasOrderedToManyRelationshipForKey:) @available(OSX 10.5, *) func hasOrderedToManyRelationship(forKey: String) -> Bool

  /**
    - jsName: hasProperty
    - name: hasPropertyForKey:
    - argLabels: forKey
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: hasProperty(forKey:)
    - Introduced: 10.5
  */
  @objc (hasPropertyForKey:) @available(OSX 10.5, *) func hasProperty(forKey: String) -> Bool

  /**
    - jsName: hasReadableProperty
    - name: hasReadablePropertyForKey:
    - argLabels: forKey
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: hasReadableProperty(forKey:)
    - Introduced: 10.5
  */
  @objc (hasReadablePropertyForKey:) @available(OSX 10.5, *) func hasReadableProperty(forKey: String) -> Bool

  /**
    - jsName: hasWritableProperty
    - name: hasWritablePropertyForKey:
    - argLabels: forKey
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: hasWritableProperty(forKey:)
    - Introduced: 10.5
  */
  @objc (hasWritablePropertyForKey:) @available(OSX 10.5, *) func hasWritableProperty(forKey: String) -> Bool

  /**
    - jsName: createWithSuiteName
    - name: initWithSuiteName:className:dictionary:
    - argLabels: className, dictionary
    - constructorTokens: suiteName, className, dictionary
  */
  @objc static func createWithSuiteName(_: String, className: String, dictionary: [AnyHashable: Any]?) -> Self?

  /**
    - jsName: isLocationRequiredToCreate
    - name: isLocationRequiredToCreateForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isLocationRequiredToCreate(forKey:)
  */
  @objc (isLocationRequiredToCreateForKey:) func isLocationRequiredToCreate(forKey: String) -> Bool

  /**
    - jsName: key
    - name: keyWithAppleEventCode:
    - argLabels: withAppleEventCode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: key(withAppleEventCode:)
  */
  @objc (keyWithAppleEventCode:) func key(withAppleEventCode: FourCharCode) -> String?

  /**
    - jsName: matchesAppleEventCode
    - name: matchesAppleEventCode:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func matchesAppleEventCode(_: FourCharCode) -> Bool

  /**
    - jsName: selector
    - name: selectorForCommand:
    - argLabels: forCommand
    - constructorTokens: 
    - obsoleted: 3
    - renamed: selector(forCommand:)
  */
  @objc (selectorForCommand:) func selector(forCommand: NSScriptCommandDescription) -> Selector?

  /**
    - jsName: supportsCommand
    - name: supportsCommand:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func supportsCommand(_: NSScriptCommandDescription) -> Bool

  /**
    - jsName: type
    - name: typeForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: type(forKey:)
  */
  @objc (typeForKey:) func type(forKey: String) -> String?

  // Own Instance Properties

  /**
    - jsName: appleEventCode
    - name: appleEventCode
    - argLabels: 
  */
  @objc var appleEventCode: FourCharCode { @objc get }

  /**
    - jsName: defaultSubcontainerAttributeKey
    - name: defaultSubcontainerAttributeKey
    - argLabels: 
  */
  @objc var defaultSubcontainerAttributeKey: String? { @objc get }

  /**
    - jsName: implementationClassName
    - name: implementationClassName
    - argLabels: 
  */
  @objc var implementationClassName: String? { @objc get }

  /**
    - jsName: suiteName
    - name: suiteName
    - argLabels: 
  */
  @objc var suiteName: String? { @objc get }

  /**
    - jsName: superclass
    - name: superclassDescription
    - argLabels: 
    - obsoleted: 3
    - renamed: superclass
  */
  @objc var superclass: NSScriptClassDescription? { @objc (superclassDescription) get }
}

extension NSScriptClassDescription: NSScriptClassDescriptionExports {
  @objc public static func createWithSuiteName(_ suiteName: String, className: String, dictionary: [AnyHashable: Any]?) -> Self? {
    return self.init(suiteName: suiteName, className: className, dictionary: dictionary)
  }

}
