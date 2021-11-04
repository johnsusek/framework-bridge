import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLSession
    - Introduced: 10.9
  */

@objc(URLSession) protocol URLSessionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sessionWithConfiguration:
  */
  @objc static func create(configuration: URLSessionConfiguration) -> URLSession

  /**
    - Selector: sessionWithConfiguration:delegate:delegateQueue:
  */
  @objc static func create(configuration: URLSessionConfiguration, delegate: URLSessionDelegate?, delegateQueue: OperationQueue?) -> URLSession

  // Own Static Properties

  /**
    - Selector: sharedSession
  */
  @objc static var shared: URLSession { @objc (sharedSession) get }

  // Instance Methods

  /**
    - Selector: dataTaskWithRequest:
  */
  @objc (dataTaskWithRequest:) func dataTask(with: URLRequest) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithRequest:completionHandler:
  */
  // jsvalue @objc func dataTask(with: URLRequest, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:
  */
  @objc (dataTaskWithURL:) func dataTask(with: URL) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:completionHandler:
  */
  // jsvalue @objc func dataTask(with: URL, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: downloadTaskWithRequest:
  */
  @objc (downloadTaskWithRequest:) func downloadTask(with: URLRequest) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithRequest:completionHandler:
  */
  // jsvalue @objc func downloadTask(with: URLRequest, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:
  */
  @objc (downloadTaskWithResumeData:) func downloadTask(withResumeData: Data) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:completionHandler:
  */
  // jsvalue @objc func downloadTask(withResumeData: Data, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:
  */
  @objc (downloadTaskWithURL:) func downloadTask(with: URL) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:completionHandler:
  */
  // jsvalue @objc func downloadTask(with: URL, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: finishTasksAndInvalidate
  */
  @objc func finishTasksAndInvalidate()

  /**
    - Selector: flushWithCompletionHandler:
  */
  // jsvalue @objc func flush(completionHandler: JSValue)

  /**
    - Selector: getAllTasksWithCompletionHandler:
    - Introduced: 10.11
  */
  // jsvalue @objc @available(OSX 10.11, *) func getAllTasks(completionHandler: JSValue)

  /**
    - Selector: getTasksWithCompletionHandler:
  */
  // jsvalue @objc func getTasksWithCompletionHandler(_: JSValue)

  /**
    - Selector: invalidateAndCancel
  */
  @objc func invalidateAndCancel()

  /**
    - Selector: resetWithCompletionHandler:
  */
  // jsvalue @objc func reset(completionHandler: JSValue)

  /**
    - Selector: streamTaskWithHostName:port:
    - Introduced: 10.11
  */
  @objc (streamTaskWithHostName:port:) @available(OSX 10.11, *) func streamTask(withHostName: String, port: Int) -> URLSessionStreamTask

  /**
    - Selector: streamTaskWithNetService:
    - Introduced: 10.11
  */
  @objc (streamTaskWithNetService:) @available(OSX 10.11, *) func streamTask(with: NetService) -> URLSessionStreamTask

  /**
    - Selector: uploadTaskWithRequest:fromData:
  */
  @objc (uploadTaskWithRequest:fromData:) func uploadTask(with: URLRequest, from: Data) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromData:completionHandler:
  */
  // jsvalue @objc func uploadTask(with: URLRequest, from: Data?, completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:
  */
  @objc (uploadTaskWithRequest:fromFile:) func uploadTask(with: URLRequest, fromFile: URL) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:completionHandler:
  */
  // jsvalue @objc func uploadTask(with: URLRequest, fromFile: URL, completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithStreamedRequest:
  */
  @objc (uploadTaskWithStreamedRequest:) func uploadTask(withStreamedRequest: URLRequest) -> URLSessionUploadTask

  /**
    - Selector: webSocketTaskWithRequest:
    - Introduced: 10.15
  */
  @objc (webSocketTaskWithRequest:) @available(OSX 10.15, *) func webSocketTask(with: URLRequest) -> URLSessionWebSocketTask

  /**
    - Selector: webSocketTaskWithURL:
    - Introduced: 10.15
  */
  @objc (webSocketTaskWithURL:) @available(OSX 10.15, *) func webSocketTask(with: URL) -> URLSessionWebSocketTask

  /**
    - Selector: webSocketTaskWithURL:protocols:
    - Introduced: 10.15
  */
  @objc (webSocketTaskWithURL:protocols:) @available(OSX 10.15, *) func webSocketTask(with: URL, protocols: [String]) -> URLSessionWebSocketTask

  // Own Instance Properties

  /**
    - Selector: configuration
  */
  @objc var configuration: URLSessionConfiguration { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: URLSessionDelegate? { @objc get }

  /**
    - Selector: delegateQueue
  */
  @objc var delegateQueue: OperationQueue { @objc get }

  /**
    - Selector: sessionDescription
  */
  @objc var sessionDescription: String? { @objc get @objc (setSessionDescription:) set }
}

extension URLSession: URLSessionExports {
  @objc public static func create(configuration: URLSessionConfiguration) -> URLSession {
    return self.init(configuration: configuration)
  }

  @objc public static func create(configuration: URLSessionConfiguration, delegate: URLSessionDelegate?, delegateQueue: OperationQueue?) -> URLSession {
    return self.init(configuration: configuration, delegate: delegate, delegateQueue: delegateQueue)
  }

}
