import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSImageCell
    - name: NSImageCell
    - argLabels: 
  */

@objc(NSImageCell) protocol NSImageCellExports: JSExport, NSCellExports {
  // Static Methods

  // Own Instance Properties

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

extension NSImageCell: NSImageCellExports {
}
