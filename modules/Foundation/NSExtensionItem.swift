import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSExtensionItem
    - Introduced: 10.10
  */

@objc(NSExtensionItem) protocol NSExtensionItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: attachments
  */
  @objc var attachments: [NSItemProvider]? { @objc get @objc (setAttachments:) set }

  /**
    - Selector: attributedContentText
  */
  @objc var attributedContentText: NSAttributedString? { @objc get @objc (setAttributedContentText:) set }

  /**
    - Selector: attributedTitle
  */
  @objc var attributedTitle: NSAttributedString? { @objc get @objc (setAttributedTitle:) set }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get @objc (setUserInfo:) set }
}

extension NSExtensionItem: NSExtensionItemExports {
}
