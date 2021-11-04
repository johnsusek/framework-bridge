import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSNotificationCenter
  */

@objc(NotificationCenter) protocol NotificationCenterExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultCenter
  */
  @objc static var `default`: NotificationCenter { @objc (defaultCenter) get }

  // Instance Methods

  /**
    - Selector: addObserver:selector:name:object:
  */
  @objc func addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)

  /**
    - Selector: addObserverForName:object:queue:usingBlock:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func addObserver(forName: NSNotification.Name?, object: Any?, queue: OperationQueue?, using: JSValue) -> NSObjectProtocol

  /**
    - Selector: postNotification:
  */
  @objc (postNotification:) func post(_: Notification)

  /**
    - Selector: postNotificationName:object:
  */
  @objc (postNotificationName:object:) func post(name: NSNotification.Name, object: Any?)

  /**
    - Selector: postNotificationName:object:userInfo:
  */
  @objc (postNotificationName:object:userInfo:) func post(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable: Any]?)

  /**
    - Selector: removeObserver:
  */
  @objc func removeObserver(_: Any)

  /**
    - Selector: removeObserver:name:object:
  */
  @objc func removeObserver(_: Any, name: NSNotification.Name?, object: Any?)
}

extension NotificationCenter: NotificationCenterExports {
}
