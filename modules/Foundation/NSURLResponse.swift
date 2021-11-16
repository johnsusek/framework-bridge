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
    - Selector: NSURLResponse
  */

@objc(URLResponse) protocol URLResponseExports: JSExport, NSObjectExports {
  // Static Methods

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
}
