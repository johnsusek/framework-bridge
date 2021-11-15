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
    - Selector: NSURL
  */

@objc(NSURL) protocol NSURLExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: URLByResolvingAliasFileAtURL:options:error:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithURLByResolvingAliasFileAtURLWithOptions(_ resolvingAliasFileAt: URL, _ options: NSURL.BookmarkResolutionOptions) -> Self?

  /**
    - Selector: URLFromPasteboard:
  */
  @objc static func createWithURLFromPasteboard(_ from: NSPasteboard) -> NSURL?

  /**
    - Selector: URLWithDataRepresentation:relativeToURL:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func createWithDataRepresentationWithRelativeToURL(_ dataRepresentation: Data, _ relativeTo: URL?) -> NSURL

  /**
    - Selector: URLWithString:
  */
  @objc static func createWithString(_ string: String) -> Self?

  /**
    - Selector: URLWithString:relativeToURL:
  */
  @objc static func createWithStringWithRelativeToURL(_ string: String, _ relativeTo: URL?) -> Self?

  /**
    - Selector: absoluteURLWithDataRepresentation:relativeToURL:
    - Introduced: 10.11
  */
  @objc (absoluteURLWithDataRepresentation:relativeToURL:) @available(OSX 10.11, *) static func absoluteURL(withDataRepresentation: Data, relativeTo: URL?) -> URL

  /**
    - Selector: bookmarkDataWithContentsOfURL:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) static func bookmarkDataWithContentsOfURL(error: URL) -> Data?

  /**
    - Selector: fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:
    - Introduced: 10.9
  */
  @objc (fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:) @available(OSX 10.9, *) static func fileURL(withFileSystemRepresentation: UnsafePointer<Int8>, isDirectory: Bool, relativeTo: URL?) -> URL

  /**
    - Selector: fileURLWithPath:
  */
  @objc (fileURLWithPath:) static func fileURL(withPath: String) -> URL

  /**
    - Selector: fileURLWithPath:isDirectory:
    - Introduced: 10.5
  */
  @objc (fileURLWithPath:isDirectory:) @available(OSX 10.5, *) static func fileURL(withPath: String, isDirectory: Bool) -> URL

  /**
    - Selector: fileURLWithPath:isDirectory:relativeToURL:
    - Introduced: 10.11
  */
  @objc (fileURLWithPath:isDirectory:relativeToURL:) @available(OSX 10.11, *) static func fileURL(withPath: String, isDirectory: Bool, relativeTo: URL?) -> URL

  /**
    - Selector: fileURLWithPath:relativeToURL:
    - Introduced: 10.11
  */
  @objc (fileURLWithPath:relativeToURL:) @available(OSX 10.11, *) static func fileURL(withPath: String, relativeTo: URL?) -> URL

  /**
    - Selector: fileURLWithPathComponents:
    - Introduced: 10.6
  */
  @objc (fileURLWithPathComponents:) @available(OSX 10.6, *) static func fileURL(withPathComponents: [String]) -> URL?

  /**
    - Selector: resourceValuesForKeys:fromBookmarkData:
    - Introduced: 10.6
  */
  @objc (resourceValuesForKeys:fromBookmarkData:) @available(OSX 10.6, *) static func resourceValues(forKeys: [URLResourceKey], fromBookmarkData: Data) -> [URLResourceKey: Any]?

  /**
    - Selector: writeBookmarkData:toURL:options:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) static func writeBookmarkData(toURL: Data, options: URL, error: Int) -> Bool

  // Instance Methods

  /**
    - Selector: URLByAppendingPathComponent:
    - Introduced: 10.6
  */
  @objc (URLByAppendingPathComponent:) @available(OSX 10.6, *) func appendingPathComponent(_: String) -> URL?

  /**
    - Selector: URLByAppendingPathComponent:isDirectory:
    - Introduced: 10.7
  */
  @objc (URLByAppendingPathComponent:isDirectory:) @available(OSX 10.7, *) func appendingPathComponent(_: String, isDirectory: Bool) -> URL?

  /**
    - Selector: URLByAppendingPathExtension:
    - Introduced: 10.6
  */
  @objc (URLByAppendingPathExtension:) @available(OSX 10.6, *) func appendingPathExtension(_: String) -> URL?

  /**
    - Selector: bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func bookmarkDataWithOptions(includingResourceValuesForKeys: NSURL.BookmarkCreationOptions, relativeToURL: [URLResourceKey]?, error: URL?) -> Data?

  /**
    - Selector: checkPromisedItemIsReachableAndReturnError:
    - Introduced: 10.10
  */
  // throws - @objc @available(OSX 10.10, *) func checkPromisedItemIsReachableAndReturnError() -> Bool

  /**
    - Selector: checkResourceIsReachableAndReturnError:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func checkResourceIsReachableAndReturnError() -> Bool

  /**
    - Selector: fileReferenceURL
    - Introduced: 10.6
  */
  @objc (fileReferenceURL) @available(OSX 10.6, *) func fileReferenceURL() -> URL?

  /**
    - Selector: getFileSystemRepresentation:maxLength:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func getFileSystemRepresentation(_: UnsafeMutablePointer<Int8>, maxLength: Int) -> Bool

  /**
    - Selector: getPromisedItemResourceValue:forKey:error:
    - Introduced: 10.10
  */
  // throws - @objc @available(OSX 10.10, *) func getPromisedItemResourceValue(forKey: AutoreleasingUnsafeMutablePointer<Any?>, error: URLResourceKey) -> Bool

  /**
    - Selector: getResourceValue:forKey:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func getResourceValue(forKey: AutoreleasingUnsafeMutablePointer<Any?>, error: URLResourceKey) -> Bool

  /**
    - Selector: isFileReferenceURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func isFileReferenceURL() -> Bool

  /**
    - Selector: promisedItemResourceValuesForKeys:error:
    - Introduced: 10.10
  */
  // throws - @objc @available(OSX 10.10, *) func promisedItemResourceValuesForKeys(error: [URLResourceKey]) -> [URLResourceKey: Any]?

  /**
    - Selector: removeAllCachedResourceValues
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func removeAllCachedResourceValues()

  /**
    - Selector: removeCachedResourceValueForKey:
    - Introduced: 10.9
  */
  @objc (removeCachedResourceValueForKey:) @available(OSX 10.9, *) func removeCachedResourceValue(forKey: URLResourceKey)

  /**
    - Selector: resourceValuesForKeys:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func resourceValuesForKeys(error: [URLResourceKey]) -> [URLResourceKey: Any]?

  /**
    - Selector: setResourceValue:forKey:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func setResourceValue(forKey: Any?, error: URLResourceKey) -> Bool

  /**
    - Selector: setResourceValues:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) func setResourceValues(error: [URLResourceKey: Any]) -> Bool

  /**
    - Selector: setTemporaryResourceValue:forKey:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func setTemporaryResourceValue(_: Any?, forKey: URLResourceKey)

  /**
    - Selector: startAccessingSecurityScopedResource
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func startAccessingSecurityScopedResource() -> Bool

  /**
    - Selector: stopAccessingSecurityScopedResource
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func stopAccessingSecurityScopedResource()

  /**
    - Selector: writeToPasteboard:
  */
  @objc (writeToPasteboard:) func write(to: NSPasteboard)

  // Own Instance Properties

  /**
    - Selector: URLByDeletingLastPathComponent
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var deletingLastPathComponent: URL? { @objc (URLByDeletingLastPathComponent) get }

  /**
    - Selector: URLByDeletingPathExtension
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var deletingPathExtension: URL? { @objc (URLByDeletingPathExtension) get }

  /**
    - Selector: URLByResolvingSymlinksInPath
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var resolvingSymlinksInPath: URL? { @objc (URLByResolvingSymlinksInPath) get }

  /**
    - Selector: URLByStandardizingPath
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var standardizingPath: URL? { @objc (URLByStandardizingPath) get }

  /**
    - Selector: absoluteString
  */
  @objc var absoluteString: String? { @objc get }

  /**
    - Selector: absoluteURL
  */
  @objc var absoluteURL: URL? { @objc get }

  /**
    - Selector: baseURL
  */
  @objc var baseURL: URL? { @objc get }

  /**
    - Selector: dataRepresentation
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var dataRepresentation: Data { @objc get }

  /**
    - Selector: filePathURL
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var filePathURL: URL? { @objc get }

  /**
    - Selector: fileSystemRepresentation
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var fileSystemRepresentation: UnsafePointer<Int8> { @objc get }

  /**
    - Selector: fileURL
  */
  @objc var isFileURL: Bool { @objc get }

  /**
    - Selector: fragment
  */
  @objc var fragment: String? { @objc get }

  /**
    - Selector: hasDirectoryPath
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var hasDirectoryPath: Bool { @objc get }

  /**
    - Selector: host
  */
  @objc var host: String? { @objc get }

  /**
    - Selector: lastPathComponent
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var lastPathComponent: String? { @objc get }

  /**
    - Selector: password
  */
  @objc var password: String? { @objc get }

  /**
    - Selector: path
  */
  @objc var path: String? { @objc get }

  /**
    - Selector: pathComponents
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var pathComponents: [String]? { @objc get }

  /**
    - Selector: pathExtension
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var pathExtension: String? { @objc get }

  /**
    - Selector: port
  */
  @objc var port: NSNumber? { @objc get }

  /**
    - Selector: query
  */
  @objc var query: String? { @objc get }

  /**
    - Selector: relativePath
  */
  @objc var relativePath: String? { @objc get }

  /**
    - Selector: relativeString
  */
  @objc var relativeString: String { @objc get }

  /**
    - Selector: resourceSpecifier
  */
  @objc var resourceSpecifier: String? { @objc get }

  /**
    - Selector: scheme
  */
  @objc var scheme: String? { @objc get }

  /**
    - Selector: standardizedURL
  */
  @objc var standardized: URL? { @objc (standardizedURL) get }

  /**
    - Selector: user
  */
  @objc var user: String? { @objc get }
}

