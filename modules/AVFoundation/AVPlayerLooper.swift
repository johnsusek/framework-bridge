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
    - Selector: AVPlayerLooper
    - Introduced: 10.12
  */

@objc(AVPlayerLooper) protocol AVPlayerLooperExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: playerLooperWithPlayer:templateItem:
  */
  @objc static func createWithPlayer_TemplateItem(_ player: AVQueuePlayer, _ templateItem: AVPlayerItem) -> Self

  /**
    - Selector: playerLooperWithPlayer:templateItem:timeRange:
  */
  @objc static func createWithPlayer_TemplateItem_TimeRange(_ player: AVQueuePlayer, _ templateItem: AVPlayerItem, _ timeRange: CMTimeRange) -> Self

  // Instance Methods

  /**
    - Selector: disableLooping
  */
  @objc func disableLooping()

  // Own Instance Properties

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: loopCount
  */
  @objc var loopCount: Int { @objc get }

  /**
    - Selector: loopingPlayerItems
  */
  @objc var loopingPlayerItems: [AVPlayerItem] { @objc get }

  /**
    - Selector: status
  */
  @objc var status: AVPlayerLooper.Status { @objc get }
}

extension AVPlayerLooper: AVPlayerLooperExports {

  /**
    - Selector: playerLooperWithPlayer:templateItem:
  */
  @objc public static func createWithPlayer_TemplateItem(_ player: AVQueuePlayer, _ templateItem: AVPlayerItem) -> Self {
    return self.init(player: player, templateItem: templateItem)
  }


  /**
    - Selector: playerLooperWithPlayer:templateItem:timeRange:
  */
  @objc public static func createWithPlayer_TemplateItem_TimeRange(_ player: AVQueuePlayer, _ templateItem: AVPlayerItem, _ timeRange: CMTimeRange) -> Self {
    return self.init(player: player, templateItem: templateItem, timeRange: timeRange)
  }

}
