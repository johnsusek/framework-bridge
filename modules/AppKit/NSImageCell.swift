import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSImageCell
  */

@objc(NSImageCell) protocol NSImageCellExports: JSExport, NSCellExports {
  // Static Methods

  // Own Instance Properties

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

extension NSImageCell: NSImageCellExports {
}
