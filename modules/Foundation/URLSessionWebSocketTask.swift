import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  // jsvalue @objc func receiveMessageWithCompletionHandler(_: JSValue)

  /**
    - Selector: sendMessage:completionHandler:
  */
  // jsvalue @objc func sendMessage(_: NSURLSessionWebSocketMessage, completionHandler: JSValue)

  /**
    - Selector: sendPingWithPongReceiveHandler:
  */
  // jsvalue @objc func sendPing(pongReceiveHandler: JSValue)

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
