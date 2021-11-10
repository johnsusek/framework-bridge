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
    - Selector: NSUserNotificationAction
    - Introduced: 10.10
    - Deprecated: 100000
    - Message: All NSUserNotifications API should be replaced with UserNotifications.frameworks API
  */

@objc(NSUserNotificationAction) protocol NSUserNotificationActionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: actionWithIdentifier:title:
  */
  @objc static func createWithActionWithIdentifierWithTitle(_ identifier: String?, _ title: String?) -> Self

  // Own Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: String? { @objc get }

  /**
    - Selector: title
  */
  @objc var title: String? { @objc get }
}

extension NSUserNotificationAction: NSUserNotificationActionExports {

  /**
    - Selector: actionWithIdentifier:title:
  */
  @objc public static func createWithActionWithIdentifierWithTitle(_ identifier: String?, _ title: String?) -> Self {
    return self.init(identifier: identifier, title: title)
  }

}
