import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
    - Selector: initDirectoryWithFileWrappers:
  */
  @objc static func createDirectoryWithFileWrappers(_: [String: FileWrapper]) -> Self

  /**
    - Selector: initRegularFileWithContents:
  */
  @objc static func createRegularFileWithContents(_: Data) -> Self

  /**
    - Selector: initSymbolicLinkWithDestinationURL:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createSymbolicLinkWithDestinationURL(_: URL) -> Self

  /**
    - Selector: initWithSerializedRepresentation:
  */
  @objc static func createWithSerializedRepresentation(_: Data) -> Self?

  /**
    - Selector: initWithURL:options:error:
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithURL(url: URL, options: FileWrapper.ReadingOptions) -> Self?

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
  @objc public static func createDirectoryWithFileWrappers(_ directoryWithFileWrappers: [String: FileWrapper]) -> Self {
    return self.init(directoryWithFileWrappers: directoryWithFileWrappers)
  }

  @objc public static func createRegularFileWithContents(_ regularFileWithContents: Data) -> Self {
    return self.init(regularFileWithContents: regularFileWithContents)
  }

  @objc public static func createSymbolicLinkWithDestinationURL(_ symbolicLinkWithDestinationURL: URL) -> Self {
    return self.init(symbolicLinkWithDestinationURL: symbolicLinkWithDestinationURL)
  }

  @objc public static func createWithSerializedRepresentation(_ serializedRepresentation: Data) -> Self? {
    return self.init(serializedRepresentation: serializedRepresentation)
  }

  @objc public static func createWithURL(url: URL, options: FileWrapper.ReadingOptions) -> Self? {
    return try? self.init(url: url, options: options)
  }

}
