import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLSessionTaskMetrics
    - Introduced: 10.12
  */

@objc(URLSessionTaskMetrics) protocol URLSessionTaskMetricsExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: redirectCount
  */
  @objc var redirectCount: Int { @objc get }

  /**
    - Selector: taskInterval
  */
  @objc var taskInterval: DateInterval { @objc get }

  /**
    - Selector: transactionMetrics
  */
  @objc var transactionMetrics: [URLSessionTaskTransactionMetrics] { @objc get }
}

extension URLSessionTaskMetrics: URLSessionTaskMetricsExports {
}
