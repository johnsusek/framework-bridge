import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSHTTPURLResponse
  */

@objc(HTTPURLResponse) protocol HTTPURLResponseExports: JSExport, URLResponseExports {
  // Static Methods

  /**
    - Selector: localizedStringForStatusCode:
  */
  @objc (localizedStringForStatusCode:) static func localizedString(forStatusCode: Int) -> String

  // Instance Methods

  /**
    - Selector: initWithURL:statusCode:HTTPVersion:headerFields:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithURL(_: URL, statusCode: Int, httpVersion: String?, headerFields: [String: String]?) -> Self?

  /**
    - Selector: valueForHTTPHeaderField:
    - Introduced: 10.15
  */
  @objc (valueForHTTPHeaderField:) @available(OSX 10.15, *) func value(forHTTPHeaderField: String) -> String?

  // Own Instance Properties

  /**
    - Selector: allHeaderFields
  */
  @objc var allHeaderFields: [AnyHashable: Any] { @objc get }

  /**
    - Selector: statusCode
  */
  @objc var statusCode: Int { @objc get }
}

extension HTTPURLResponse: HTTPURLResponseExports {
  @objc public static func createWithURL(_ url: URL, statusCode: Int, httpVersion: String?, headerFields: [String: String]?) -> Self? {
    return self.init(url: url, statusCode: statusCode, httpVersion: httpVersion, headerFields: headerFields)
  }

}
