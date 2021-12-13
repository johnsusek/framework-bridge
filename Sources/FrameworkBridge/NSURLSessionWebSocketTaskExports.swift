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

@objc(URLSessionWebSocketTask) protocol URLSessionWebSocketTaskExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cancelWithCloseCode:reason:
  */
  @objc (cancelWithCloseCode:reason:) func cancel(with: URLSessionWebSocketTask.CloseCode, reason: Data?)

  /**
    - Selector: receiveMessageWithCompletionHandler:
  */
  @objc func receiveMessageWithCompletionHandler(_ p0: JSValue)

  /**
    - Selector: sendMessage:completionHandler:
  */
  // @objc func sendMessage(_ p0: NSURLSessionWebSocketMessage, completionHandler: JSValue)

  /**
    - Selector: sendPingWithPongReceiveHandler:
  */
  @objc func sendPing(pongReceiveHandler: JSValue)

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

  /**
    - Selector: receiveMessageWithCompletionHandler:
  */
  @objc public func receiveMessageWithCompletionHandler(_ p0: JSValue) -> Void {
     self.receive(completionHandler: { p1 in
      p0.call(withArguments: [p1 as AnyObject])
    })
  }


  /**
    - Selector: sendMessage:completionHandler:
  */
  // @objc public func sendMessage(_ p0: NSURLSessionWebSocketMessage, completionHandler: JSValue) -> Void {
  //    self.send(p0 as! URLSessionWebSocketTask.Message, completionHandler: { p1 in
  //     completionHandler.call(withArguments: [p1 as AnyObject])
  //   })
  // }


  /**
    - Selector: sendPingWithPongReceiveHandler:
  */
  @objc public func sendPing(pongReceiveHandler: JSValue) -> Void {
     self.sendPing(pongReceiveHandler: { p1 in
      pongReceiveHandler.call(withArguments: [p1 as AnyObject])
    })
  }

}
