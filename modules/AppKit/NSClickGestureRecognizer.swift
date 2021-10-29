import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSClickGestureRecognizer
    - name: NSClickGestureRecognizer
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSClickGestureRecognizer) protocol NSClickGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: buttonMask
    - name: buttonMask
    - argLabels: 
  */
  @objc var buttonMask: Int { @objc get @objc (setButtonMask:) set }

  /**
    - jsName: numberOfClicksRequired
    - name: numberOfClicksRequired
    - argLabels: 
  */
  @objc var numberOfClicksRequired: Int { @objc get @objc (setNumberOfClicksRequired:) set }

  /**
    - jsName: numberOfTouchesRequired
    - name: numberOfTouchesRequired
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var numberOfTouchesRequired: Int { @objc get @objc (setNumberOfTouchesRequired:) set }
}

extension NSClickGestureRecognizer: NSClickGestureRecognizerExports {
}
