import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSRotationGestureRecognizer
    - name: NSRotationGestureRecognizer
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSRotationGestureRecognizer) protocol NSRotationGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: rotation
    - name: rotation
    - argLabels: 
  */
  @objc var rotation: CGFloat { @objc get @objc (setRotation:) set }

  /**
    - jsName: rotationInDegrees
    - name: rotationInDegrees
    - argLabels: 
  */
  @objc var rotationInDegrees: CGFloat { @objc get @objc (setRotationInDegrees:) set }
}

extension NSRotationGestureRecognizer: NSRotationGestureRecognizerExports {
}
