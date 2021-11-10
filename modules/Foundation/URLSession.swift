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
    - Selector: NSURLSession
    - Introduced: 10.9
  */

@objc(URLSession) protocol URLSessionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sessionWithConfiguration:
  */
  @objc static func createWithSessionWithConfiguration(_ configuration: URLSessionConfiguration) -> URLSession

  /**
    - Selector: sessionWithConfiguration:delegate:delegateQueue:
  */
  @objc static func createWithSessionWithConfigurationWithDelegateWithDelegateQueue(_ configuration: URLSessionConfiguration, _ delegate: URLSessionDelegate?, _ delegateQueue: OperationQueue?) -> URLSession

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
  // jsvalue @objc func dataTaskWithRequestWithCompletionHandler(_ with: URLRequest, _ completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:
  */
  @objc (dataTaskWithURL:) func dataTask(with: URL) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:completionHandler:
  */
  // jsvalue @objc func dataTaskWithURLWithCompletionHandler(_ with: URL, _ completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: downloadTaskWithRequest:
  */
  @objc (downloadTaskWithRequest:) func downloadTask(with: URLRequest) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithRequest:completionHandler:
  */
  // jsvalue @objc func downloadTaskWithRequestWithCompletionHandler(_ with: URLRequest, _ completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:
  */
  @objc (downloadTaskWithResumeData:) func downloadTask(withResumeData: Data) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:completionHandler:
  */
  // jsvalue @objc func downloadTaskWithResumeDataWithCompletionHandler(_ withResumeData: Data, _ completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:
  */
  @objc (downloadTaskWithURL:) func downloadTask(with: URL) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:completionHandler:
  */
  // jsvalue @objc func downloadTaskWithURLWithCompletionHandler(_ with: URL, _ completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: finishTasksAndInvalidate
  */
  @objc func finishTasksAndInvalidate()

  /**
    - Selector: flushWithCompletionHandler:
  */
  // jsvalue @objc func flushWithCompletionHandler(_ completionHandler: JSValue)

  /**
    - Selector: getAllTasksWithCompletionHandler:
    - Introduced: 10.11
  */
  // jsvalue @objc @available(OSX 10.11, *) func getAllTasksWithCompletionHandler(_ completionHandler: JSValue)

  /**
    - Selector: getTasksWithCompletionHandler:
  */
  // jsvalue @objc func getTasksWithCompletionHandler(_ p0: JSValue)

  /**
    - Selector: invalidateAndCancel
  */
  @objc func invalidateAndCancel()

  /**
    - Selector: resetWithCompletionHandler:
  */
  // jsvalue @objc func resetWithCompletionHandler(_ completionHandler: JSValue)

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
  // jsvalue @objc func uploadTaskWithRequestWithFromDataWithCompletionHandler(_ with: URLRequest, _ from: Data?, _ completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:
  */
  @objc (uploadTaskWithRequest:fromFile:) func uploadTask(with: URLRequest, fromFile: URL) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:completionHandler:
  */
  // jsvalue @objc func uploadTaskWithRequestWithFromFileWithCompletionHandler(_ with: URLRequest, _ fromFile: URL, _ completionHandler: JSValue) -> URLSessionUploadTask

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

  /**
    - Selector: sessionWithConfiguration:
  */
  @objc public static func createWithSessionWithConfiguration(_ configuration: URLSessionConfiguration) -> URLSession {
    return self.init(configuration: configuration)
  }


  /**
    - Selector: sessionWithConfiguration:delegate:delegateQueue:
  */
  @objc public static func createWithSessionWithConfigurationWithDelegateWithDelegateQueue(_ configuration: URLSessionConfiguration, _ delegate: URLSessionDelegate?, _ delegateQueue: OperationQueue?) -> URLSession {
    return self.init(configuration: configuration, delegate: delegate, delegateQueue: delegateQueue)
  }

}
