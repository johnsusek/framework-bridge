import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSharingService
    - Introduced: 10.8
  */

@objc(NSSharingService) protocol NSSharingServiceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sharingServicesForItems:
  */
  @objc (sharingServicesForItems:) static func sharingServices(forItems: [Any]) -> [NSSharingService]

  // Instance Methods

  /**
    - Selector: canPerformWithItems:
  */
  @objc (canPerformWithItems:) func canPerform(withItems: [Any]?) -> Bool

  /**
    - Selector: initWithTitle:image:alternateImage:handler:
  */
  // jsvalue @objc static func createWithTitle(_: String, image: NSImage, alternateImage: NSImage?, handler: JSValue) -> Self

  /**
    - Selector: performWithItems:
  */
  @objc (performWithItems:) func perform(withItems: [Any])

  // Own Instance Properties

  /**
    - Selector: accountName
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var accountName: String? { @objc get }

  /**
    - Selector: alternateImage
  */
  @objc var alternateImage: NSImage? { @objc get }

  /**
    - Selector: attachmentFileURLs
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var attachmentFileURLs: [URL]? { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSharingServiceDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage { @objc get }

  /**
    - Selector: menuItemTitle
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var menuItemTitle: String { @objc get @objc (setMenuItemTitle:) set }

  /**
    - Selector: messageBody
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var messageBody: String? { @objc get }

  /**
    - Selector: permanentLink
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var permanentLink: URL? { @objc get }

  /**
    - Selector: recipients
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var recipients: [String]? { @objc get @objc (setRecipients:) set }

  /**
    - Selector: subject
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var subject: String? { @objc get @objc (setSubject:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get }
}

extension NSSharingService: NSSharingServiceExports {
  @objc public static func createWithTitle(_ title: String, image: NSImage, alternateImage: NSImage?, handler: JSValue) -> Self {
    return self.init(title: title, image: image, alternateImage: alternateImage, handler: { 
      handler.call(withArguments: [])!
    })
  }

}
