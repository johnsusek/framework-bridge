import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLCache
    - name: NSURLCache
    - argLabels: 
  */

@objc(URLCache) protocol URLCacheExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedURLCache
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: URLCache { @objc (sharedURLCache) get @objc (setSharedURLCache:) set }

  // Instance Methods

  /**
    - jsName: cachedResponse
    - name: cachedResponseForRequest:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cachedResponse(for:)
  */
  @objc (cachedResponseForRequest:) func cachedResponse(`for`: URLRequest) -> CachedURLResponse?

  /**
    - jsName: getCachedResponse
    - name: getCachedResponseForDataTask:completionHandler:
    - argLabels: for, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getCachedResponse(for:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (getCachedResponseForDataTask:completionHandler:) @available(OSX 10.10, *) func getCachedResponse(`for`: URLSessionDataTask, completionHandler: JSValue)

  /**
    - jsName: createWithMemoryCapacity
    - name: initWithMemoryCapacity:diskCapacity:directoryURL:
    - argLabels: diskCapacity, directoryURL
    - constructorTokens: memoryCapacity, diskCapacity, directoryURL
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func createWithMemoryCapacity(_: Int, diskCapacity: Int, directoryURL: URL?) -> Self

  /**
    - jsName: createWithMemoryCapacity
    - name: initWithMemoryCapacity:diskCapacity:diskPath:
    - argLabels: diskCapacity, diskPath
    - constructorTokens: memoryCapacity, diskCapacity, diskPath
    - Introduced: 10.2
    - Deprecated: 100000
    - Replacement: initWithMemoryCapacity:diskCapacity:directoryURL:
  */
  @objc @available(OSX 10.2, *) static func createWithMemoryCapacity(_: Int, diskCapacity: Int, diskPath: String?) -> Self

  /**
    - jsName: removeAllCachedResponses
    - name: removeAllCachedResponses
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeAllCachedResponses()

  /**
    - jsName: removeCachedResponse
    - name: removeCachedResponseForDataTask:
    - argLabels: for
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: removeCachedResponse(for:)
    - Introduced: 10.10
  */
  @objc (removeCachedResponseForDataTask:) @available(OSX 10.10, *) func removeCachedResponse(`for`: URLSessionDataTask)

  /**
    - jsName: removeCachedResponse
    - name: removeCachedResponseForRequest:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeCachedResponse(for:)
  */
  @objc (removeCachedResponseForRequest:) func removeCachedResponse(`for`: URLRequest)

  /**
    - jsName: removeCachedResponses
    - name: removeCachedResponsesSinceDate:
    - argLabels: since
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: removeCachedResponses(since:)
    - Introduced: 10.10
  */
  @objc (removeCachedResponsesSinceDate:) @available(OSX 10.10, *) func removeCachedResponses(since: Date)

  /**
    - jsName: storeCachedResponse
    - name: storeCachedResponse:forDataTask:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: storeCachedResponse(_:for:)
    - Introduced: 10.10
  */
  @objc (storeCachedResponse:forDataTask:) @available(OSX 10.10, *) func storeCachedResponse(_: CachedURLResponse, `for`: URLSessionDataTask)

  /**
    - jsName: storeCachedResponse
    - name: storeCachedResponse:forRequest:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: storeCachedResponse(_:for:)
  */
  @objc (storeCachedResponse:forRequest:) func storeCachedResponse(_: CachedURLResponse, `for`: URLRequest)

  // Own Instance Properties

  /**
    - jsName: currentDiskUsage
    - name: currentDiskUsage
    - argLabels: 
  */
  @objc var currentDiskUsage: Int { @objc get }

  /**
    - jsName: currentMemoryUsage
    - name: currentMemoryUsage
    - argLabels: 
  */
  @objc var currentMemoryUsage: Int { @objc get }

  /**
    - jsName: diskCapacity
    - name: diskCapacity
    - argLabels: 
  */
  @objc var diskCapacity: Int { @objc get @objc (setDiskCapacity:) set }

  /**
    - jsName: memoryCapacity
    - name: memoryCapacity
    - argLabels: 
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
