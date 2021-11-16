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
    - Selector: NSURLSessionStreamTask
    - Introduced: 10.11
  */

@objc(URLSessionStreamTask) protocol URLSessionStreamTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: captureStreams
  */
  @objc func captureStreams()

  /**
    - Selector: closeRead
  */
  @objc func closeRead()

  /**
    - Selector: closeWrite
  */
  @objc func closeWrite()

  /**
    - Selector: readDataOfMinLength:maxLength:timeout:completionHandler:
  */
  // jsvalue @objc func readDataOfMinLengthWithMaxLengthWithTimeoutWithCallback(_ ofMinLength: Int, _ maxLength: Int, _ timeout: TimeInterval, _ completionHandler: JSValue)

  /**
    - Selector: startSecureConnection
  */
  @objc func startSecureConnection()

  /**
    - Selector: writeData:timeout:completionHandler:
  */
  // jsvalue @objc func writeDataWithTimeoutWithCallback(_ p0: Data, _ timeout: TimeInterval, _ completionHandler: JSValue)
}

extension URLSessionStreamTask: URLSessionStreamTaskExports {
}
