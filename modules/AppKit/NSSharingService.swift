import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSharingService
    - name: NSSharingService
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSSharingService) protocol NSSharingServiceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: sharingServices
    - name: sharingServicesForItems:
    - argLabels: forItems
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sharingServices(forItems:)
  */
  @objc (sharingServicesForItems:) static func sharingServices(forItems: [Any]) -> [NSSharingService]

  // Instance Methods

  /**
    - jsName: canPerform
    - name: canPerformWithItems:
    - argLabels: withItems
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canPerform(withItems:)
  */
  @objc (canPerformWithItems:) func canPerform(withItems: [Any]?) -> Bool

  /**
    - jsName: createWithTitle
    - name: initWithTitle:image:alternateImage:handler:
    - argLabels: image, alternateImage, handler
    - constructorTokens: title, image, alternateImage, handler
  */
  @objc static func createWithTitle(_: String, image: NSImage, alternateImage: NSImage?, handler: JSValue) -> Self

  /**
    - jsName: perform
    - name: performWithItems:
    - argLabels: withItems
    - constructorTokens: 
    - obsoleted: 3
    - renamed: perform(withItems:)
  */
  @objc (performWithItems:) func perform(withItems: [Any])

  // Own Instance Properties

  /**
    - jsName: accountName
    - name: accountName
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var accountName: String? { @objc get }

  /**
    - jsName: alternateImage
    - name: alternateImage
    - argLabels: 
  */
  @objc var alternateImage: NSImage? { @objc get }

  /**
    - jsName: attachmentFileURLs
    - name: attachmentFileURLs
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var attachmentFileURLs: [URL]? { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSharingServiceDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage { @objc get }

  /**
    - jsName: menuItemTitle
    - name: menuItemTitle
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var menuItemTitle: String { @objc get @objc (setMenuItemTitle:) set }

  /**
    - jsName: messageBody
    - name: messageBody
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var messageBody: String? { @objc get }

  /**
    - jsName: permanentLink
    - name: permanentLink
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var permanentLink: URL? { @objc get }

  /**
    - jsName: recipients
    - name: recipients
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var recipients: [String]? { @objc get @objc (setRecipients:) set }

  /**
    - jsName: subject
    - name: subject
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var subject: String? { @objc get @objc (setSubject:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
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
