import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSHTTPCookie
  */

@objc(HTTPCookie) protocol HTTPCookieExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: cookieWithProperties:
  */
  @objc static func create(properties: [HTTPCookiePropertyKey: Any]) -> HTTPCookie?

  /**
    - Selector: cookiesWithResponseHeaderFields:forURL:
  */
  @objc (cookiesWithResponseHeaderFields:forURL:) static func cookies(withResponseHeaderFields: [String: String], `for`: URL) -> [HTTPCookie]

  /**
    - Selector: requestHeaderFieldsWithCookies:
  */
  @objc (requestHeaderFieldsWithCookies:) static func requestHeaderFields(with: [HTTPCookie]) -> [String: String]

  // Own Instance Properties

  /**
    - Selector: HTTPOnly
  */
  @objc var isHTTPOnly: Bool { @objc get }

  /**
    - Selector: comment
  */
  @objc var comment: String? { @objc get }

  /**
    - Selector: commentURL
  */
  @objc var commentURL: URL? { @objc get }

  /**
    - Selector: domain
  */
  @objc var domain: String { @objc get }

  /**
    - Selector: expiresDate
  */
  @objc var expiresDate: Date? { @objc get }

  /**
    - Selector: name
  */
  @objc var name: String { @objc get }

  /**
    - Selector: path
  */
  @objc var path: String { @objc get }

  /**
    - Selector: portList
  */
  @objc var portList: [NSNumber]? { @objc get }

  /**
    - Selector: properties
  */
  @objc var properties: [HTTPCookiePropertyKey: Any]? { @objc get }

  /**
    - Selector: sameSitePolicy
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var sameSitePolicy: HTTPCookieStringPolicy? { @objc get }

  /**
    - Selector: secure
  */
  @objc var isSecure: Bool { @objc get }

  /**
    - Selector: sessionOnly
  */
  @objc var isSessionOnly: Bool { @objc get }

  /**
    - Selector: value
  */
  @objc var value: String { @objc get }

  /**
    - Selector: version
  */
  @objc var version: Int { @objc get }
}

extension HTTPCookie: HTTPCookieExports {
  @objc public static func create(properties: [HTTPCookiePropertyKey: Any]) -> HTTPCookie? {
    return self.init(properties: properties)
  }

}
