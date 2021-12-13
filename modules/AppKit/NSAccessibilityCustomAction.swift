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
    - Selector: NSAccessibilityCustomAction
    - Introduced: 10.13
  */

@objc(NSAccessibilityCustomAction) protocol NSAccessibilityCustomActionExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: handler
  */
// jsvalue   @objc var handler: JSValue? { @objc get @objc (setHandler:) set }

  /**
    - Selector: name
  */
  @objc var name: String { @objc get @objc (setName:) set }

  /**
    - Selector: selector
  */
  @objc var selector: Selector? { @objc get @objc (setSelector:) set }

  /**
    - Selector: target
  */
  @objc var target: NSObjectProtocol? { @objc get @objc (setTarget:) set }
}

extension NSAccessibilityCustomAction: NSAccessibilityCustomActionExports {
}
