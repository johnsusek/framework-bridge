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
  @objc static func createWithConfiguration(_ configuration: URLSessionConfiguration) -> URLSession

  /**
    - Selector: sessionWithConfiguration:delegate:delegateQueue:
  */
  @objc static func createWithConfiguration_Delegate_DelegateQueue(_ configuration: URLSessionConfiguration, _ delegate: URLSessionDelegate?, _ delegateQueue: OperationQueue?) -> URLSession

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
    - Selector: dataTaskWithURL:
  */
  @objc (dataTaskWithURL:) func dataTask(with: URL) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:completionHandler:
  */
  @objc func dataTask(with: URL, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: downloadTaskWithRequest:
  */
  @objc (downloadTaskWithRequest:) func downloadTask(with: URLRequest) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:
  */
  @objc (downloadTaskWithResumeData:) func downloadTask(withResumeData: Data) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:completionHandler:
  */
  @objc func downloadTask(withResumeData: Data, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:
  */
  @objc (downloadTaskWithURL:) func downloadTask(with: URL) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:completionHandler:
  */
  @objc func downloadTask(with: URL, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: finishTasksAndInvalidate
  */
  @objc func finishTasksAndInvalidate()

  /**
    - Selector: flushWithCompletionHandler:
  */
  @objc func flush(completionHandler: JSValue)

  /**
    - Selector: getAllTasksWithCompletionHandler:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func getAllTasks(completionHandler: JSValue)

  /**
    - Selector: invalidateAndCancel
  */
  @objc func invalidateAndCancel()

  /**
    - Selector: resetWithCompletionHandler:
  */
  @objc func reset(completionHandler: JSValue)

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
  @objc func uploadTask(with: URLRequest, from: Data?, completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:
  */
  @objc (uploadTaskWithRequest:fromFile:) func uploadTask(with: URLRequest, fromFile: URL) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:completionHandler:
  */
  @objc func uploadTask(with: URLRequest, fromFile: URL, completionHandler: JSValue) -> URLSessionUploadTask

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
  @objc @available(OSX 10.15, *) func webSocketTask2(with: URL) -> URLSessionWebSocketTask

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
  @objc @available(OSX 10.15, *) func webSocketTask2(with url: URL) -> URLSessionWebSocketTask {
    return self.webSocketTask(with: url)
  }

  /**
    - Selector: sessionWithConfiguration:
  */
  @objc public static func createWithConfiguration(_ configuration: URLSessionConfiguration) -> URLSession {
    return self.init(configuration: configuration)
  }


  /**
    - Selector: sessionWithConfiguration:delegate:delegateQueue:
  */
  @objc public static func createWithConfiguration_Delegate_DelegateQueue(_ configuration: URLSessionConfiguration, _ delegate: URLSessionDelegate?, _ delegateQueue: OperationQueue?) -> URLSession {
    return self.init(configuration: configuration, delegate: delegate, delegateQueue: delegateQueue)
  }


  /**
    - Selector: dataTaskWithURL:completionHandler:
  */
  @objc public func dataTask(with: URL, completionHandler: JSValue) -> URLSessionDataTask {
    return self.dataTask(with: with, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: downloadTaskWithResumeData:completionHandler:
  */
  @objc public func downloadTask(withResumeData: Data, completionHandler: JSValue) -> URLSessionDownloadTask {
    return self.downloadTask(withResumeData: withResumeData, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: downloadTaskWithURL:completionHandler:
  */
  @objc public func downloadTask(with: URL, completionHandler: JSValue) -> URLSessionDownloadTask {
    return self.downloadTask(with: with, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: flushWithCompletionHandler:
  */
  @objc public func flush(completionHandler: JSValue) -> Void {
    return self.flush(completionHandler: {
      completionHandler.call(withArguments: [])
    })
  }


  /**
    - Selector: getAllTasksWithCompletionHandler:
    - Introduced: 10.11
  */
  @objc public func getAllTasks(completionHandler: JSValue) -> Void {
    return self.getAllTasks(completionHandler: { p1 in
      completionHandler.call(withArguments: [p1 as AnyObject])
    })
  }


  /**
    - Selector: resetWithCompletionHandler:
  */
  @objc public func reset(completionHandler: JSValue) -> Void {
    return self.reset(completionHandler: {
      completionHandler.call(withArguments: [])
    })
  }


  /**
    - Selector: uploadTaskWithRequest:fromData:completionHandler:
  */
  @objc public func uploadTask(with: URLRequest, from: Data?, completionHandler: JSValue) -> URLSessionUploadTask {
    return self.uploadTask(with: with, from: from, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: uploadTaskWithRequest:fromFile:completionHandler:
  */
  @objc public func uploadTask(with: URLRequest, fromFile: URL, completionHandler: JSValue) -> URLSessionUploadTask {
    return self.uploadTask(with: with, fromFile: fromFile, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }

}
