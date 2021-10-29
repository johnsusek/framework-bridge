import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSURLConnection
    - name: NSURLConnection
    - argLabels: 
  */

@objc(NSURLConnection) protocol NSURLConnectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: canHandle
    - name: canHandleRequest:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canHandle(_:)
  */
  @objc (canHandleRequest:) static func canHandle(_: URLRequest) -> Bool

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancel()

  /**
    - jsName: schedule
    - name: scheduleInRunLoop:forMode:
    - argLabels: in, forMode
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: schedule(in:forMode:)
    - Introduced: 10.5
  */
  @objc (scheduleInRunLoop:forMode:) @available(OSX 10.5, *) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: setDelegateQueue
    - name: setDelegateQueue:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func setDelegateQueue(_: OperationQueue?)

  /**
    - jsName: start
    - name: start
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func start()

  /**
    - jsName: unschedule
    - name: unscheduleFromRunLoop:forMode:
    - argLabels: from, forMode
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: unschedule(from:forMode:)
    - Introduced: 10.5
  */
  @objc (unscheduleFromRunLoop:forMode:) @available(OSX 10.5, *) func unschedule(from: RunLoop, forMode: RunLoop.Mode)

  // Own Instance Properties

  /**
    - jsName: currentRequest
    - name: currentRequest
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var currentRequest: URLRequest { @objc get }

  /**
    - jsName: originalRequest
    - name: originalRequest
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var originalRequest: URLRequest { @objc get }
}

extension NSURLConnection: NSURLConnectionExports {
}
