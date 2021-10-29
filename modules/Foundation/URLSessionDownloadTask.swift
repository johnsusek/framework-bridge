import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionDownloadTask
    - name: NSURLSessionDownloadTask
    - argLabels: 
  */

@objc(URLSessionDownloadTask) protocol URLSessionDownloadTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancelByProducingResumeData:
    - argLabels: byProducingResumeData
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cancel(byProducingResumeData:)
  */
  // jsvalue - @objc (cancelByProducingResumeData:) func cancel(byProducingResumeData: JSValue)
}

extension URLSessionDownloadTask: URLSessionDownloadTaskExports {
}
