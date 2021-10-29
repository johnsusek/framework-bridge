import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionDataTask
    - name: NSURLSessionDataTask
    - argLabels: 
  */

@objc(URLSessionDataTask) protocol URLSessionDataTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods
}

extension URLSessionDataTask: URLSessionDataTaskExports {
}
