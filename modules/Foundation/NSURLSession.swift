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
  @objc func dataTaskWithRequestWithCompletionHandler(with: URLRequest, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:
  */
  @objc (dataTaskWithURL:) func dataTask(with: URL) -> URLSessionDataTask

  /**
    - Selector: dataTaskWithURL:completionHandler:
  */
  @objc func dataTaskWithURLWithCompletionHandler(with: URL, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - Selector: downloadTaskWithRequest:
  */
  @objc (downloadTaskWithRequest:) func downloadTask(with: URLRequest) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithRequest:completionHandler:
  */
  @objc func downloadTaskWithRequestWithCompletionHandler(with: URLRequest, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:
  */
  @objc (downloadTaskWithResumeData:) func downloadTask(withResumeData: Data) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithResumeData:completionHandler:
  */
  @objc func downloadTaskWithResumeDataWithCompletionHandler(withResumeData: Data, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:
  */
  @objc (downloadTaskWithURL:) func downloadTask(with: URL) -> URLSessionDownloadTask

  /**
    - Selector: downloadTaskWithURL:completionHandler:
  */
  @objc func downloadTaskWithURLWithCompletionHandler(with: URL, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - Selector: finishTasksAndInvalidate
  */
  @objc func finishTasksAndInvalidate()

  /**
    - Selector: flushWithCompletionHandler:
  */
  @objc func flushWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: getAllTasksWithCompletionHandler:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func getAllTasksWithCompletionHandler(completionHandler: JSValue)

  /**
    - Selector: invalidateAndCancel
  */
  @objc func invalidateAndCancel()

  /**
    - Selector: resetWithCompletionHandler:
  */
  @objc func resetWithCompletionHandler(completionHandler: JSValue)

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
  @objc func uploadTaskWithRequestWithFromDataWithCompletionHandler(with: URLRequest, from: Data?, completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:
  */
  @objc (uploadTaskWithRequest:fromFile:) func uploadTask(with: URLRequest, fromFile: URL) -> URLSessionUploadTask

  /**
    - Selector: uploadTaskWithRequest:fromFile:completionHandler:
  */
  @objc func uploadTaskWithRequestWithFromFileWithCompletionHandler(with: URLRequest, fromFile: URL, completionHandler: JSValue) -> URLSessionUploadTask

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


  /**
    - Selector: dataTaskWithRequest:completionHandler:
  */
  @objc public func dataTaskWithRequestWithCompletionHandler(with: URLRequest, completionHandler: JSValue) -> URLSessionDataTask {
    return self.dataTask(with: with, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: dataTaskWithURL:completionHandler:
  */
  @objc public func dataTaskWithURLWithCompletionHandler(with: URL, completionHandler: JSValue) -> URLSessionDataTask {
    return self.dataTask(with: with, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: downloadTaskWithRequest:completionHandler:
  */
  @objc public func downloadTaskWithRequestWithCompletionHandler(with: URLRequest, completionHandler: JSValue) -> URLSessionDownloadTask {
    return self.downloadTask(with: with, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: downloadTaskWithResumeData:completionHandler:
  */
  @objc public func downloadTaskWithResumeDataWithCompletionHandler(withResumeData: Data, completionHandler: JSValue) -> URLSessionDownloadTask {
    return self.downloadTask(withResumeData: withResumeData, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: downloadTaskWithURL:completionHandler:
  */
  @objc public func downloadTaskWithURLWithCompletionHandler(with: URL, completionHandler: JSValue) -> URLSessionDownloadTask {
    return self.downloadTask(with: with, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: flushWithCompletionHandler:
  */
  @objc public func flushWithCompletionHandler(completionHandler: JSValue) -> Void {
    return self.flush(completionHandler: { 
      completionHandler.call(withArguments: [])
    })
  }


  /**
    - Selector: getAllTasksWithCompletionHandler:
    - Introduced: 10.11
  */
  @objc public func getAllTasksWithCompletionHandler(completionHandler: JSValue) -> Void {
    return self.getAllTasks(completionHandler: { p1 in
      completionHandler.call(withArguments: [p1 as AnyObject])
    })
  }


  /**
    - Selector: resetWithCompletionHandler:
  */
  @objc public func resetWithCompletionHandler(completionHandler: JSValue) -> Void {
    return self.reset(completionHandler: { 
      completionHandler.call(withArguments: [])
    })
  }


  /**
    - Selector: uploadTaskWithRequest:fromData:completionHandler:
  */
  @objc public func uploadTaskWithRequestWithFromDataWithCompletionHandler(with: URLRequest, from: Data?, completionHandler: JSValue) -> URLSessionUploadTask {
    return self.uploadTask(with: with, from: from, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }


  /**
    - Selector: uploadTaskWithRequest:fromFile:completionHandler:
  */
  @objc public func uploadTaskWithRequestWithFromFileWithCompletionHandler(with: URLRequest, fromFile: URL, completionHandler: JSValue) -> URLSessionUploadTask {
    return self.uploadTask(with: with, fromFile: fromFile, completionHandler: { p1, p2, p3 in
      completionHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject, p3 as AnyObject])
    })
  }

}