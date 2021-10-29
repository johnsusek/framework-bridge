import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionTaskMetrics
    - name: NSURLSessionTaskMetrics
    - argLabels: 
    - Introduced: 10.12
  */

@objc(URLSessionTaskMetrics) protocol URLSessionTaskMetricsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: redirectCount
    - name: redirectCount
    - argLabels: 
  */
  @objc var redirectCount: Int { @objc get }

  /**
    - jsName: taskInterval
    - name: taskInterval
    - argLabels: 
  */
  @objc var taskInterval: DateInterval { @objc get }

  /**
    - jsName: transactionMetrics
    - name: transactionMetrics
    - argLabels: 
  */
  @objc var transactionMetrics: [URLSessionTaskTransactionMetrics] { @objc get }
}

extension URLSessionTaskMetrics: URLSessionTaskMetricsExports {
}
