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
    - Selector: NSURLRequest
  */

@objc(NSURLRequest) protocol NSURLRequestExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: requestWithURL:
  */
  @objc static func createWithUrl(_ url: URL) -> Self

  /**
    - Selector: requestWithURL:cachePolicy:timeoutInterval:
  */
  @objc static func createWithUrl_CachePolicy_TimeoutInterval(_ url: URL, _ cachePolicy: NSURLRequest.CachePolicy, _ timeoutInterval: TimeInterval) -> Self

  // Instance Methods

  /**
    - Selector: valueForHTTPHeaderField:
  */
  @objc (valueForHTTPHeaderField:) func value(forHTTPHeaderField: String) -> String?

  // Own Instance Properties

  /**
    - Selector: HTTPBody
  */
  @objc var httpBody: Data? { @objc (HTTPBody) get }

  /**
    - Selector: HTTPBodyStream
  */
  @objc var httpBodyStream: InputStream? { @objc (HTTPBodyStream) get }

  /**
    - Selector: HTTPMethod
  */
  @objc var httpMethod: String? { @objc (HTTPMethod) get }

  /**
    - Selector: HTTPShouldHandleCookies
  */
  @objc var httpShouldHandleCookies: Bool { @objc (HTTPShouldHandleCookies) get }

  /**
    - Selector: HTTPShouldUsePipelining
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var httpShouldUsePipelining: Bool { @objc (HTTPShouldUsePipelining) get }

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - Selector: allHTTPHeaderFields
  */
  @objc var allHTTPHeaderFields: [String: String]? { @objc get }

  /**
    - Selector: allowsCellularAccess
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsCellularAccess: Bool { @objc get }

  /**
    - Selector: allowsConstrainedNetworkAccess
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsConstrainedNetworkAccess: Bool { @objc get }

  /**
    - Selector: allowsExpensiveNetworkAccess
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsExpensiveNetworkAccess: Bool { @objc get }

  /**
    - Selector: cachePolicy
  */
  @objc var cachePolicy: NSURLRequest.CachePolicy { @objc get }

  /**
    - Selector: mainDocumentURL
  */
  @objc var mainDocumentURL: URL? { @objc get }

  /**
    - Selector: networkServiceType
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var networkServiceType: NSURLRequest.NetworkServiceType { @objc get }

  /**
    - Selector: timeoutInterval
  */
  @objc var timeoutInterval: TimeInterval { @objc get }
}

extension NSURLRequest: NSURLRequestExports {

  /**
    - Selector: requestWithURL:
  */
  @objc public static func createWithUrl(_ url: URL) -> Self {
    return self.init(url: url)
  }


  /**
    - Selector: requestWithURL:cachePolicy:timeoutInterval:
  */
  @objc public static func createWithUrl_CachePolicy_TimeoutInterval(_ url: URL, _ cachePolicy: NSURLRequest.CachePolicy, _ timeoutInterval: TimeInterval) -> Self {
    return self.init(url: url, cachePolicy: cachePolicy, timeoutInterval: timeoutInterval)
  }

}
