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
    - Selector: NSURLSessionUploadTask
  */

@objc(URLSessionUploadTask) protocol URLSessionUploadTaskExports: JSExport, URLSessionDataTaskExports {
  // Static Methods
}

extension URLSessionUploadTask: URLSessionUploadTaskExports {
}
