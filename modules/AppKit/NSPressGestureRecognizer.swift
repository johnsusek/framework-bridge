import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPressGestureRecognizer
    - Introduced: 10.10
  */

@objc(NSPressGestureRecognizer) protocol NSPressGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: allowableMovement
  */
  @objc var allowableMovement: CGFloat { @objc get @objc (setAllowableMovement:) set }

  /**
    - Selector: buttonMask
  */
  @objc var buttonMask: Int { @objc get @objc (setButtonMask:) set }

  /**
    - Selector: minimumPressDuration
  */
  @objc var minimumPressDuration: TimeInterval { @objc get @objc (setMinimumPressDuration:) set }

  /**
    - Selector: numberOfTouchesRequired
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var numberOfTouchesRequired: Int { @objc get @objc (setNumberOfTouchesRequired:) set }
}

extension NSPressGestureRecognizer: NSPressGestureRecognizerExports {
}
