import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPathControlItem
    - Introduced: 10.10
  */

@objc(NSPathControlItem) protocol NSPathControlItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get }

  /**
    - Selector: attributedTitle
  */
  @objc var attributedTitle: NSAttributedString { @objc get @objc (setAttributedTitle:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }
}

extension NSPathControlItem: NSPathControlItemExports {
}
