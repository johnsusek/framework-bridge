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
    - Selector: NSUserNotificationCenter
    - Introduced: 10.8
    - Deprecated: 100000
    - Message: All NSUserNotifications API should be replaced with UserNotifications.frameworks API
  */

@objc(NSUserNotificationCenter) protocol NSUserNotificationCenterExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultUserNotificationCenter
  */
  @objc static var `default`: NSUserNotificationCenter { @objc (defaultUserNotificationCenter) get }

  // Instance Methods

  /**
    - Selector: deliverNotification:
  */
  @objc (deliverNotification:) func deliver(_: NSUserNotification)

  /**
    - Selector: removeAllDeliveredNotifications
  */
  @objc func removeAllDeliveredNotifications()

  /**
    - Selector: removeDeliveredNotification:
  */
  @objc func removeDeliveredNotification(_: NSUserNotification)

  /**
    - Selector: removeScheduledNotification:
  */
  @objc func removeScheduledNotification(_: NSUserNotification)

  /**
    - Selector: scheduleNotification:
  */
  @objc func scheduleNotification(_: NSUserNotification)

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSUserNotificationCenterDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: deliveredNotifications
  */
  @objc var deliveredNotifications: [NSUserNotification] { @objc get }

  /**
    - Selector: scheduledNotifications
  */
  @objc var scheduledNotifications: [NSUserNotification] { @objc get @objc (setScheduledNotifications:) set }
}

extension NSUserNotificationCenter: NSUserNotificationCenterExports {
}
