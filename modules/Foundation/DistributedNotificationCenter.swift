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
    - Selector: NSDistributedNotificationCenter
  */

@objc(DistributedNotificationCenter) protocol DistributedNotificationCenterExports: JSExport, NotificationCenterExports {
  // Static Methods

  /**
    - Selector: notificationCenterForType:
  */
  @objc (notificationCenterForType:) static func forType(_ p0: DistributedNotificationCenter.CenterType) -> DistributedNotificationCenter

  // Instance Methods

  /**
    - Selector: addObserver:selector:name:object:
  */
  @objc func addObserver(_ p0: Any, selector: Selector, name: NSNotification.Name?, object: String?)

  /**
    - Selector: addObserver:selector:name:object:suspensionBehavior:
  */
  @objc func addObserver(_ p0: Any, selector: Selector, name: NSNotification.Name?, object: String?, suspensionBehavior: DistributedNotificationCenter.SuspensionBehavior)

  /**
    - Selector: postNotificationName:object:
  */
  @objc (postNotificationName:object:) func post(name: NSNotification.Name, object: String?)

  /**
    - Selector: postNotificationName:object:userInfo:
  */
  @objc (postNotificationName:object:userInfo:) func post(name: NSNotification.Name, object: String?, userInfo: [AnyHashable: Any]?)

  /**
    - Selector: postNotificationName:object:userInfo:deliverImmediately:
  */
  @objc func postNotificationName(_ p0: NSNotification.Name, object: String?, userInfo: [AnyHashable: Any]?, deliverImmediately: Bool)

  /**
    - Selector: postNotificationName:object:userInfo:options:
  */
  @objc func postNotificationName(_ p0: NSNotification.Name, object: String?, userInfo: [AnyHashable: Any]?, options: DistributedNotificationCenter.Options)

  /**
    - Selector: removeObserver:name:object:
  */
  @objc func removeObserver(_ p0: Any, name: NSNotification.Name?, object: String?)

  // Own Instance Properties

  /**
    - Selector: suspended
  */
  @objc var suspended: Bool { @objc get @objc (setSuspended:) set }
}

extension DistributedNotificationCenter: DistributedNotificationCenterExports {
}
