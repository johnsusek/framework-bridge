import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPanGestureRecognizer
    - name: NSPanGestureRecognizer
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSPanGestureRecognizer) protocol NSPanGestureRecognizerExports: JSExport, NSGestureRecognizerExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: setTranslation
    - name: setTranslation:inView:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setTranslation(_:in:)
  */
  @objc (setTranslation:inView:) func setTranslation(_: CGPoint, in: NSView?)

  /**
    - jsName: translation
    - name: translationInView:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: translation(in:)
  */
  @objc (translationInView:) func translation(in: NSView?) -> CGPoint

  /**
    - jsName: velocity
    - name: velocityInView:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: velocity(in:)
  */
  @objc (velocityInView:) func velocity(in: NSView?) -> CGPoint

  // Own Instance Properties

  /**
    - jsName: buttonMask
    - name: buttonMask
    - argLabels: 
  */
  @objc var buttonMask: Int { @objc get @objc (setButtonMask:) set }

  /**
    - jsName: numberOfTouchesRequired
    - name: numberOfTouchesRequired
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var numberOfTouchesRequired: Int { @objc get @objc (setNumberOfTouchesRequired:) set }
}

extension NSPanGestureRecognizer: NSPanGestureRecognizerExports {
}
