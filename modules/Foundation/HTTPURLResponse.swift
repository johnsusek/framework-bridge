import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: HTTPURLResponse
    - name: NSHTTPURLResponse
    - argLabels: 
  */

@objc(HTTPURLResponse) protocol HTTPURLResponseExports: JSExport, URLResponseExports {
  // Static Methods

  /**
    - jsName: localizedString
    - name: localizedStringForStatusCode:
    - argLabels: forStatusCode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: localizedString(forStatusCode:)
  */
  @objc (localizedStringForStatusCode:) static func localizedString(forStatusCode: Int) -> String

  // Instance Methods

  /**
    - jsName: createWithURL
    - name: initWithURL:statusCode:HTTPVersion:headerFields:
    - argLabels: statusCode, HTTPVersion, headerFields
    - constructorTokens: url, statusCode, httpVersion, headerFields
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithURL(_: URL, statusCode: Int, httpVersion: String?, headerFields: [String: String]?) -> Self?

  /**
    - jsName: value
    - name: valueForHTTPHeaderField:
    - argLabels: forHTTPHeaderField
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: value(forHTTPHeaderField:)
    - Introduced: 10.15
  */
  @objc (valueForHTTPHeaderField:) @available(OSX 10.15, *) func value(forHTTPHeaderField: String) -> String?

  // Own Instance Properties

  /**
    - jsName: allHeaderFields
    - name: allHeaderFields
    - argLabels: 
  */
  @objc var allHeaderFields: [AnyHashable: Any] { @objc get }

  /**
    - jsName: statusCode
    - name: statusCode
    - argLabels: 
  */
  @objc var statusCode: Int { @objc get }
}

extension HTTPURLResponse: HTTPURLResponseExports {
  @objc public static func createWithURL(_ url: URL, statusCode: Int, httpVersion: String?, headerFields: [String: String]?) -> Self? {
    return self.init(url: url, statusCode: statusCode, httpVersion: httpVersion, headerFields: headerFields)
  }

}
