import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLSessionWebSocketTask
    - name: NSURLSessionWebSocketTask
    - argLabels: 
    - Introduced: 10.15
  */

@objc(URLSessionWebSocketTask) protocol URLSessionWebSocketTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancelWithCloseCode:reason:
    - argLabels: with, reason
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cancel(with:reason:)
  */
  @objc (cancelWithCloseCode:reason:) func cancel(with: URLSessionWebSocketTask.CloseCode, reason: Data?)

  /**
    - jsName: receiveMessageWithCompletionHandler
    - name: receiveMessageWithCompletionHandler:
    - argLabels: 
    - constructorTokens: 
  */
  // jsvalue - @objc func receiveMessageWithCompletionHandler(_: JSValue)

  /**
    - jsName: sendMessage
    - name: sendMessage:completionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
  */
  // jsvalue - @objc func sendMessage(_: NSURLSessionWebSocketMessage, completionHandler: JSValue)

  /**
    - jsName: sendPing
    - name: sendPingWithPongReceiveHandler:
    - argLabels: pongReceiveHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sendPing(pongReceiveHandler:)
  */
  // jsvalue - @objc (sendPingWithPongReceiveHandler:) func sendPing(pongReceiveHandler: JSValue)

  // Own Instance Properties

  /**
    - jsName: closeCode
    - name: closeCode
    - argLabels: 
  */
  @objc var closeCode: URLSessionWebSocketTask.CloseCode { @objc get }

  /**
    - jsName: closeReason
    - name: closeReason
    - argLabels: 
  */
  @objc var closeReason: Data? { @objc get }

  /**
    - jsName: maximumMessageSize
    - name: maximumMessageSize
    - argLabels: 
  */
  @objc var maximumMessageSize: Int { @objc get @objc (setMaximumMessageSize:) set }
}

extension URLSessionWebSocketTask: URLSessionWebSocketTaskExports {
}
