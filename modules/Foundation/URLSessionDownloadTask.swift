import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLSessionDownloadTask
  */

@objc(URLSessionDownloadTask) protocol URLSessionDownloadTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cancelByProducingResumeData:
  */
  // jsvalue @objc func cancel(byProducingResumeData: JSValue)
}

extension URLSessionDownloadTask: URLSessionDownloadTaskExports {
}
