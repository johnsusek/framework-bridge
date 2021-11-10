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
    - Selector: NSMagnificationGestureRecognizer
    - Introduced: 10.10
  */

@objc(NSMagnificationGestureRecognizer) protocol NSMagnificationGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: magnification
  */
  @objc var magnification: CGFloat { @objc get @objc (setMagnification:) set }
}

extension NSMagnificationGestureRecognizer: NSMagnificationGestureRecognizerExports {
}
