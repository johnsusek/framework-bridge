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
    - Selector: NSFontCollection
    - Introduced: 10.7
  */

@objc(NSFontCollection) protocol NSFontCollectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: fontCollectionWithDescriptors:
  */
  @objc static func createWithDescriptors(_ descriptors: [NSFontDescriptor]) -> NSFontCollection

  /**
    - Selector: fontCollectionWithLocale:
  */
  @objc static func createWithLocale(_ locale: Locale) -> NSFontCollection?

  /**
    - Selector: fontCollectionWithName:
  */
  @objc static func createWithName(_ name: NSFontCollection.Name) -> NSFontCollection?

  /**
    - Selector: fontCollectionWithName:visibility:
  */
  @objc static func createWithNameWithVisibility(_ name: NSFontCollection.Name, _ visibility: NSFontCollection.Visibility) -> NSFontCollection?

  /**
    - Selector: hideFontCollectionWithName:visibility:error:
  */
  // throws - @objc static func hideFontCollectionWithName(name: NSFontCollection.Name, visibility: NSFontCollection.Visibility) -> Bool

  /**
    - Selector: renameFontCollectionWithName:visibility:toName:error:
  */
  // throws - @objc (renameFontCollectionWithName:visibility:toName:error:) static func rename(name: NSFontCollection.Name, fromName: NSFontCollection.Visibility, visibility: NSFontCollection.Name) -> Bool

  /**
    - Selector: showFontCollection:withName:visibility:error:
  */
  // throws - @objc static func showFontCollection(collection: NSFontCollection, withName: NSFontCollection.Name, visibility: NSFontCollection.Visibility) -> Bool

  // Own Static Properties

  /**
    - Selector: allFontCollectionNames
  */
  @objc static var allFontCollectionNames: [NSFontCollection.Name] { @objc get }

  /**
    - Selector: fontCollectionWithAllAvailableDescriptors
  */
  @objc static var withAllAvailableDescriptors: NSFontCollection { @objc (fontCollectionWithAllAvailableDescriptors) get }

  // Instance Methods

  /**
    - Selector: matchingDescriptorsForFamily:
  */
  @objc (matchingDescriptorsForFamily:) func matchingDescriptors(forFamily: String) -> [NSFontDescriptor]?

  /**
    - Selector: matchingDescriptorsForFamily:options:
  */
  @objc (matchingDescriptorsForFamily:options:) func matchingDescriptors(forFamily: String, options: [NSFontCollectionMatchingOptionKey: NSNumber]?) -> [NSFontDescriptor]?

  /**
    - Selector: matchingDescriptorsWithOptions:
  */
  @objc (matchingDescriptorsWithOptions:) func matchingDescriptors(options: [NSFontCollectionMatchingOptionKey: NSNumber]?) -> [NSFontDescriptor]?

  // Own Instance Properties

  /**
    - Selector: exclusionDescriptors
  */
  @objc var exclusionDescriptors: [NSFontDescriptor]? { @objc get }

  /**
    - Selector: matchingDescriptors
  */
  @objc var matchingDescriptors: [NSFontDescriptor]? { @objc get }

  /**
    - Selector: queryDescriptors
  */
  @objc var queryDescriptors: [NSFontDescriptor]? { @objc get }
}

extension NSFontCollection: NSFontCollectionExports {

  /**
    - Selector: fontCollectionWithDescriptors:
  */
  @objc public static func createWithDescriptors(_ descriptors: [NSFontDescriptor]) -> NSFontCollection {
    return self.init(descriptors: descriptors)
  }


  /**
    - Selector: fontCollectionWithLocale:
  */
  @objc public static func createWithLocale(_ locale: Locale) -> NSFontCollection? {
    return self.init(locale: locale)
  }


  /**
    - Selector: fontCollectionWithName:
  */
  @objc public static func createWithName(_ name: NSFontCollection.Name) -> NSFontCollection? {
    return self.init(name: name)
  }


  /**
    - Selector: fontCollectionWithName:visibility:
  */
  @objc public static func createWithNameWithVisibility(_ name: NSFontCollection.Name, _ visibility: NSFontCollection.Visibility) -> NSFontCollection? {
    return self.init(name: name, visibility: visibility)
  }

}
