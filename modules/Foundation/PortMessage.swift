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
    - Selector: NSPortMessage
  */

@objc(PortMessage) protocol PortMessageExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: sendBeforeDate:
  */
  @objc (sendBeforeDate:) func send(before: Date) -> Bool

  // Own Instance Properties

  /**
    - Selector: components
  */
  @objc var components: [Any]? { @objc get }

  /**
    - Selector: msgid
  */
  @objc var msgid: UInt32 { @objc get @objc (setMsgid:) set }

  /**
    - Selector: receivePort
  */
  @objc var receivePort: Port? { @objc get }

  /**
    - Selector: sendPort
  */
  @objc var sendPort: Port? { @objc get }
}

extension PortMessage: PortMessageExports {
}