extension NSURL: NSURLExports {

  /**
    - Selector: URLByResolvingAliasFileAtURL:options:error:
    - Introduced: 10.10
  */
  @objc public static func createWithURLByResolvingAliasFileAtURLWithOptions(_ resolvingAliasFileAt: URL, _ options: NSURL.BookmarkResolutionOptions) -> Self? {
    return try? self.init(resolvingAliasFileAt: resolvingAliasFileAt, options: options)
  }


  /**
    - Selector: URLFromPasteboard:
  */
  @objc public static func createWithURLFromPasteboard(_ from: NSPasteboard) -> NSURL? {
    return self.init(from: from)
  }


  /**
    - Selector: URLWithDataRepresentation:relativeToURL:
    - Introduced: 10.11
  */
  @objc public static func createWithDataRepresentationWithRelativeToURL(_ dataRepresentation: Data, _ relativeTo: URL?) -> NSURL {
    return self.init(dataRepresentation: dataRepresentation, relativeTo: relativeTo)
  }


  /**
    - Selector: URLWithString:
  */
  @objc public static func createWithString(_ string: String) -> Self? {
    return self.init(string: string)
  }


  /**
    - Selector: URLWithString:relativeToURL:
  */
  @objc public static func createWithStringWithRelativeToURL(_ string: String, _ relativeTo: URL?) -> Self? {
    return self.init(string: string, relativeTo: relativeTo)
  }

}
