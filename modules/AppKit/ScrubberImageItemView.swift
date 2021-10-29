import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberImageItemView
    - name: NSScrubberImageItemView
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberImageItemView) protocol NSScrubberImageItemViewExports: JSExport, NSScrubberItemViewExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage { @objc get @objc (setImage:) set }

  /**
    - jsName: imageAlignment
    - name: imageAlignment
    - argLabels: 
  */
  @objc var imageAlignment: NSImageAlignment { @objc get @objc (setImageAlignment:) set }

  /**
    - jsName: imageView
    - name: imageView
    - argLabels: 
  */
  @objc var imageView: NSImageView { @objc get }
}

@objc protocol ScrubberImageItemViewExports: JSExport, NSScrubberItemViewExports {
  // Static Methods
}

@objc(ScrubberImageItemView) public class ScrubberImageItemView: NSScrubberImageItemView, ScrubberImageItemViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrubberImageItemView: NSScrubberImageItemViewExports {
}
