import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTitlebarAccessoryViewController
    - name: NSTitlebarAccessoryViewController
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSTitlebarAccessoryViewController) protocol NSTitlebarAccessoryViewControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: fullScreenMinHeight
    - name: fullScreenMinHeight
    - argLabels: 
  */
  @objc var fullScreenMinHeight: CGFloat { @objc get @objc (setFullScreenMinHeight:) set }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: isHidden
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: layoutAttribute
    - name: layoutAttribute
    - argLabels: 
  */
  @objc var layoutAttribute: NSLayoutConstraint.Attribute { @objc get @objc (setLayoutAttribute:) set }
}

extension NSTitlebarAccessoryViewController: NSTitlebarAccessoryViewControllerExports {
}
