import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NotificationQueue
    - name: NSNotificationQueue
    - argLabels: 
  */

@objc(NotificationQueue) protocol NotificationQueueExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultQueue
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: NotificationQueue { @objc (defaultQueue) get }

  // Instance Methods

  /**
    - jsName: dequeueNotifications
    - name: dequeueNotificationsMatching:coalesceMask:
    - argLabels: matching, coalesceMask
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dequeueNotifications(matching:coalesceMask:)
  */
  @objc (dequeueNotificationsMatching:coalesceMask:) func dequeueNotifications(matching: Notification, coalesceMask: Int)

  /**
    - jsName: enqueue
    - name: enqueueNotification:postingStyle:
    - argLabels: _, postingStyle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: enqueue(_:postingStyle:)
  */
  @objc (enqueueNotification:postingStyle:) func enqueue(_: Notification, postingStyle: NotificationQueue.PostingStyle)

  /**
    - jsName: enqueue
    - name: enqueueNotification:postingStyle:coalesceMask:forModes:
    - argLabels: _, postingStyle, coalesceMask, forModes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: enqueue(_:postingStyle:coalesceMask:forModes:)
  */
  @objc (enqueueNotification:postingStyle:coalesceMask:forModes:) func enqueue(_: Notification, postingStyle: NotificationQueue.PostingStyle, coalesceMask: NotificationQueue.NotificationCoalescing, forModes: [RunLoop.Mode]?)

  /**
    - jsName: createWithNotificationCenter
    - name: initWithNotificationCenter:
    - argLabels: 
    - constructorTokens: notificationCenter
  */
  @objc static func createWithNotificationCenter(_: NotificationCenter) -> Self
}

extension NotificationQueue: NotificationQueueExports {
  @objc public static func createWithNotificationCenter(_ notificationCenter: NotificationCenter) -> Self {
    return self.init(notificationCenter: notificationCenter)
  }

}
