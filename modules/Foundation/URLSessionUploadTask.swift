import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionUploadTask
    - name: NSURLSessionUploadTask
    - argLabels: 
  */

@objc(URLSessionUploadTask) protocol URLSessionUploadTaskExports: JSExport, URLSessionDataTaskExports {
  // Static Methods
}

extension URLSessionUploadTask: URLSessionUploadTaskExports {
}
