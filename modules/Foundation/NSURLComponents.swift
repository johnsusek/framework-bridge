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
    - Selector: NSURLComponents
    - Introduced: 10.9
  */

@objc(NSURLComponents) protocol NSURLComponentsExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: componentsWithString:
  */
  @objc static func createWithString(_ string: String) -> Self?

  /**
    - Selector: componentsWithURL:resolvingAgainstBaseURL:
  */
  @objc static func createWithUrl_ResolvingAgainstBaseURL(_ url: URL, _ resolvingAgainstBaseURL: Bool) -> Self?

  // Instance Methods

  /**
    - Selector: URLRelativeToURL:
  */
  @objc (URLRelativeToURL:) func url(relativeTo: URL?) -> URL?

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - Selector: fragment
  */
  @objc var fragment: String? { @objc get @objc (setFragment:) set }

  /**
    - Selector: host
  */
  @objc var host: String? { @objc get @objc (setHost:) set }

  /**
    - Selector: password
  */
  @objc var password: String? { @objc get @objc (setPassword:) set }

  /**
    - Selector: path
  */
  @objc var path: String? { @objc get @objc (setPath:) set }

  /**
    - Selector: percentEncodedFragment
  */
  @objc var percentEncodedFragment: String? { @objc get @objc (setPercentEncodedFragment:) set }

  /**
    - Selector: percentEncodedHost
  */
  @objc var percentEncodedHost: String? { @objc get @objc (setPercentEncodedHost:) set }

  /**
    - Selector: percentEncodedPassword
  */
  @objc var percentEncodedPassword: String? { @objc get @objc (setPercentEncodedPassword:) set }

  /**
    - Selector: percentEncodedPath
  */
  @objc var percentEncodedPath: String? { @objc get @objc (setPercentEncodedPath:) set }

  /**
    - Selector: percentEncodedQuery
  */
  @objc var percentEncodedQuery: String? { @objc get @objc (setPercentEncodedQuery:) set }

  /**
    - Selector: percentEncodedQueryItems
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var percentEncodedQueryItems: [URLQueryItem]? { @objc get @objc (setPercentEncodedQueryItems:) set }

  /**
    - Selector: percentEncodedUser
  */
  @objc var percentEncodedUser: String? { @objc get @objc (setPercentEncodedUser:) set }

  /**
    - Selector: port
  */
  @objc var port: NSNumber? { @objc get @objc (setPort:) set }

  /**
    - Selector: query
  */
  @objc var query: String? { @objc get @objc (setQuery:) set }

  /**
    - Selector: queryItems
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var queryItems: [URLQueryItem]? { @objc get @objc (setQueryItems:) set }

  /**
    - Selector: rangeOfFragment
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfFragment: NSRange { @objc get }

  /**
    - Selector: rangeOfHost
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfHost: NSRange { @objc get }

  /**
    - Selector: rangeOfPassword
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfPassword: NSRange { @objc get }

  /**
    - Selector: rangeOfPath
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfPath: NSRange { @objc get }

  /**
    - Selector: rangeOfPort
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfPort: NSRange { @objc get }

  /**
    - Selector: rangeOfQuery
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfQuery: NSRange { @objc get }

  /**
    - Selector: rangeOfScheme
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfScheme: NSRange { @objc get }

  /**
    - Selector: rangeOfUser
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rangeOfUser: NSRange { @objc get }

  /**
    - Selector: scheme
  */
  @objc var scheme: String? { @objc get @objc (setScheme:) set }

  /**
    - Selector: string
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var string: String? { @objc get }

  /**
    - Selector: user
  */
  @objc var user: String? { @objc get @objc (setUser:) set }
}

extension NSURLComponents: NSURLComponentsExports {

  /**
    - Selector: componentsWithString:
  */
  @objc public static func createWithString(_ string: String) -> Self? {
    return self.init(string: string)
  }


  /**
    - Selector: componentsWithURL:resolvingAgainstBaseURL:
  */
  @objc public static func createWithUrl_ResolvingAgainstBaseURL(_ url: URL, _ resolvingAgainstBaseURL: Bool) -> Self? {
    return self.init(url: url, resolvingAgainstBaseURL: resolvingAgainstBaseURL)
  }

}
