import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSMagnificationGestureRecognizer
    - name: NSMagnificationGestureRecognizer
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSMagnificationGestureRecognizer) protocol NSMagnificationGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: magnification
    - name: magnification
    - argLabels: 
  */
  @objc var magnification: CGFloat { @objc get @objc (setMagnification:) set }
}

extension NSMagnificationGestureRecognizer: NSMagnificationGestureRecognizerExports {
}
