import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSession
    - name: NSURLSession
    - argLabels: 
    - Introduced: 10.9
  */

@objc(URLSession) protocol URLSessionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: sessionWithConfiguration:
    - argLabels: configuration
    - constructorTokens: 
    - unavailable: true
    - renamed: init(configuration:)
    - message: Not available in Swift
  */
  @objc static func create(configuration: URLSessionConfiguration) -> URLSession

  /**
    - jsName: create
    - name: sessionWithConfiguration:delegate:delegateQueue:
    - argLabels: configuration, delegate, delegateQueue
    - constructorTokens: 
    - unavailable: true
    - renamed: init(configuration:delegate:delegateQueue:)
    - message: Not available in Swift
  */
  @objc static func create(configuration: URLSessionConfiguration, delegate: URLSessionDelegate?, delegateQueue: OperationQueue?) -> URLSession

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedSession
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: URLSession { @objc (sharedSession) get }

  // Instance Methods

  /**
    - jsName: dataTask
    - name: dataTaskWithRequest:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataTask(with:)
  */
  @objc (dataTaskWithRequest:) func dataTask(with: URLRequest) -> URLSessionDataTask

  /**
    - jsName: dataTask
    - name: dataTaskWithRequest:completionHandler:
    - argLabels: with, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataTask(with:completionHandler:)
  */
  // jsvalue - @objc (dataTaskWithRequest:completionHandler:) func dataTask(with: URLRequest, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - jsName: dataTask
    - name: dataTaskWithURL:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataTask(with:)
  */
  @objc (dataTaskWithURL:) func dataTask(with: URL) -> URLSessionDataTask

  /**
    - jsName: dataTask
    - name: dataTaskWithURL:completionHandler:
    - argLabels: with, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataTask(with:completionHandler:)
  */
  // jsvalue - @objc (dataTaskWithURL:completionHandler:) func dataTask(with: URL, completionHandler: JSValue) -> URLSessionDataTask

  /**
    - jsName: downloadTask
    - name: downloadTaskWithRequest:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: downloadTask(with:)
  */
  @objc (downloadTaskWithRequest:) func downloadTask(with: URLRequest) -> URLSessionDownloadTask

  /**
    - jsName: downloadTask
    - name: downloadTaskWithRequest:completionHandler:
    - argLabels: with, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: downloadTask(with:completionHandler:)
  */
  // jsvalue - @objc (downloadTaskWithRequest:completionHandler:) func downloadTask(with: URLRequest, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - jsName: downloadTask
    - name: downloadTaskWithResumeData:
    - argLabels: withResumeData
    - constructorTokens: 
    - obsoleted: 3
    - renamed: downloadTask(withResumeData:)
  */
  @objc (downloadTaskWithResumeData:) func downloadTask(withResumeData: Data) -> URLSessionDownloadTask

  /**
    - jsName: downloadTask
    - name: downloadTaskWithResumeData:completionHandler:
    - argLabels: withResumeData, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: downloadTask(withResumeData:completionHandler:)
  */
  // jsvalue - @objc (downloadTaskWithResumeData:completionHandler:) func downloadTask(withResumeData: Data, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - jsName: downloadTask
    - name: downloadTaskWithURL:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: downloadTask(with:)
  */
  @objc (downloadTaskWithURL:) func downloadTask(with: URL) -> URLSessionDownloadTask

  /**
    - jsName: downloadTask
    - name: downloadTaskWithURL:completionHandler:
    - argLabels: with, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: downloadTask(with:completionHandler:)
  */
  // jsvalue - @objc (downloadTaskWithURL:completionHandler:) func downloadTask(with: URL, completionHandler: JSValue) -> URLSessionDownloadTask

  /**
    - jsName: finishTasksAndInvalidate
    - name: finishTasksAndInvalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func finishTasksAndInvalidate()

  /**
    - jsName: flush
    - name: flushWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: flush(completionHandler:)
  */
  // jsvalue - @objc (flushWithCompletionHandler:) func flush(completionHandler: JSValue)

  /**
    - jsName: getAllTasks
    - name: getAllTasksWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: getAllTasks(completionHandler:)
    - Introduced: 10.11
  */
  // jsvalue - @objc (getAllTasksWithCompletionHandler:) @available(OSX 10.11, *) func getAllTasks(completionHandler: JSValue)

  /**
    - jsName: getTasksWithCompletionHandler
    - name: getTasksWithCompletionHandler:
    - argLabels: 
    - constructorTokens: 
  */
  // jsvalue - @objc func getTasksWithCompletionHandler(_: JSValue)

  /**
    - jsName: invalidateAndCancel
    - name: invalidateAndCancel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateAndCancel()

  /**
    - jsName: reset
    - name: resetWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: reset(completionHandler:)
  */
  // jsvalue - @objc (resetWithCompletionHandler:) func reset(completionHandler: JSValue)

  /**
    - jsName: streamTask
    - name: streamTaskWithHostName:port:
    - argLabels: withHostName, port
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: streamTask(withHostName:port:)
    - Introduced: 10.11
  */
  @objc (streamTaskWithHostName:port:) @available(OSX 10.11, *) func streamTask(withHostName: String, port: Int) -> URLSessionStreamTask

  /**
    - jsName: streamTask
    - name: streamTaskWithNetService:
    - argLabels: with
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: streamTask(with:)
    - Introduced: 10.11
  */
  @objc (streamTaskWithNetService:) @available(OSX 10.11, *) func streamTask(with: NetService) -> URLSessionStreamTask

  /**
    - jsName: uploadTask
    - name: uploadTaskWithRequest:fromData:
    - argLabels: with, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: uploadTask(with:from:)
  */
  @objc (uploadTaskWithRequest:fromData:) func uploadTask(with: URLRequest, from: Data) -> URLSessionUploadTask

  /**
    - jsName: uploadTask
    - name: uploadTaskWithRequest:fromData:completionHandler:
    - argLabels: with, from, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: uploadTask(with:from:completionHandler:)
  */
  // jsvalue - @objc (uploadTaskWithRequest:fromData:completionHandler:) func uploadTask(with: URLRequest, from: Data?, completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - jsName: uploadTask
    - name: uploadTaskWithRequest:fromFile:
    - argLabels: with, fromFile
    - constructorTokens: 
    - obsoleted: 3
    - renamed: uploadTask(with:fromFile:)
  */
  @objc (uploadTaskWithRequest:fromFile:) func uploadTask(with: URLRequest, fromFile: URL) -> URLSessionUploadTask

  /**
    - jsName: uploadTask
    - name: uploadTaskWithRequest:fromFile:completionHandler:
    - argLabels: with, fromFile, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: uploadTask(with:fromFile:completionHandler:)
  */
  // jsvalue - @objc (uploadTaskWithRequest:fromFile:completionHandler:) func uploadTask(with: URLRequest, fromFile: URL, completionHandler: JSValue) -> URLSessionUploadTask

  /**
    - jsName: uploadTask
    - name: uploadTaskWithStreamedRequest:
    - argLabels: withStreamedRequest
    - constructorTokens: 
    - obsoleted: 3
    - renamed: uploadTask(withStreamedRequest:)
  */
  @objc (uploadTaskWithStreamedRequest:) func uploadTask(withStreamedRequest: URLRequest) -> URLSessionUploadTask

  /**
    - jsName: webSocketTask
    - name: webSocketTaskWithRequest:
    - argLabels: with
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: webSocketTask(with:)
    - Introduced: 10.15
  */
  @objc (webSocketTaskWithRequest:) @available(OSX 10.15, *) func webSocketTask(with: URLRequest) -> URLSessionWebSocketTask

  /**
    - jsName: webSocketTask
    - name: webSocketTaskWithURL:
    - argLabels: with
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: webSocketTask(with:)
    - Introduced: 10.15
  */
  @objc (webSocketTaskWithURL:) @available(OSX 10.15, *) func webSocketTask(with: URL) -> URLSessionWebSocketTask

  /**
    - jsName: webSocketTask
    - name: webSocketTaskWithURL:protocols:
    - argLabels: with, protocols
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: webSocketTask(with:protocols:)
    - Introduced: 10.15
  */
  @objc (webSocketTaskWithURL:protocols:) @available(OSX 10.15, *) func webSocketTask(with: URL, protocols: [String]) -> URLSessionWebSocketTask

  // Own Instance Properties

  /**
    - jsName: configuration
    - name: configuration
    - argLabels: 
  */
  @objc var configuration: URLSessionConfiguration { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: URLSessionDelegate? { @objc get }

  /**
    - jsName: delegateQueue
    - name: delegateQueue
    - argLabels: 
  */
  @objc var delegateQueue: OperationQueue { @objc get }

  /**
    - jsName: sessionDescription
    - name: sessionDescription
    - argLabels: 
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
