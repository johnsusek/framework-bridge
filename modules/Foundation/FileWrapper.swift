import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: FileWrapper
    - name: NSFileWrapper
    - argLabels: 
    - Introduced: 10.0
  */

@objc(FileWrapper) protocol FileWrapperExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addFileWrapper
    - name: addFileWrapper:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addFileWrapper(_: FileWrapper) -> String

  /**
    - jsName: addRegularFile
    - name: addRegularFileWithContents:preferredFilename:
    - argLabels: withContents, preferredFilename
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addRegularFile(withContents:preferredFilename:)
  */
  @objc (addRegularFileWithContents:preferredFilename:) func addRegularFile(withContents: Data, preferredFilename: String) -> String

  /**
    - jsName: createDirectoryWithFileWrappers
    - name: initDirectoryWithFileWrappers:
    - argLabels: 
    - constructorTokens: directoryWithFileWrappers
  */
  @objc static func createDirectoryWithFileWrappers(_: [String: FileWrapper]) -> Self

  /**
    - jsName: createRegularFileWithContents
    - name: initRegularFileWithContents:
    - argLabels: 
    - constructorTokens: regularFileWithContents
  */
  @objc static func createRegularFileWithContents(_: Data) -> Self

  /**
    - jsName: createSymbolicLinkWithDestinationURL
    - name: initSymbolicLinkWithDestinationURL:
    - argLabels: 
    - constructorTokens: symbolicLinkWithDestinationURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createSymbolicLinkWithDestinationURL(_: URL) -> Self

  /**
    - jsName: createWithSerializedRepresentation
    - name: initWithSerializedRepresentation:
    - argLabels: 
    - constructorTokens: serializedRepresentation
  */
  @objc static func createWithSerializedRepresentation(_: Data) -> Self?

  /**
    - jsName: createWithURL
    - name: initWithURL:options:error:
    - argLabels: options, error
    - constructorTokens: url, options
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static func createWithURL(url: URL, options: FileWrapper.ReadingOptions) -> Self?

  /**
    - jsName: keyForChildFileWrapper
    - name: keyForFileWrapper:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: keyForChildFileWrapper(_:)
  */
  @objc (keyForFileWrapper:) func keyForChildFileWrapper(_: FileWrapper) -> String?

  /**
    - jsName: matchesContents
    - name: matchesContentsOfURL:
    - argLabels: of
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: matchesContents(of:)
    - Introduced: 10.6
  */
  @objc (matchesContentsOfURL:) @available(OSX 10.6, *) func matchesContents(of: URL) -> Bool

  /**
    - jsName: readFromURL
    - name: readFromURL:options:error:
    - argLabels: options, error
    - constructorTokens: 
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func readFromURL(options: URL, error: FileWrapper.ReadingOptions) -> Bool

  /**
    - jsName: removeFileWrapper
    - name: removeFileWrapper:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeFileWrapper(_: FileWrapper)

  /**
    - jsName: writeToURL
    - name: writeToURL:options:originalContentsURL:error:
    - argLabels: options, originalContentsURL, error
    - constructorTokens: 
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func writeToURL(options: URL, originalContentsURL: FileWrapper.WritingOptions, error: URL?) -> Bool

  // Own Instance Properties

  /**
    - jsName: isDirectory
    - name: directory
    - argLabels: 
    - obsoleted: 3
    - renamed: isDirectory
  */
  @objc var isDirectory: Bool { @objc get }

  /**
    - jsName: fileAttributes
    - name: fileAttributes
    - argLabels: 
  */
  @objc var fileAttributes: [String: Any] { @objc get @objc (setFileAttributes:) set }

  /**
    - jsName: fileWrappers
    - name: fileWrappers
    - argLabels: 
  */
  @objc var fileWrappers: [String: FileWrapper]? { @objc get }

  /**
    - jsName: filename
    - name: filename
    - argLabels: 
  */
  @objc var filename: String? { @objc get @objc (setFilename:) set }

  /**
    - jsName: icon
    - name: icon
    - argLabels: 
  */
  @objc var icon: NSImage? { @objc get @objc (setIcon:) set }

  /**
    - jsName: preferredFilename
    - name: preferredFilename
    - argLabels: 
  */
  @objc var preferredFilename: String? { @objc get @objc (setPreferredFilename:) set }

  /**
    - jsName: isRegularFile
    - name: regularFile
    - argLabels: 
    - obsoleted: 3
    - renamed: isRegularFile
  */
  @objc var isRegularFile: Bool { @objc get }

  /**
    - jsName: regularFileContents
    - name: regularFileContents
    - argLabels: 
  */
  @objc var regularFileContents: Data? { @objc get }

  /**
    - jsName: serializedRepresentation
    - name: serializedRepresentation
    - argLabels: 
  */
  @objc var serializedRepresentation: Data? { @objc get }

  /**
    - jsName: isSymbolicLink
    - name: symbolicLink
    - argLabels: 
    - obsoleted: 3
    - renamed: isSymbolicLink
  */
  @objc var isSymbolicLink: Bool { @objc get }

  /**
    - jsName: symbolicLinkDestinationURL
    - name: symbolicLinkDestinationURL
    - argLabels: 
    - available: 10.6
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
