import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSMutableFontCollection
    - Introduced: 10.7
  */

@objc(NSMutableFontCollection) protocol NSMutableFontCollectionExports: JSExport, NSFontCollectionExports {
  // Static Methods

  /**
    - Selector: hideFontCollectionWithName:visibility:error:
  */
  // throws - @objc static func hideFontCollectionWithName(visibility: NSFontCollection.Name, error: NSFontCollection.Visibility) -> Bool

  /**
    - Selector: renameFontCollectionWithName:visibility:toName:error:
  */
  // throws - @objc (renameFontCollectionWithName:visibility:toName:error:) static func rename(fromName: NSFontCollection.Name, visibility: NSFontCollection.Visibility, toName: NSFontCollection.Name) -> Bool

  /**
    - Selector: showFontCollection:withName:visibility:error:
  */
  // throws - @objc static func showFontCollection(withName: NSFontCollection, visibility: NSFontCollection.Name, error: NSFontCollection.Visibility) -> Bool

  // Own Static Properties

  /**
    - Selector: fontCollectionWithAllAvailableDescriptors
  */
  @objc static var withAllAvailableDescriptors: NSMutableFontCollection { @objc (fontCollectionWithAllAvailableDescriptors) get }

  // Instance Methods

  /**
    - Selector: addQueryForDescriptors:
  */
  @objc (addQueryForDescriptors:) func addQuery(`for`: [NSFontDescriptor])

  /**
    - Selector: removeQueryForDescriptors:
  */
  @objc (removeQueryForDescriptors:) func removeQuery(`for`: [NSFontDescriptor])

  // Own Instance Properties

  /**
    - Selector: exclusionDescriptors
  */
  @objc var exclusionDescriptors: [NSFontDescriptor]? { @objc get @objc (setExclusionDescriptors:) set }

  /**
    - Selector: queryDescriptors
  */
  @objc var queryDescriptors: [NSFontDescriptor]? { @objc get @objc (setQueryDescriptors:) set }
}

extension NSMutableFontCollection: NSMutableFontCollectionExports {
}
