import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSNotificationQueue
  */

@objc(NotificationQueue) protocol NotificationQueueExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultQueue
  */
  @objc static var `default`: NotificationQueue { @objc (defaultQueue) get }

  // Instance Methods

  /**
    - Selector: dequeueNotificationsMatching:coalesceMask:
  */
  @objc (dequeueNotificationsMatching:coalesceMask:) func dequeueNotifications(matching: Notification, coalesceMask: Int)

  /**
    - Selector: enqueueNotification:postingStyle:
  */
  @objc (enqueueNotification:postingStyle:) func enqueue(_: Notification, postingStyle: NotificationQueue.PostingStyle)

  /**
    - Selector: enqueueNotification:postingStyle:coalesceMask:forModes:
  */
  @objc (enqueueNotification:postingStyle:coalesceMask:forModes:) func enqueue(_: Notification, postingStyle: NotificationQueue.PostingStyle, coalesceMask: NotificationQueue.NotificationCoalescing, forModes: [RunLoop.Mode]?)

  /**
    - Selector: initWithNotificationCenter:
  */
  @objc static func createWithNotificationCenter(_: NotificationCenter) -> Self
}

extension NotificationQueue: NotificationQueueExports {
  @objc public static func createWithNotificationCenter(_ notificationCenter: NotificationCenter) -> Self {
    return self.init(notificationCenter: notificationCenter)
  }

}
