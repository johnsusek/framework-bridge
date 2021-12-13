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
    - Selector: NSURLConnection
  */

@objc(NSURLConnection) protocol NSURLConnectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: canHandleRequest:
  */
  @objc (canHandleRequest:) static func canHandle(_ p0: URLRequest) -> Bool

  // Instance Methods

  /**
    - Selector: cancel
  */
  @objc func cancel()

  /**
    - Selector: scheduleInRunLoop:forMode:
    - Introduced: 10.5
  */
  @objc (scheduleInRunLoop:forMode:) @available(OSX 10.5, *) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: setDelegateQueue:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func setDelegateQueue(_ p0: OperationQueue?)

  /**
    - Selector: start
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func start()

  /**
    - Selector: unscheduleFromRunLoop:forMode:
    - Introduced: 10.5
  */
  @objc (unscheduleFromRunLoop:forMode:) @available(OSX 10.5, *) func unschedule(from: RunLoop, forMode: RunLoop.Mode)

  // Own Instance Properties

  /**
    - Selector: currentRequest
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var currentRequest: URLRequest { @objc get }

  /**
    - Selector: originalRequest
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var originalRequest: URLRequest { @objc get }
}

extension NSURLConnection: NSURLConnectionExports {
}
