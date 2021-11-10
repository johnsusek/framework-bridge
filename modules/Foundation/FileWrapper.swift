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
    - Selector: NSFileWrapper
    - Introduced: 10.0
  */

@objc(FileWrapper) protocol FileWrapperExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addFileWrapper:
  */
  @objc func addFileWrapper(_: FileWrapper) -> String

  /**
    - Selector: addRegularFileWithContents:preferredFilename:
  */
  @objc (addRegularFileWithContents:preferredFilename:) func addRegularFile(withContents: Data, preferredFilename: String) -> String

  /**
    - Selector: keyForFileWrapper:
  */
  @objc (keyForFileWrapper:) func keyForChildFileWrapper(_: FileWrapper) -> String?

  /**
    - Selector: matchesContentsOfURL:
    - Introduced: 10.6
  */
  @objc (matchesContentsOfURL:) @available(OSX 10.6, *) func matchesContents(of: URL) -> Bool

  /**
    - Selector: readFromURL:options:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func readFromURL(options: URL, error: FileWrapper.ReadingOptions) -> Bool

  /**
    - Selector: removeFileWrapper:
  */
  @objc func removeFileWrapper(_: FileWrapper)

  /**
    - Selector: writeToURL:options:originalContentsURL:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func writeToURL(options: URL, originalContentsURL: FileWrapper.WritingOptions, error: URL?) -> Bool

  // Own Instance Properties

  /**
    - Selector: directory
  */
  @objc var isDirectory: Bool { @objc get }

  /**
    - Selector: fileAttributes
  */
  @objc var fileAttributes: [String: Any] { @objc get @objc (setFileAttributes:) set }

  /**
    - Selector: fileWrappers
  */
  @objc var fileWrappers: [String: FileWrapper]? { @objc get }

  /**
    - Selector: filename
  */
  @objc var filename: String? { @objc get @objc (setFilename:) set }

  /**
    - Selector: icon
  */
  @objc var icon: NSImage? { @objc get @objc (setIcon:) set }

  /**
    - Selector: preferredFilename
  */
  @objc var preferredFilename: String? { @objc get @objc (setPreferredFilename:) set }

  /**
    - Selector: regularFile
  */
  @objc var isRegularFile: Bool { @objc get }

  /**
    - Selector: regularFileContents
  */
  @objc var regularFileContents: Data? { @objc get }

  /**
    - Selector: serializedRepresentation
  */
  @objc var serializedRepresentation: Data? { @objc get }

  /**
    - Selector: symbolicLink
  */
  @objc var isSymbolicLink: Bool { @objc get }

  /**
    - Selector: symbolicLinkDestinationURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var symbolicLinkDestinationURL: URL? { @objc get }
}

extension FileWrapper: FileWrapperExports {
}
