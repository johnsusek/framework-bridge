import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLSessionTask
    - Introduced: 10.9
  */

@objc(URLSessionTask) protocol URLSessionTaskExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cancel
  */
  @objc func cancel()

  /**
    - Selector: resume
  */
  @objc func resume()

  /**
    - Selector: suspend
  */
  @objc func suspend()

  // Own Instance Properties

  /**
    - Selector: countOfBytesClientExpectsToReceive
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var countOfBytesClientExpectsToReceive: Int64 { @objc get @objc (setCountOfBytesClientExpectsToReceive:) set }

  /**
    - Selector: countOfBytesClientExpectsToSend
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var countOfBytesClientExpectsToSend: Int64 { @objc get @objc (setCountOfBytesClientExpectsToSend:) set }

  /**
    - Selector: countOfBytesExpectedToReceive
  */
  @objc var countOfBytesExpectedToReceive: Int64 { @objc get }

  /**
    - Selector: countOfBytesExpectedToSend
  */
  @objc var countOfBytesExpectedToSend: Int64 { @objc get }

  /**
    - Selector: countOfBytesReceived
  */
  @objc var countOfBytesReceived: Int64 { @objc get }

  /**
    - Selector: countOfBytesSent
  */
  @objc var countOfBytesSent: Int64 { @objc get }

  /**
    - Selector: currentRequest
  */
  @objc var currentRequest: URLRequest? { @objc get }

  /**
    - Selector: earliestBeginDate
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var earliestBeginDate: Date? { @objc get @objc (setEarliestBeginDate:) set }

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: originalRequest
  */
  @objc var originalRequest: URLRequest? { @objc get }

  /**
    - Selector: priority
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var priority: Float { @objc get @objc (setPriority:) set }

  /**
    - Selector: response
  */
  @objc var response: URLResponse? { @objc get }

  /**
    - Selector: state
  */
  @objc var state: URLSessionTask.State { @objc get }

  /**
    - Selector: taskDescription
  */
  @objc var taskDescription: String? { @objc get @objc (setTaskDescription:) set }

  /**
    - Selector: taskIdentifier
  */
  @objc var taskIdentifier: Int { @objc get }
}

extension URLSessionTask: URLSessionTaskExports {
}
