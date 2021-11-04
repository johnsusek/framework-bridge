import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSRotationGestureRecognizer
    - Introduced: 10.10
  */

@objc(NSRotationGestureRecognizer) protocol NSRotationGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: rotation
  */
  @objc var rotation: CGFloat { @objc get @objc (setRotation:) set }

  /**
    - Selector: rotationInDegrees
  */
  @objc var rotationInDegrees: CGFloat { @objc get @objc (setRotationInDegrees:) set }
}

extension NSRotationGestureRecognizer: NSRotationGestureRecognizerExports {
}
