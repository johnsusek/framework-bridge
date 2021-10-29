import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserNotificationCenter
    - name: NSUserNotificationCenter
    - argLabels: 
    - Introduced: 10.8
    - Deprecated: 100000
    - Message: All NSUserNotifications API should be replaced with UserNotifications.frameworks API
  */

@objc(NSUserNotificationCenter) protocol NSUserNotificationCenterExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultUserNotificationCenter
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: NSUserNotificationCenter { @objc (defaultUserNotificationCenter) get }

  // Instance Methods

  /**
    - jsName: deliver
    - name: deliverNotification:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: deliver(_:)
  */
  @objc (deliverNotification:) func deliver(_: NSUserNotification)

  /**
    - jsName: removeAllDeliveredNotifications
    - name: removeAllDeliveredNotifications
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeAllDeliveredNotifications()

  /**
    - jsName: removeDeliveredNotification
    - name: removeDeliveredNotification:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeDeliveredNotification(_: NSUserNotification)

  /**
    - jsName: removeScheduledNotification
    - name: removeScheduledNotification:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeScheduledNotification(_: NSUserNotification)

  /**
    - jsName: scheduleNotification
    - name: scheduleNotification:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func scheduleNotification(_: NSUserNotification)

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSUserNotificationCenterDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: deliveredNotifications
    - name: deliveredNotifications
    - argLabels: 
  */
  @objc var deliveredNotifications: [NSUserNotification] { @objc get }

  /**
    - jsName: scheduledNotifications
    - name: scheduledNotifications
    - argLabels: 
  */
  @objc var scheduledNotifications: [NSUserNotification] { @objc get @objc (setScheduledNotifications:) set }
}

extension NSUserNotificationCenter: NSUserNotificationCenterExports {
}
