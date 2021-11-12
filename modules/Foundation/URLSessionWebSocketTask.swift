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
    - Selector: NSURLSessionWebSocketTask
    - Introduced: 10.15
  */

@objc(URLSessionWebSocketTask) protocol URLSessionWebSocketTaskExports: JSExport, URLSessionTaskExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cancelWithCloseCode:reason:
  */
  @objc (cancelWithCloseCode:reason:) func cancel(with: URLSessionWebSocketTask.CloseCode, reason: Data?)

  /**
    - Selector: receiveMessageWithCompletionHandler:
  */
  // jsvalue @objc func receiveMessageWithCompletionHandler(_ p0: JSValue)

  /**
    - Selector: sendMessage:completionHandler:
  */
  // jsvalue @objc func sendMessageCompletionHandler(_ completionHandler: NSURLSessionWebSocketMessage, completionHandler completionHandler1: JSValue)

  /**
    - Selector: sendPingWithPongReceiveHandler:
  */
  // jsvalue @objc func sendPingWithPongReceiveHandler(_ pongReceiveHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: closeCode
  */
  @objc var closeCode: URLSessionWebSocketTask.CloseCode { @objc get }

  /**
    - Selector: closeReason
  */
  @objc var closeReason: Data? { @objc get }

  /**
    - Selector: maximumMessageSize
  */
  @objc var maximumMessageSize: Int { @objc get @objc (setMaximumMessageSize:) set }
}

extension URLSessionWebSocketTask: URLSessionWebSocketTaskExports {
}
