import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: DistributedNotificationCenter
    - name: NSDistributedNotificationCenter
    - argLabels: 
  */

@objc(DistributedNotificationCenter) protocol DistributedNotificationCenterExports: JSExport, NotificationCenterExports {
  // Static Methods

  /**
    - jsName: forType
    - name: notificationCenterForType:
    - argLabels: _
    - constructorTokens: 
    - unavailable: true
    - renamed: forType(_:)
    - message: Not available in Swift
  */
  @objc (notificationCenterForType:) static func forType(_: DistributedNotificationCenter.CenterType) -> DistributedNotificationCenter

  // Instance Methods

  /**
    - jsName: addObserver
    - name: addObserver:selector:name:object:
    - argLabels: selector, name, object
    - constructorTokens: 
  */
  @objc func addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: String?)

  /**
    - jsName: addObserver
    - name: addObserver:selector:name:object:suspensionBehavior:
    - argLabels: selector, name, object, suspensionBehavior
    - constructorTokens: 
  */
  @objc func addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: String?, suspensionBehavior: DistributedNotificationCenter.SuspensionBehavior)

  /**
    - jsName: post
    - name: postNotificationName:object:
    - argLabels: name, object
    - constructorTokens: 
    - obsoleted: 3
    - renamed: post(name:object:)
  */
  @objc (postNotificationName:object:) func post(name: NSNotification.Name, object: String?)

  /**
    - jsName: post
    - name: postNotificationName:object:userInfo:
    - argLabels: name, object, userInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: post(name:object:userInfo:)
  */
  @objc (postNotificationName:object:userInfo:) func post(name: NSNotification.Name, object: String?, userInfo: [AnyHashable: Any]?)

  /**
    - jsName: postNotificationName
    - name: postNotificationName:object:userInfo:deliverImmediately:
    - argLabels: object, userInfo, deliverImmediately
    - constructorTokens: 
  */
  @objc func postNotificationName(_: NSNotification.Name, object: String?, userInfo: [AnyHashable: Any]?, deliverImmediately: Bool)

  /**
    - jsName: postNotificationName
    - name: postNotificationName:object:userInfo:options:
    - argLabels: object, userInfo, options
    - constructorTokens: 
  */
  @objc func postNotificationName(_: NSNotification.Name, object: String?, userInfo: [AnyHashable: Any]?, options: DistributedNotificationCenter.Options)

  /**
    - jsName: removeObserver
    - name: removeObserver:name:object:
    - argLabels: name, object
    - constructorTokens: 
  */
  @objc func removeObserver(_: Any, name: NSNotification.Name?, object: String?)

  // Own Instance Properties

  /**
    - jsName: suspended
    - name: suspended
    - argLabels: 
  */
  @objc var suspended: Bool { @objc get @objc (setSuspended:) set }
}

extension DistributedNotificationCenter: DistributedNotificationCenterExports {
}
