import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserNotification
    - name: NSUserNotification
    - argLabels: 
    - Introduced: 10.8
    - Deprecated: 100000
    - Message: All NSUserNotifications API should be replaced with UserNotifications.frameworks API
  */

@objc(NSUserNotification) protocol NSUserNotificationExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: actionButtonTitle
    - name: actionButtonTitle
    - argLabels: 
  */
  @objc var actionButtonTitle: String { @objc get @objc (setActionButtonTitle:) set }

  /**
    - jsName: activationType
    - name: activationType
    - argLabels: 
  */
  @objc var activationType: NSUserNotification.ActivationType { @objc get }

  /**
    - jsName: actualDeliveryDate
    - name: actualDeliveryDate
    - argLabels: 
  */
  @objc var actualDeliveryDate: Date? { @objc get }

  /**
    - jsName: additionalActions
    - name: additionalActions
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var additionalActions: [NSUserNotificationAction]? { @objc get @objc (setAdditionalActions:) set }

  /**
    - jsName: additionalActivationAction
    - name: additionalActivationAction
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var additionalActivationAction: NSUserNotificationAction? { @objc get }

  /**
    - jsName: contentImage
    - name: contentImage
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var contentImage: NSImage? { @objc get @objc (setContentImage:) set }

  /**
    - jsName: deliveryDate
    - name: deliveryDate
    - argLabels: 
  */
  @objc var deliveryDate: Date? { @objc get @objc (setDeliveryDate:) set }

  /**
    - jsName: deliveryRepeatInterval
    - name: deliveryRepeatInterval
    - argLabels: 
  */
  @objc var deliveryRepeatInterval: DateComponents? { @objc get @objc (setDeliveryRepeatInterval:) set }

  /**
    - jsName: deliveryTimeZone
    - name: deliveryTimeZone
    - argLabels: 
  */
  @objc var deliveryTimeZone: TimeZone? { @objc get @objc (setDeliveryTimeZone:) set }

  /**
    - jsName: hasActionButton
    - name: hasActionButton
    - argLabels: 
  */
  @objc var hasActionButton: Bool { @objc get @objc (setHasActionButton:) set }

  /**
    - jsName: hasReplyButton
    - name: hasReplyButton
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var hasReplyButton: Bool { @objc get @objc (setHasReplyButton:) set }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var identifier: String? { @objc get @objc (setIdentifier:) set }

  /**
    - jsName: informativeText
    - name: informativeText
    - argLabels: 
  */
  @objc var informativeText: String? { @objc get @objc (setInformativeText:) set }

  /**
    - jsName: otherButtonTitle
    - name: otherButtonTitle
    - argLabels: 
  */
  @objc var otherButtonTitle: String { @objc get @objc (setOtherButtonTitle:) set }

  /**
    - jsName: isPresented
    - name: presented
    - argLabels: 
    - obsoleted: 3
    - renamed: isPresented
  */
  @objc var isPresented: Bool { @objc get }

  /**
    - jsName: isRemote
    - name: remote
    - argLabels: 
    - obsoleted: 3
    - renamed: isRemote
  */
  @objc var isRemote: Bool { @objc get }

  /**
    - jsName: response
    - name: response
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var response: NSAttributedString? { @objc get }

  /**
    - jsName: responsePlaceholder
    - name: responsePlaceholder
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var responsePlaceholder: String? { @objc get @objc (setResponsePlaceholder:) set }

  /**
    - jsName: soundName
    - name: soundName
    - argLabels: 
  */
  @objc var soundName: String? { @objc get @objc (setSoundName:) set }

  /**
    - jsName: subtitle
    - name: subtitle
    - argLabels: 
  */
  @objc var subtitle: String? { @objc get @objc (setSubtitle:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String? { @objc get @objc (setTitle:) set }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: [String: Any]? { @objc get @objc (setUserInfo:) set }
}

extension NSUserNotification: NSUserNotificationExports {
}
