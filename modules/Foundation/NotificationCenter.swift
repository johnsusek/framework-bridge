import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NotificationCenter
    - name: NSNotificationCenter
    - argLabels: 
  */

@objc(NotificationCenter) protocol NotificationCenterExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultCenter
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: NotificationCenter { @objc (defaultCenter) get }

  // Instance Methods

  /**
    - jsName: addObserver
    - name: addObserver:selector:name:object:
    - argLabels: selector, name, object
    - constructorTokens: 
  */
  @objc func addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)

  /**
    - jsName: addObserver
    - name: addObserverForName:object:queue:usingBlock:
    - argLabels: forName, object, queue, using
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: addObserver(forName:object:queue:using:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (addObserverForName:object:queue:usingBlock:) @available(OSX 10.6, *) func addObserver(forName: NSNotification.Name?, object: Any?, queue: OperationQueue?, using: JSValue) -> NSObjectProtocol

  /**
    - jsName: post
    - name: postNotification:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: post(_:)
  */
  @objc (postNotification:) func post(_: Notification)

  /**
    - jsName: post
    - name: postNotificationName:object:
    - argLabels: name, object
    - constructorTokens: 
    - obsoleted: 3
    - renamed: post(name:object:)
  */
  @objc (postNotificationName:object:) func post(name: NSNotification.Name, object: Any?)

  /**
    - jsName: post
    - name: postNotificationName:object:userInfo:
    - argLabels: name, object, userInfo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: post(name:object:userInfo:)
  */
  @objc (postNotificationName:object:userInfo:) func post(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable: Any]?)

  /**
    - jsName: removeObserver
    - name: removeObserver:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeObserver(_: Any)

  /**
    - jsName: removeObserver
    - name: removeObserver:name:object:
    - argLabels: name, object
    - constructorTokens: 
  */
  @objc func removeObserver(_: Any, name: NSNotification.Name?, object: Any?)
}

extension NotificationCenter: NotificationCenterExports {
}
