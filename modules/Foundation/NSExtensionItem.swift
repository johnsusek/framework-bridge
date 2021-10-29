import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSExtensionItem
    - name: NSExtensionItem
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSExtensionItem) protocol NSExtensionItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: attachments
    - name: attachments
    - argLabels: 
  */
  @objc var attachments: [NSItemProvider]? { @objc get @objc (setAttachments:) set }

  /**
    - jsName: attributedContentText
    - name: attributedContentText
    - argLabels: 
  */
  @objc var attributedContentText: NSAttributedString? { @objc get @objc (setAttributedContentText:) set }

  /**
    - jsName: attributedTitle
    - name: attributedTitle
    - argLabels: 
  */
  @objc var attributedTitle: NSAttributedString? { @objc get @objc (setAttributedTitle:) set }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get @objc (setUserInfo:) set }
}

extension NSExtensionItem: NSExtensionItemExports {
}
