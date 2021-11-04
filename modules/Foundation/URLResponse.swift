import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLResponse
  */

@objc(URLResponse) protocol URLResponseExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithURL:MIMEType:expectedContentLength:textEncodingName:
  */
  @objc static func createWithURL(_: URL, mimeType: String?, expectedContentLength: Int, textEncodingName: String?) -> Self

  // Own Instance Properties

  /**
    - Selector: MIMEType
  */
  @objc var mimeType: String? { @objc (MIMEType) get }

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - Selector: expectedContentLength
  */
  @objc var expectedContentLength: Int64 { @objc get }

  /**
    - Selector: suggestedFilename
  */
  @objc var suggestedFilename: String? { @objc get }

  /**
    - Selector: textEncodingName
  */
  @objc var textEncodingName: String? { @objc get }
}

extension URLResponse: URLResponseExports {
  @objc public static func createWithURL(_ url: URL, mimeType: String?, expectedContentLength: Int, textEncodingName: String?) -> Self {
    return self.init(url: url, mimeType: mimeType, expectedContentLength: expectedContentLength, textEncodingName: textEncodingName)
  }

}
