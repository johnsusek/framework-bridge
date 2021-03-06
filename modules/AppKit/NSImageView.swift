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
    - Selector: NSImageView
  */

@objc(NSImageView) protocol NSImageViewExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: imageViewWithImage:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithImage(_ image: NSImage) -> Self

  // Own Instance Properties

  /**
    - Selector: allowsCutCopyPaste
  */
  @objc var allowsCutCopyPaste: Bool { @objc get @objc (setAllowsCutCopyPaste:) set }

  /**
    - Selector: animates
  */
  @objc var animates: Bool { @objc get @objc (setAnimates:) set }

  /**
    - Selector: contentTintColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var contentTintColor: NSColor? { @objc get @objc (setContentTintColor:) set }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: imageAlignment
  */
  @objc var imageAlignment: NSImageAlignment { @objc get @objc (setImageAlignment:) set }

  /**
    - Selector: imageFrameStyle
  */
  @objc var imageFrameStyle: NSImageView.FrameStyle { @objc get @objc (setImageFrameStyle:) set }

  /**
    - Selector: imageScaling
  */
  @objc var imageScaling: NSImageScaling { @objc get @objc (setImageScaling:) set }
}

extension NSImageView: NSImageViewExports {

  /**
    - Selector: imageViewWithImage:
    - Introduced: 10.12
  */
  @objc public static func createWithImage(_ image: NSImage) -> Self {
    return self.init(image: image)
  }

}
