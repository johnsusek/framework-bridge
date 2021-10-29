import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSViewAnimation
    - name: NSViewAnimation
    - argLabels: 
  */

@objc(NSViewAnimation) protocol NSViewAnimationExports: JSExport, NSAnimationExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithViewAnimations
    - name: initWithViewAnimations:
    - argLabels: 
    - constructorTokens: viewAnimations
  */
  @objc static func createWithViewAnimations(_: [[NSViewAnimation.Key: Any]]) -> Self

  // Own Instance Properties

  /**
    - jsName: viewAnimations
    - name: viewAnimations
    - argLabels: 
  */
  @objc var viewAnimations: [[NSViewAnimation.Key: Any]] { @objc get @objc (setViewAnimations:) set }
}

extension NSViewAnimation: NSViewAnimationExports {
  @objc public static func createWithViewAnimations(_ viewAnimations: [[NSViewAnimation.Key: Any]]) -> Self {
    return self.init(viewAnimations: viewAnimations)
  }

}
