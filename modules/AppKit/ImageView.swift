import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSImageView
    - name: NSImageView
    - argLabels: 
  */

@objc(NSImageView) protocol NSImageViewExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: imageViewWithImage:
    - argLabels: image
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(image:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(image: NSImage) -> Self

  // Own Instance Properties

  /**
    - jsName: allowsCutCopyPaste
    - name: allowsCutCopyPaste
    - argLabels: 
  */
  @objc var allowsCutCopyPaste: Bool { @objc get @objc (setAllowsCutCopyPaste:) set }

  /**
    - jsName: animates
    - name: animates
    - argLabels: 
  */
  @objc var animates: Bool { @objc get @objc (setAnimates:) set }

  /**
    - jsName: contentTintColor
    - name: contentTintColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var contentTintColor: NSColor? { @objc get @objc (setContentTintColor:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: imageAlignment
    - name: imageAlignment
    - argLabels: 
  */
  @objc var imageAlignment: NSImageAlignment { @objc get @objc (setImageAlignment:) set }

  /**
    - jsName: imageFrameStyle
    - name: imageFrameStyle
    - argLabels: 
  */
  @objc var imageFrameStyle: NSImageView.FrameStyle { @objc get @objc (setImageFrameStyle:) set }

  /**
    - jsName: imageScaling
    - name: imageScaling
    - argLabels: 
  */
  @objc var imageScaling: NSImageScaling { @objc get @objc (setImageScaling:) set }
}

@objc protocol ImageViewExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: imageViewWithImage:
    - argLabels: image
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(image:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(image: NSImage) -> Self
}

@objc(ImageView) public class ImageView: NSImageView, ImageViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSImageView: NSImageViewExports {
  @objc public static func create(image: NSImage) -> Self {
    return self.init(image: image)
  }

}
