import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSClickGestureRecognizer
    - Introduced: 10.10
  */

@objc(NSClickGestureRecognizer) protocol NSClickGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: buttonMask
  */
  @objc var buttonMask: Int { @objc get @objc (setButtonMask:) set }

  /**
    - Selector: numberOfClicksRequired
  */
  @objc var numberOfClicksRequired: Int { @objc get @objc (setNumberOfClicksRequired:) set }

  /**
    - Selector: numberOfTouchesRequired
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var numberOfTouchesRequired: Int { @objc get @objc (setNumberOfTouchesRequired:) set }
}

extension NSClickGestureRecognizer: NSClickGestureRecognizerExports {
}
