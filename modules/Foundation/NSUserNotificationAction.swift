import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserNotificationAction
    - name: NSUserNotificationAction
    - argLabels: 
    - Introduced: 10.10
    - Deprecated: 100000
    - Message: All NSUserNotifications API should be replaced with UserNotifications.frameworks API
  */

@objc(NSUserNotificationAction) protocol NSUserNotificationActionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: actionWithIdentifier:title:
    - argLabels: identifier, title
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:title:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: String?, title: String?) -> Self

  // Own Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: String? { @objc get }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String? { @objc get }
}

extension NSUserNotificationAction: NSUserNotificationActionExports {
  @objc public static func create(identifier: String?, title: String?) -> Self {
    return self.init(identifier: identifier, title: title)
  }

}
