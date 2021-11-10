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
    - Selector: AVPlayerItemAccessLogEvent
    - Introduced: 10.7
  */

@objc(AVPlayerItemAccessLogEvent) protocol AVPlayerItemAccessLogEventExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: URI
  */
  @objc var uri: String? { @objc (URI) get }

  /**
    - Selector: averageAudioBitrate
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var averageAudioBitrate: Double { @objc get }

  /**
    - Selector: averageVideoBitrate
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var averageVideoBitrate: Double { @objc get }

  /**
    - Selector: downloadOverdue
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var downloadOverdue: Int { @objc get }

  /**
    - Selector: durationWatched
  */
  @objc var durationWatched: TimeInterval { @objc get }

  /**
    - Selector: indicatedAverageBitrate
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var indicatedAverageBitrate: Double { @objc get }

  /**
    - Selector: indicatedBitrate
  */
  @objc var indicatedBitrate: Double { @objc get }

  /**
    - Selector: mediaRequestsWWAN
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var mediaRequestsWWAN: Int { @objc get }

  /**
    - Selector: numberOfBytesTransferred
  */
  @objc var numberOfBytesTransferred: Int64 { @objc get }

  /**
    - Selector: numberOfDroppedVideoFrames
  */
  @objc var numberOfDroppedVideoFrames: Int { @objc get }

  /**
    - Selector: numberOfMediaRequests
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var numberOfMediaRequests: Int { @objc get }

  /**
    - Selector: numberOfServerAddressChanges
  */
  @objc var numberOfServerAddressChanges: Int { @objc get }

  /**
    - Selector: numberOfStalls
  */
  @objc var numberOfStalls: Int { @objc get }

  /**
    - Selector: observedBitrate
  */
  @objc var observedBitrate: Double { @objc get }

  /**
    - Selector: observedBitrateStandardDeviation
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var observedBitrateStandardDeviation: Double { @objc get }

  /**
    - Selector: observedMaxBitrate
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var observedMaxBitrate: Double { @objc get }

  /**
    - Selector: observedMinBitrate
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var observedMinBitrate: Double { @objc get }

  /**
    - Selector: playbackSessionID
  */
  @objc var playbackSessionID: String? { @objc get }

  /**
    - Selector: playbackStartDate
  */
  @objc var playbackStartDate: Date? { @objc get }

  /**
    - Selector: playbackStartOffset
  */
  @objc var playbackStartOffset: TimeInterval { @objc get }

  /**
    - Selector: playbackType
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var playbackType: String? { @objc get }

  /**
    - Selector: segmentsDownloadedDuration
  */
  @objc var segmentsDownloadedDuration: TimeInterval { @objc get }

  /**
    - Selector: serverAddress
  */
  @objc var serverAddress: String? { @objc get }

  /**
    - Selector: startupTime
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var startupTime: TimeInterval { @objc get }

  /**
    - Selector: switchBitrate
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var switchBitrate: Double { @objc get }

  /**
    - Selector: transferDuration
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var transferDuration: TimeInterval { @objc get }
}

extension AVPlayerItemAccessLogEvent: AVPlayerItemAccessLogEventExports {
}
