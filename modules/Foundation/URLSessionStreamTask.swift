import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionStreamTask
    - name: NSURLSessionStreamTask
    - argLabels: 
    - Introduced: 10.11
  */

@objc(URLSessionStreamTask) protocol URLSessionStreamTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: captureStreams
    - name: captureStreams
    - argLabels: 
    - constructorTokens: 
  */
  @objc func captureStreams()

  /**
    - jsName: closeRead
    - name: closeRead
    - argLabels: 
    - constructorTokens: 
  */
  @objc func closeRead()

  /**
    - jsName: closeWrite
    - name: closeWrite
    - argLabels: 
    - constructorTokens: 
  */
  @objc func closeWrite()

  /**
    - jsName: readData
    - name: readDataOfMinLength:maxLength:timeout:completionHandler:
    - argLabels: ofMinLength, maxLength, timeout, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: readData(ofMinLength:maxLength:timeout:completionHandler:)
  */
  // jsvalue - @objc (readDataOfMinLength:maxLength:timeout:completionHandler:) func readData(ofMinLength: Int, maxLength: Int, timeout: TimeInterval, completionHandler: JSValue)

  /**
    - jsName: startSecureConnection
    - name: startSecureConnection
    - argLabels: 
    - constructorTokens: 
  */
  @objc func startSecureConnection()

  /**
    - jsName: write
    - name: writeData:timeout:completionHandler:
    - argLabels: _, timeout, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: write(_:timeout:completionHandler:)
  */
  // jsvalue - @objc (writeData:timeout:completionHandler:) func write(_: Data, timeout: TimeInterval, completionHandler: JSValue)
}

extension URLSessionStreamTask: URLSessionStreamTaskExports {
}
