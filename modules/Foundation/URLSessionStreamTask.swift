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
  // jsvalue @objc func readData(ofMinLength: Int, maxLength: Int, timeout: TimeInterval, completionHandler: JSValue)

  /**
    - Selector: startSecureConnection
  */
  @objc func startSecureConnection()

  /**
    - Selector: writeData:timeout:completionHandler:
  */
  // jsvalue @objc func write(_: Data, timeout: TimeInterval, completionHandler: JSValue)
}

extension URLSessionStreamTask: URLSessionStreamTaskExports {
}
