import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUserNotification
    - Introduced: 10.8
    - Deprecated: 100000
    - Message: All NSUserNotifications API should be replaced with UserNotifications.frameworks API
  */

@objc(NSUserNotification) protocol NSUserNotificationExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: actionButtonTitle
  */
  @objc var actionButtonTitle: String { @objc get @objc (setActionButtonTitle:) set }

  /**
    - Selector: activationType
  */
  @objc var activationType: NSUserNotification.ActivationType { @objc get }

  /**
    - Selector: actualDeliveryDate
  */
  @objc var actualDeliveryDate: Date? { @objc get }

  /**
    - Selector: additionalActions
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var additionalActions: [NSUserNotificationAction]? { @objc get @objc (setAdditionalActions:) set }

  /**
    - Selector: additionalActivationAction
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var additionalActivationAction: NSUserNotificationAction? { @objc get }

  /**
    - Selector: contentImage
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var contentImage: NSImage? { @objc get @objc (setContentImage:) set }

  /**
    - Selector: deliveryDate
  */
  @objc var deliveryDate: Date? { @objc get @objc (setDeliveryDate:) set }

  /**
    - Selector: deliveryRepeatInterval
  */
  @objc var deliveryRepeatInterval: DateComponents? { @objc get @objc (setDeliveryRepeatInterval:) set }

  /**
    - Selector: deliveryTimeZone
  */
  @objc var deliveryTimeZone: TimeZone? { @objc get @objc (setDeliveryTimeZone:) set }

  /**
    - Selector: hasActionButton
  */
  @objc var hasActionButton: Bool { @objc get @objc (setHasActionButton:) set }

  /**
    - Selector: hasReplyButton
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var hasReplyButton: Bool { @objc get @objc (setHasReplyButton:) set }

  /**
    - Selector: identifier
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var identifier: String? { @objc get @objc (setIdentifier:) set }

  /**
    - Selector: informativeText
  */
  @objc var informativeText: String? { @objc get @objc (setInformativeText:) set }

  /**
    - Selector: otherButtonTitle
  */
  @objc var otherButtonTitle: String { @objc get @objc (setOtherButtonTitle:) set }

  /**
    - Selector: presented
  */
  @objc var isPresented: Bool { @objc get }

  /**
    - Selector: remote
  */
  @objc var isRemote: Bool { @objc get }

  /**
    - Selector: response
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var response: NSAttributedString? { @objc get }

  /**
    - Selector: responsePlaceholder
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var responsePlaceholder: String? { @objc get @objc (setResponsePlaceholder:) set }

  /**
    - Selector: soundName
  */
  @objc var soundName: String? { @objc get @objc (setSoundName:) set }

  /**
    - Selector: subtitle
  */
  @objc var subtitle: String? { @objc get @objc (setSubtitle:) set }

  /**
    - Selector: title
  */
  @objc var title: String? { @objc get @objc (setTitle:) set }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [String: Any]? { @objc get @objc (setUserInfo:) set }
}

extension NSUserNotification: NSUserNotificationExports {
}
