import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: HTTPCookie
    - name: NSHTTPCookie
    - argLabels: 
  */

@objc(HTTPCookie) protocol HTTPCookieExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: cookieWithProperties:
    - argLabels: properties
    - constructorTokens: 
    - unavailable: true
    - renamed: init(properties:)
    - message: Not available in Swift
  */
  @objc static func create(properties: [HTTPCookiePropertyKey: Any]) -> HTTPCookie?

  /**
    - jsName: cookies
    - name: cookiesWithResponseHeaderFields:forURL:
    - argLabels: withResponseHeaderFields, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cookies(withResponseHeaderFields:for:)
  */
  @objc (cookiesWithResponseHeaderFields:forURL:) static func cookies(withResponseHeaderFields: [String: String], `for`: URL) -> [HTTPCookie]

  /**
    - jsName: requestHeaderFields
    - name: requestHeaderFieldsWithCookies:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: requestHeaderFields(with:)
  */
  @objc (requestHeaderFieldsWithCookies:) static func requestHeaderFields(with: [HTTPCookie]) -> [String: String]

  // Own Instance Properties

  /**
    - jsName: isHTTPOnly
    - name: HTTPOnly
    - argLabels: 
    - obsoleted: 3
    - renamed: isHTTPOnly
  */
  @objc var isHTTPOnly: Bool { @objc get }

  /**
    - jsName: comment
    - name: comment
    - argLabels: 
  */
  @objc var comment: String? { @objc get }

  /**
    - jsName: commentURL
    - name: commentURL
    - argLabels: 
  */
  @objc var commentURL: URL? { @objc get }

  /**
    - jsName: domain
    - name: domain
    - argLabels: 
  */
  @objc var domain: String { @objc get }

  /**
    - jsName: expiresDate
    - name: expiresDate
    - argLabels: 
  */
  @objc var expiresDate: Date? { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: String { @objc get }

  /**
    - jsName: path
    - name: path
    - argLabels: 
  */
  @objc var path: String { @objc get }

  /**
    - jsName: portList
    - name: portList
    - argLabels: 
  */
  @objc var portList: [NSNumber]? { @objc get }

  /**
    - jsName: properties
    - name: properties
    - argLabels: 
  */
  @objc var properties: [HTTPCookiePropertyKey: Any]? { @objc get }

  /**
    - jsName: sameSitePolicy
    - name: sameSitePolicy
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var sameSitePolicy: HTTPCookieStringPolicy? { @objc get }

  /**
    - jsName: isSecure
    - name: secure
    - argLabels: 
    - obsoleted: 3
    - renamed: isSecure
  */
  @objc var isSecure: Bool { @objc get }

  /**
    - jsName: isSessionOnly
    - name: sessionOnly
    - argLabels: 
    - obsoleted: 3
    - renamed: isSessionOnly
  */
  @objc var isSessionOnly: Bool { @objc get }

  /**
    - jsName: value
    - name: value
    - argLabels: 
  */
  @objc var value: String { @objc get }

  /**
    - jsName: version
    - name: version
    - argLabels: 
  */
  @objc var version: Int { @objc get }
}

extension HTTPCookie: HTTPCookieExports {
  @objc public static func create(properties: [HTTPCookiePropertyKey: Any]) -> HTTPCookie? {
    return self.init(properties: properties)
  }

}
