import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionTask
    - name: NSURLSessionTask
    - argLabels: 
    - Introduced: 10.9
  */

@objc(URLSessionTask) protocol URLSessionTaskExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancel()

  /**
    - jsName: resume
    - name: resume
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resume()

  /**
    - jsName: suspend
    - name: suspend
    - argLabels: 
    - constructorTokens: 
  */
  @objc func suspend()

  // Own Instance Properties

  /**
    - jsName: countOfBytesClientExpectsToReceive
    - name: countOfBytesClientExpectsToReceive
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var countOfBytesClientExpectsToReceive: Int64 { @objc get @objc (setCountOfBytesClientExpectsToReceive:) set }

  /**
    - jsName: countOfBytesClientExpectsToSend
    - name: countOfBytesClientExpectsToSend
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var countOfBytesClientExpectsToSend: Int64 { @objc get @objc (setCountOfBytesClientExpectsToSend:) set }

  /**
    - jsName: countOfBytesExpectedToReceive
    - name: countOfBytesExpectedToReceive
    - argLabels: 
  */
  @objc var countOfBytesExpectedToReceive: Int64 { @objc get }

  /**
    - jsName: countOfBytesExpectedToSend
    - name: countOfBytesExpectedToSend
    - argLabels: 
  */
  @objc var countOfBytesExpectedToSend: Int64 { @objc get }

  /**
    - jsName: countOfBytesReceived
    - name: countOfBytesReceived
    - argLabels: 
  */
  @objc var countOfBytesReceived: Int64 { @objc get }

  /**
    - jsName: countOfBytesSent
    - name: countOfBytesSent
    - argLabels: 
  */
  @objc var countOfBytesSent: Int64 { @objc get }

  /**
    - jsName: currentRequest
    - name: currentRequest
    - argLabels: 
  */
  @objc var currentRequest: URLRequest? { @objc get }

  /**
    - jsName: earliestBeginDate
    - name: earliestBeginDate
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var earliestBeginDate: Date? { @objc get @objc (setEarliestBeginDate:) set }

  /**
    - jsName: error
    - name: error
    - argLabels: 
  */
  @objc var error: Error? { @objc get }

  /**
    - jsName: originalRequest
    - name: originalRequest
    - argLabels: 
  */
  @objc var originalRequest: URLRequest? { @objc get }

  /**
    - jsName: priority
    - name: priority
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var priority: Float { @objc get @objc (setPriority:) set }

  /**
    - jsName: response
    - name: response
    - argLabels: 
  */
  @objc var response: URLResponse? { @objc get }

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: URLSessionTask.State { @objc get }

  /**
    - jsName: taskDescription
    - name: taskDescription
    - argLabels: 
  */
  @objc var taskDescription: String? { @objc get @objc (setTaskDescription:) set }

  /**
    - jsName: taskIdentifier
    - name: taskIdentifier
    - argLabels: 
  */
  @objc var taskIdentifier: Int { @objc get }
}

extension URLSessionTask: URLSessionTaskExports {
}
