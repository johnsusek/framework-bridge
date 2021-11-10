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
    - Selector: NSFileVersion
    - Introduced: 10.7
  */

@objc(NSFileVersion) protocol NSFileVersionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: addVersionOfItemAtURL:withContentsOfURL:options:error:
    - Introduced: 10.7
  */
  // throws - @objc @available(OSX 10.7, *) static func addVersionOfItemAtURL(withContentsOfURL: URL, options: URL, error: NSFileVersion.AddingOptions) -> NSFileVersion?

  /**
    - Selector: currentVersionOfItemAtURL:
  */
  @objc (currentVersionOfItemAtURL:) static func currentVersionOfItem(at: URL) -> NSFileVersion?

  /**
    - Selector: getNonlocalVersionsOfItemAtURL:completionHandler:
    - Introduced: 10.10
  */
// jsvalue   @objc @available(OSX 10.10, *) static func getNonlocalVersionsOfItemAtURLWithCompletionHandler(_ at: URL, _ completionHandler: JSValue)

  /**
    - Selector: otherVersionsOfItemAtURL:
  */
  @objc (otherVersionsOfItemAtURL:) static func otherVersionsOfItem(at: URL) -> [NSFileVersion]?

  /**
    - Selector: removeOtherVersionsOfItemAtURL:error:
  */
  // throws - @objc static func removeOtherVersionsOfItemAtURL(error: URL) -> Bool

  /**
    - Selector: temporaryDirectoryURLForNewVersionOfItemAtURL:
    - Introduced: 10.7
  */
  @objc (temporaryDirectoryURLForNewVersionOfItemAtURL:) @available(OSX 10.7, *) static func temporaryDirectoryURLForNewVersionOfItem(at: URL) -> URL

  /**
    - Selector: unresolvedConflictVersionsOfItemAtURL:
  */
  @objc (unresolvedConflictVersionsOfItemAtURL:) static func unresolvedConflictVersionsOfItem(at: URL) -> [NSFileVersion]?

  /**
    - Selector: versionOfItemAtURL:forPersistentIdentifier:
  */
  @objc (versionOfItemAtURL:forPersistentIdentifier:) static func version(itemAt: URL, forPersistentIdentifier: Any) -> NSFileVersion?

  // Instance Methods

  /**
    - Selector: removeAndReturnError:
  */
  // throws - @objc func removeAndReturnError() -> Bool

  /**
    - Selector: replaceItemAtURL:options:error:
  */
  // throws - @objc func replaceItemAtURL(options: URL, error: NSFileVersion.ReplacingOptions) -> URL?

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL { @objc (URL) get }

  /**
    - Selector: conflict
  */
  @objc var isConflict: Bool { @objc get }

  /**
    - Selector: discardable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isDiscardable: Bool { @objc get @objc (setDiscardable:) set }

  /**
    - Selector: hasLocalContents
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var hasLocalContents: Bool { @objc get }

  /**
    - Selector: hasThumbnail
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var hasThumbnail: Bool { @objc get }

  /**
    - Selector: localizedName
  */
  @objc var localizedName: String? { @objc get }

  /**
    - Selector: localizedNameOfSavingComputer
  */
  @objc var localizedNameOfSavingComputer: String? { @objc get }

  /**
    - Selector: modificationDate
  */
  @objc var modificationDate: Date? { @objc get }

  /**
    - Selector: originatorNameComponents
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var originatorNameComponents: PersonNameComponents? { @objc get }

  /**
    - Selector: persistentIdentifier
  */
  @objc var persistentIdentifier: NSCoding { @objc get }

  /**
    - Selector: resolved
  */
  @objc var isResolved: Bool { @objc get @objc (setResolved:) set }
}

extension NSFileVersion: NSFileVersionExports {
}
