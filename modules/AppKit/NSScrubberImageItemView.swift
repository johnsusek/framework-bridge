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
    - Selector: NSScrubberImageItemView
    - Introduced: 10.12.2
  */

@objc(NSScrubberImageItemView) protocol NSScrubberImageItemViewExports: JSExport, NSScrubberItemViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: image
  */
  @objc var image: NSImage { @objc get @objc (setImage:) set }

  /**
    - Selector: imageAlignment
  */
  @objc var imageAlignment: NSImageAlignment { @objc get @objc (setImageAlignment:) set }

  /**
    - Selector: imageView
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
