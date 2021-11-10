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
}
