import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLProtocol
  */

@objc(URLProtocol) protocol URLProtocolExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canInitWithRequest:
  */
  @objc (canInitWithRequest:) static func canInit(with: URLRequest) -> Bool

  /**
    - Selector: canInitWithTask:
    - Introduced: 10.10
  */
  @objc (canInitWithTask:) @available(OSX 10.10, *) static func canInit(with: URLSessionTask) -> Bool

  /**
    - Selector: canonicalRequestForRequest:
  */
  @objc (canonicalRequestForRequest:) static func canonicalRequest(`for`: URLRequest) -> URLRequest

  /**
    - Selector: propertyForKey:inRequest:
  */
  @objc (propertyForKey:inRequest:) static func property(forKey: String, in: URLRequest) -> Any?

  /**
    - Selector: registerClass:
  */
  @objc static func registerClass(_: AnyClass) -> Bool

  /**
    - Selector: removePropertyForKey:inRequest:
  */
  @objc (removePropertyForKey:inRequest:) static func removeProperty(forKey: String, in: NSMutableURLRequest)

  /**
    - Selector: requestIsCacheEquivalent:toRequest:
  */
  @objc (requestIsCacheEquivalent:toRequest:) static func requestIsCacheEquivalent(_: URLRequest, to: URLRequest) -> Bool

  /**
    - Selector: setProperty:forKey:inRequest:
  */
  @objc (setProperty:forKey:inRequest:) static func setProperty(_: Any, forKey: String, in: NSMutableURLRequest)

  /**
    - Selector: unregisterClass:
  */
  @objc static func unregisterClass(_: AnyClass)

  // Instance Methods

  /**
    - Selector: initWithRequest:cachedResponse:client:
  */
  @objc static func createWithRequest(_: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?) -> Self

  /**
    - Selector: initWithTask:cachedResponse:client:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithTask(_: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?) -> Self

  /**
    - Selector: startLoading
  */
  @objc func startLoading()

  /**
    - Selector: stopLoading
  */
  @objc func stopLoading()

  // Own Instance Properties

  /**
    - Selector: cachedResponse
  */
  @objc var cachedResponse: CachedURLResponse? { @objc get }

  /**
    - Selector: client
  */
  @objc var client: URLProtocolClient? { @objc get }

  /**
    - Selector: request
  */
  @objc var request: URLRequest { @objc get }

  /**
    - Selector: task
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var task: URLSessionTask? { @objc get }
}

extension URLProtocol: URLProtocolExports {
  @objc public static func createWithRequest(_ request: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?) -> Self {
    return self.init(request: request, cachedResponse: cachedResponse, client: client)
  }

  @objc public static func createWithTask(_ task: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?) -> Self {
    return self.init(task: task, cachedResponse: cachedResponse, client: client)
  }

}
