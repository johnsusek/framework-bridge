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
    - Selector: NSURLDownload
  */

@objc(NSURLDownload) protocol NSURLDownloadExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canResumeDownloadDecodedWithEncodingMIMEType:
  */
  @objc (canResumeDownloadDecodedWithEncodingMIMEType:) static func canResumeDownloadDecoded(withEncodingMIMEType: String) -> Bool

  // Instance Methods

  /**
    - Selector: cancel
  */
  @objc func cancel()

  /**
    - Selector: setDestination:allowOverwrite:
  */
  @objc func setDestination(_ p0: String, allowOverwrite: Bool)

  // Own Instance Properties

  /**
    - Selector: deletesFileUponFailure
  */
  @objc var deletesFileUponFailure: Bool { @objc get @objc (setDeletesFileUponFailure:) set }

  /**
    - Selector: request
  */
  @objc var request: URLRequest { @objc get }

  /**
    - Selector: resumeData
  */
  @objc var resumeData: Data? { @objc get }
}

extension NSURLDownload: NSURLDownloadExports {
}
