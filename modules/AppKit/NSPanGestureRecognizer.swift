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
    - Selector: NSPanGestureRecognizer
    - Introduced: 10.10
  */

@objc(NSPanGestureRecognizer) protocol NSPanGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setTranslation:inView:
  */
  @objc (setTranslation:inView:) func setTranslation(_ p0: CGPoint, in: NSView?)

  /**
    - Selector: translationInView:
  */
  @objc (translationInView:) func translation(in: NSView?) -> CGPoint

  /**
    - Selector: velocityInView:
  */
  @objc (velocityInView:) func velocity(in: NSView?) -> CGPoint

  // Own Instance Properties

  /**
    - Selector: buttonMask
  */
  @objc var buttonMask: Int { @objc get @objc (setButtonMask:) set }

  /**
    - Selector: numberOfTouchesRequired
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var numberOfTouchesRequired: Int { @objc get @objc (setNumberOfTouchesRequired:) set }
}

extension NSPanGestureRecognizer: NSPanGestureRecognizerExports {
}
