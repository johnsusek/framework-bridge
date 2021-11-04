import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSViewAnimation
  */

@objc(NSViewAnimation) protocol NSViewAnimationExports: JSExport, NSAnimationExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithViewAnimations:
  */
  @objc static func createWithViewAnimations(_: [[NSViewAnimation.Key: Any]]) -> Self

  // Own Instance Properties

  /**
    - Selector: viewAnimations
  */
  @objc var viewAnimations: [[NSViewAnimation.Key: Any]] { @objc get @objc (setViewAnimations:) set }
}

extension NSViewAnimation: NSViewAnimationExports {
  @objc public static func createWithViewAnimations(_ viewAnimations: [[NSViewAnimation.Key: Any]]) -> Self {
    return self.init(viewAnimations: viewAnimations)
  }

}
