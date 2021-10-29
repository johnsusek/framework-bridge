import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMutableFontCollection
    - name: NSMutableFontCollection
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSMutableFontCollection) protocol NSMutableFontCollectionExports: JSExport, NSFontCollectionExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: withAllAvailableDescriptors
    - name: fontCollectionWithAllAvailableDescriptors
    - argLabels: 
    - obsoleted: 3
    - renamed: withAllAvailableDescriptors
  */
  @objc static var withAllAvailableDescriptors: NSMutableFontCollection { @objc (fontCollectionWithAllAvailableDescriptors) get }

  // Instance Methods

  /**
    - jsName: addQuery
    - name: addQueryForDescriptors:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addQuery(for:)
  */
  @objc (addQueryForDescriptors:) func addQuery(`for`: [NSFontDescriptor])

  /**
    - jsName: removeQuery
    - name: removeQueryForDescriptors:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeQuery(for:)
  */
  @objc (removeQueryForDescriptors:) func removeQuery(`for`: [NSFontDescriptor])

  // Own Instance Properties

  /**
    - jsName: exclusionDescriptors
    - name: exclusionDescriptors
    - argLabels: 
  */
  @objc var exclusionDescriptors: [NSFontDescriptor]? { @objc get @objc (setExclusionDescriptors:) set }

  /**
    - jsName: queryDescriptors
    - name: queryDescriptors
    - argLabels: 
  */
  @objc var queryDescriptors: [NSFontDescriptor]? { @objc get @objc (setQueryDescriptors:) set }
}

extension NSMutableFontCollection: NSMutableFontCollectionExports {
}
