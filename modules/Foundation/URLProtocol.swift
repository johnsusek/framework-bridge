import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLProtocol
    - name: NSURLProtocol
    - argLabels: 
  */

@objc(URLProtocol) protocol URLProtocolExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: canInit
    - name: canInitWithRequest:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canInit(with:)
  */
  @objc (canInitWithRequest:) static func canInit(with: URLRequest) -> Bool

  /**
    - jsName: canInit
    - name: canInitWithTask:
    - argLabels: with
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: canInit(with:)
    - Introduced: 10.10
  */
  @objc (canInitWithTask:) @available(OSX 10.10, *) static func canInit(with: URLSessionTask) -> Bool

  /**
    - jsName: canonicalRequest
    - name: canonicalRequestForRequest:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canonicalRequest(for:)
  */
  @objc (canonicalRequestForRequest:) static func canonicalRequest(`for`: URLRequest) -> URLRequest

  /**
    - jsName: property
    - name: propertyForKey:inRequest:
    - argLabels: forKey, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: property(forKey:in:)
  */
  @objc (propertyForKey:inRequest:) static func property(forKey: String, in: URLRequest) -> Any?

  /**
    - jsName: registerClass
    - name: registerClass:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func registerClass(_: AnyClass) -> Bool

  /**
    - jsName: removeProperty
    - name: removePropertyForKey:inRequest:
    - argLabels: forKey, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeProperty(forKey:in:)
  */
  @objc (removePropertyForKey:inRequest:) static func removeProperty(forKey: String, in: NSMutableURLRequest)

  /**
    - jsName: requestIsCacheEquivalent
    - name: requestIsCacheEquivalent:toRequest:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: requestIsCacheEquivalent(_:to:)
  */
  @objc (requestIsCacheEquivalent:toRequest:) static func requestIsCacheEquivalent(_: URLRequest, to: URLRequest) -> Bool

  /**
    - jsName: setProperty
    - name: setProperty:forKey:inRequest:
    - argLabels: _, forKey, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setProperty(_:forKey:in:)
  */
  @objc (setProperty:forKey:inRequest:) static func setProperty(_: Any, forKey: String, in: NSMutableURLRequest)

  /**
    - jsName: unregisterClass
    - name: unregisterClass:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func unregisterClass(_: AnyClass)

  // Instance Methods

  /**
    - jsName: createWithRequest
    - name: initWithRequest:cachedResponse:client:
    - argLabels: cachedResponse, client
    - constructorTokens: request, cachedResponse, client
  */
  @objc static func createWithRequest(_: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?) -> Self

  /**
    - jsName: createWithTask
    - name: initWithTask:cachedResponse:client:
    - argLabels: cachedResponse, client
    - constructorTokens: task, cachedResponse, client
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithTask(_: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?) -> Self

  /**
    - jsName: startLoading
    - name: startLoading
    - argLabels: 
    - constructorTokens: 
  */
  @objc func startLoading()

  /**
    - jsName: stopLoading
    - name: stopLoading
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stopLoading()

  // Own Instance Properties

  /**
    - jsName: cachedResponse
    - name: cachedResponse
    - argLabels: 
  */
  @objc var cachedResponse: CachedURLResponse? { @objc get }

  /**
    - jsName: client
    - name: client
    - argLabels: 
  */
  @objc var client: URLProtocolClient? { @objc get }

  /**
    - jsName: request
    - name: request
    - argLabels: 
  */
  @objc var request: URLRequest { @objc get }

  /**
    - jsName: task
    - name: task
    - argLabels: 
    - available: 10.10
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
