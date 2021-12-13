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
    - Selector: AVQueuePlayer
    - Introduced: 10.7
  */

@objc(AVQueuePlayer) protocol AVQueuePlayerExports: JSExport, AVPlayerExports {
  // Static Methods

  /**
    - Selector: queuePlayerWithItems:
  */
  @objc static func createWithItems(_ items: [AVPlayerItem]) -> Self

  // Instance Methods

  /**
    - Selector: advanceToNextItem
  */
  @objc func advanceToNextItem()

  /**
    - Selector: canInsertItem:afterItem:
  */
  @objc (canInsertItem:afterItem:) func canInsert(_ p0: AVPlayerItem, after: AVPlayerItem?) -> Bool

  /**
    - Selector: insertItem:afterItem:
  */
  @objc (insertItem:afterItem:) func insert(_ p0: AVPlayerItem, after: AVPlayerItem?)

  /**
    - Selector: items
  */
  @objc func items() -> [AVPlayerItem]

  /**
    - Selector: removeAllItems
  */
  @objc func removeAllItems()

  /**
    - Selector: removeItem:
  */
  @objc (removeItem:) func remove(_ p0: AVPlayerItem)
}

extension AVQueuePlayer: AVQueuePlayerExports {

  /**
    - Selector: queuePlayerWithItems:
  */
  @objc public static func createWithItems(_ items: [AVPlayerItem]) -> Self {
    return self.init(items: items)
  }

}
