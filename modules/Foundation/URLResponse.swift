import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLResponse
    - name: NSURLResponse
    - argLabels: 
  */

@objc(URLResponse) protocol URLResponseExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithURL
    - name: initWithURL:MIMEType:expectedContentLength:textEncodingName:
    - argLabels: MIMEType, expectedContentLength, textEncodingName
    - constructorTokens: url, mimeType, expectedContentLength, textEncodingName
  */
  @objc static func createWithURL(_: URL, mimeType: String?, expectedContentLength: Int, textEncodingName: String?) -> Self

  // Own Instance Properties

  /**
    - jsName: mimeType
    - name: MIMEType
    - argLabels: 
    - obsoleted: 3
    - renamed: mimeType
  */
  @objc var mimeType: String? { @objc (MIMEType) get }

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - jsName: expectedContentLength
    - name: expectedContentLength
    - argLabels: 
  */
  @objc var expectedContentLength: Int64 { @objc get }

  /**
    - jsName: suggestedFilename
    - name: suggestedFilename
    - argLabels: 
  */
  @objc var suggestedFilename: String? { @objc get }

  /**
    - jsName: textEncodingName
    - name: textEncodingName
    - argLabels: 
  */
  @objc var textEncodingName: String? { @objc get }
}

extension URLResponse: URLResponseExports {
  @objc public static func createWithURL(_ url: URL, mimeType: String?, expectedContentLength: Int, textEncodingName: String?) -> Self {
    return self.init(url: url, mimeType: mimeType, expectedContentLength: expectedContentLength, textEncodingName: textEncodingName)
  }

}
