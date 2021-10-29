import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFontCollection
    - name: NSFontCollection
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSFontCollection) protocol NSFontCollectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: fontCollectionWithDescriptors:
    - argLabels: descriptors
    - constructorTokens: 
    - unavailable: true
    - renamed: init(descriptors:)
    - message: Not available in Swift
  */
  @objc static func create(descriptors: [NSFontDescriptor]) -> NSFontCollection

  /**
    - jsName: create
    - name: fontCollectionWithLocale:
    - argLabels: locale
    - constructorTokens: 
    - unavailable: true
    - renamed: init(locale:)
    - message: Not available in Swift
  */
  @objc static func create(locale: Locale) -> NSFontCollection?

  /**
    - jsName: create
    - name: fontCollectionWithName:
    - argLabels: name
    - constructorTokens: 
    - unavailable: true
    - renamed: init(name:)
    - message: Not available in Swift
  */
  @objc static func create(name: NSFontCollection.Name) -> NSFontCollection?

  /**
    - jsName: create
    - name: fontCollectionWithName:visibility:
    - argLabels: name, visibility
    - constructorTokens: 
    - unavailable: true
    - renamed: init(name:visibility:)
    - message: Not available in Swift
  */
  @objc static func create(name: NSFontCollection.Name, visibility: NSFontCollection.Visibility) -> NSFontCollection?

  /**
    - jsName: hideFontCollectionWithName
    - name: hideFontCollectionWithName:visibility:error:
    - argLabels: visibility, error
    - constructorTokens: 
  */
  // throws - @objc static func hideFontCollectionWithName(visibility: NSFontCollection.Name, error: NSFontCollection.Visibility) -> Bool

  /**
    - jsName: rename
    - name: renameFontCollectionWithName:visibility:toName:error:
    - argLabels: fromName, visibility, toName
    - constructorTokens: 
  */
  // throws - @objc (renameFontCollectionWithName:visibility:toName:error:) static func rename(fromName: NSFontCollection.Name, visibility: NSFontCollection.Visibility, toName: NSFontCollection.Name) -> Bool

  /**
    - jsName: showFontCollection
    - name: showFontCollection:withName:visibility:error:
    - argLabels: withName, visibility, error
    - constructorTokens: 
  */
  // throws - @objc static func showFontCollection(withName: NSFontCollection, visibility: NSFontCollection.Name, error: NSFontCollection.Visibility) -> Bool

  // Own Static Properties

  /**
    - jsName: allFontCollectionNames
    - name: allFontCollectionNames
    - argLabels: 
  */
  @objc static var allFontCollectionNames: [NSFontCollection.Name] { @objc get }

  /**
    - jsName: withAllAvailableDescriptors
    - name: fontCollectionWithAllAvailableDescriptors
    - argLabels: 
    - obsoleted: 3
    - renamed: withAllAvailableDescriptors
  */
  @objc static var withAllAvailableDescriptors: NSFontCollection { @objc (fontCollectionWithAllAvailableDescriptors) get }

  // Instance Methods

  /**
    - jsName: matchingDescriptors
    - name: matchingDescriptorsForFamily:
    - argLabels: forFamily
    - constructorTokens: 
    - obsoleted: 3
    - renamed: matchingDescriptors(forFamily:)
  */
  @objc (matchingDescriptorsForFamily:) func matchingDescriptors(forFamily: String) -> [NSFontDescriptor]?

  /**
    - jsName: matchingDescriptors
    - name: matchingDescriptorsForFamily:options:
    - argLabels: forFamily, options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: matchingDescriptors(forFamily:options:)
  */
  @objc (matchingDescriptorsForFamily:options:) func matchingDescriptors(forFamily: String, options: [NSFontCollectionMatchingOptionKey: NSNumber]?) -> [NSFontDescriptor]?

  /**
    - jsName: matchingDescriptors
    - name: matchingDescriptorsWithOptions:
    - argLabels: options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: matchingDescriptors(options:)
  */
  @objc (matchingDescriptorsWithOptions:) func matchingDescriptors(options: [NSFontCollectionMatchingOptionKey: NSNumber]?) -> [NSFontDescriptor]?

  // Own Instance Properties

  /**
    - jsName: exclusionDescriptors
    - name: exclusionDescriptors
    - argLabels: 
  */
  @objc var exclusionDescriptors: [NSFontDescriptor]? { @objc get }

  /**
    - jsName: matchingDescriptors
    - name: matchingDescriptors
    - argLabels: 
  */
  @objc var matchingDescriptors: [NSFontDescriptor]? { @objc get }

  /**
    - jsName: queryDescriptors
    - name: queryDescriptors
    - argLabels: 
  */
  @objc var queryDescriptors: [NSFontDescriptor]? { @objc get }
}

extension NSFontCollection: NSFontCollectionExports {
  @objc public static func create(descriptors: [NSFontDescriptor]) -> NSFontCollection {
    return self.init(descriptors: descriptors)
  }

  @objc public static func create(locale: Locale) -> NSFontCollection? {
    return self.init(locale: locale)
  }

  @objc public static func create(name: NSFontCollection.Name) -> NSFontCollection? {
    return self.init(name: name)
  }

  @objc public static func create(name: NSFontCollection.Name, visibility: NSFontCollection.Visibility) -> NSFontCollection? {
    return self.init(name: name, visibility: visibility)
  }

}
