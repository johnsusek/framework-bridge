import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTitlebarAccessoryViewController
    - Introduced: 10.10
  */

@objc(NSTitlebarAccessoryViewController) protocol NSTitlebarAccessoryViewControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: fullScreenMinHeight
  */
  @objc var fullScreenMinHeight: CGFloat { @objc get @objc (setFullScreenMinHeight:) set }

  /**
    - Selector: hidden
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: layoutAttribute
  */
  @objc var layoutAttribute: NSLayoutConstraint.Attribute { @objc get @objc (setLayoutAttribute:) set }
}

extension NSTitlebarAccessoryViewController: NSTitlebarAccessoryViewControllerExports {
}
