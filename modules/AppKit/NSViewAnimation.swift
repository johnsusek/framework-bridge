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
    - Selector: NSViewAnimation
  */

@objc(NSViewAnimation) protocol NSViewAnimationExports: JSExport, NSAnimationExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: viewAnimations
  */
  @objc var viewAnimations: [[NSViewAnimation.Key: Any]] { @objc get @objc (setViewAnimations:) set }
}

extension NSViewAnimation: NSViewAnimationExports {
}
