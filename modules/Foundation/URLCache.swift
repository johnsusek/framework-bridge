import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLCache
  */

@objc(URLCache) protocol URLCacheExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedURLCache
  */
  @objc static var shared: URLCache { @objc (sharedURLCache) get @objc (setSharedURLCache:) set }

  // Instance Methods

  /**
    - Selector: cachedResponseForRequest:
  */
  @objc (cachedResponseForRequest:) func cachedResponse(`for`: URLRequest) -> CachedURLResponse?

  /**
    - Selector: getCachedResponseForDataTask:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func getCachedResponse(`for`: URLSessionDataTask, completionHandler: JSValue)

  /**
    - Selector: initWithMemoryCapacity:diskCapacity:directoryURL:
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func createWithMemoryCapacity(_: Int, diskCapacity: Int, directoryURL: URL?) -> Self

  /**
    - Selector: initWithMemoryCapacity:diskCapacity:diskPath:
    - Introduced: 10.2
    - Deprecated: 100000
    - Replacement: initWithMemoryCapacity:diskCapacity:directoryURL:
  */
  @objc @available(OSX 10.2, *) static func createWithMemoryCapacity(_: Int, diskCapacity: Int, diskPath: String?) -> Self

  /**
    - Selector: removeAllCachedResponses
  */
  @objc func removeAllCachedResponses()

  /**
    - Selector: removeCachedResponseForDataTask:
    - Introduced: 10.10
  */
  @objc (removeCachedResponseForDataTask:) @available(OSX 10.10, *) func removeCachedResponse(`for`: URLSessionDataTask)

  /**
    - Selector: removeCachedResponseForRequest:
  */
  @objc (removeCachedResponseForRequest:) func removeCachedResponse(`for`: URLRequest)

  /**
    - Selector: removeCachedResponsesSinceDate:
    - Introduced: 10.10
  */
  @objc (removeCachedResponsesSinceDate:) @available(OSX 10.10, *) func removeCachedResponses(since: Date)

  /**
    - Selector: storeCachedResponse:forDataTask:
    - Introduced: 10.10
  */
  @objc (storeCachedResponse:forDataTask:) @available(OSX 10.10, *) func storeCachedResponse(_: CachedURLResponse, `for`: URLSessionDataTask)

  /**
    - Selector: storeCachedResponse:forRequest:
  */
  @objc (storeCachedResponse:forRequest:) func storeCachedResponse(_: CachedURLResponse, `for`: URLRequest)

  // Own Instance Properties

  /**
    - Selector: currentDiskUsage
  */
  @objc var currentDiskUsage: Int { @objc get }

  /**
    - Selector: currentMemoryUsage
  */
  @objc var currentMemoryUsage: Int { @objc get }

  /**
    - Selector: diskCapacity
  */
  @objc var diskCapacity: Int { @objc get @objc (setDiskCapacity:) set }

  /**
    - Selector: memoryCapacity
  */
  @objc var memoryCapacity: Int { @objc get @objc (setMemoryCapacity:) set }
}

extension URLCache: URLCacheExports {
  @objc public static func createWithMemoryCapacity(_ memoryCapacity: Int, diskCapacity: Int, directoryURL: URL?) -> Self {
    return self.init(__memoryCapacity: memoryCapacity, diskCapacity: diskCapacity, directoryURL: directoryURL)
  }

  @objc public static func createWithMemoryCapacity(_ memoryCapacity: Int, diskCapacity: Int, diskPath: String?) -> Self {
    return self.init(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity, diskPath: diskPath)
  }

}
