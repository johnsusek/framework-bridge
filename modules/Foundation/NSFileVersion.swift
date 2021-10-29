import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSFileVersion
    - name: NSFileVersion
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSFileVersion) protocol NSFileVersionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: addVersionOfItemAtURL
    - name: addVersionOfItemAtURL:withContentsOfURL:options:error:
    - argLabels: withContentsOfURL, options, error
    - constructorTokens: 
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) static func addVersionOfItemAtURL(withContentsOfURL: URL, options: URL, error: NSFileVersion.AddingOptions) -> NSFileVersion?

  /**
    - jsName: currentVersionOfItem
    - name: currentVersionOfItemAtURL:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: currentVersionOfItem(at:)
  */
  @objc (currentVersionOfItemAtURL:) static func currentVersionOfItem(at: URL) -> NSFileVersion?

  /**
    - jsName: getNonlocalVersionsOfItem
    - name: getNonlocalVersionsOfItemAtURL:completionHandler:
    - argLabels: at, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getNonlocalVersionsOfItem(at:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (getNonlocalVersionsOfItemAtURL:completionHandler:) @available(OSX 10.10, *) static func getNonlocalVersionsOfItem(at: URL, completionHandler: JSValue)

  /**
    - jsName: otherVersionsOfItem
    - name: otherVersionsOfItemAtURL:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: otherVersionsOfItem(at:)
  */
  @objc (otherVersionsOfItemAtURL:) static func otherVersionsOfItem(at: URL) -> [NSFileVersion]?

  /**
    - jsName: removeOtherVersionsOfItemAtURL
    - name: removeOtherVersionsOfItemAtURL:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc static func removeOtherVersionsOfItemAtURL(error: URL) -> Bool

  /**
    - jsName: temporaryDirectoryURLForNewVersionOfItem
    - name: temporaryDirectoryURLForNewVersionOfItemAtURL:
    - argLabels: at
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: temporaryDirectoryURLForNewVersionOfItem(at:)
    - Introduced: 10.7
  */
  @objc (temporaryDirectoryURLForNewVersionOfItemAtURL:) @available(OSX 10.7, *) static func temporaryDirectoryURLForNewVersionOfItem(at: URL) -> URL

  /**
    - jsName: unresolvedConflictVersionsOfItem
    - name: unresolvedConflictVersionsOfItemAtURL:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: unresolvedConflictVersionsOfItem(at:)
  */
  @objc (unresolvedConflictVersionsOfItemAtURL:) static func unresolvedConflictVersionsOfItem(at: URL) -> [NSFileVersion]?

  /**
    - jsName: version
    - name: versionOfItemAtURL:forPersistentIdentifier:
    - argLabels: itemAt, forPersistentIdentifier
    - constructorTokens: 
    - unavailable: true
    - renamed: version(itemAt:forPersistentIdentifier:)
    - message: Not available in Swift
  */
  @objc (versionOfItemAtURL:forPersistentIdentifier:) static func version(itemAt: URL, forPersistentIdentifier: Any) -> NSFileVersion?

  // Instance Methods

  /**
    - jsName: removeAndReturnError
    - name: removeAndReturnError:
    - argLabels: 
    - constructorTokens: 
  */
  // throws - @objc func removeAndReturnError() -> Bool

  /**
    - jsName: replaceItemAtURL
    - name: replaceItemAtURL:options:error:
    - argLabels: options, error
    - constructorTokens: 
  */
  // throws - @objc func replaceItemAtURL(options: URL, error: NSFileVersion.ReplacingOptions) -> URL?

  // Own Instance Properties

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
  */
  @objc var url: URL { @objc (URL) get }

  /**
    - jsName: isConflict
    - name: conflict
    - argLabels: 
    - obsoleted: 3
    - renamed: isConflict
  */
  @objc var isConflict: Bool { @objc get }

  /**
    - jsName: isDiscardable
    - name: discardable
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isDiscardable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isDiscardable: Bool { @objc get @objc (setDiscardable:) set }

  /**
    - jsName: hasLocalContents
    - name: hasLocalContents
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var hasLocalContents: Bool { @objc get }

  /**
    - jsName: hasThumbnail
    - name: hasThumbnail
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var hasThumbnail: Bool { @objc get }

  /**
    - jsName: localizedName
    - name: localizedName
    - argLabels: 
  */
  @objc var localizedName: String? { @objc get }

  /**
    - jsName: localizedNameOfSavingComputer
    - name: localizedNameOfSavingComputer
    - argLabels: 
  */
  @objc var localizedNameOfSavingComputer: String? { @objc get }

  /**
    - jsName: modificationDate
    - name: modificationDate
    - argLabels: 
  */
  @objc var modificationDate: Date? { @objc get }

  /**
    - jsName: originatorNameComponents
    - name: originatorNameComponents
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var originatorNameComponents: PersonNameComponents? { @objc get }

  /**
    - jsName: persistentIdentifier
    - name: persistentIdentifier
    - argLabels: 
  */
  @objc var persistentIdentifier: NSCoding { @objc get }

  /**
    - jsName: isResolved
    - name: resolved
    - argLabels: 
    - obsoleted: 3
    - renamed: isResolved
  */
  @objc var isResolved: Bool { @objc get @objc (setResolved:) set }
}

extension NSFileVersion: NSFileVersionExports {
}
