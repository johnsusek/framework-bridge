import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPressGestureRecognizer
    - name: NSPressGestureRecognizer
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSPressGestureRecognizer) protocol NSPressGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: allowableMovement
    - name: allowableMovement
    - argLabels: 
  */
  @objc var allowableMovement: CGFloat { @objc get @objc (setAllowableMovement:) set }

  /**
    - jsName: buttonMask
    - name: buttonMask
    - argLabels: 
  */
  @objc var buttonMask: Int { @objc get @objc (setButtonMask:) set }

  /**
    - jsName: minimumPressDuration
    - name: minimumPressDuration
    - argLabels: 
  */
  @objc var minimumPressDuration: TimeInterval { @objc get @objc (setMinimumPressDuration:) set }

  /**
    - jsName: numberOfTouchesRequired
    - name: numberOfTouchesRequired
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var numberOfTouchesRequired: Int { @objc get @objc (setNumberOfTouchesRequired:) set }
}

extension NSPressGestureRecognizer: NSPressGestureRecognizerExports {
}
