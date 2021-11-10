import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVFoundation

// Interface 

  /**
    - Selector: AVPlayerItemErrorLogEvent
    - Introduced: 10.7
  */

@objc(AVPlayerItemErrorLogEvent) protocol AVPlayerItemErrorLogEventExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: URI
  */
  @objc var uri: String? { @objc (URI) get }

  /**
    - Selector: date
  */
  @objc var date: Date? { @objc get }

  /**
    - Selector: errorComment
  */
  @objc var errorComment: String? { @objc get }

  /**
    - Selector: errorDomain
  */
  @objc var errorDomain: String { @objc get }

  /**
    - Selector: errorStatusCode
  */
  @objc var errorStatusCode: Int { @objc get }

  /**
    - Selector: playbackSessionID
  */
  @objc var playbackSessionID: String? { @objc get }

  /**
    - Selector: serverAddress
  */
  @objc var serverAddress: String? { @objc get }
}

extension AVPlayerItemErrorLogEvent: AVPlayerItemErrorLogEventExports {
}
