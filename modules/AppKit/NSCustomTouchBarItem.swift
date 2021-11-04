import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCustomTouchBarItem
    - Introduced: 10.12.2
  */

@objc(NSCustomTouchBarItem) protocol NSCustomTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - Selector: view
  */
  @objc var view: NSView { @objc get @objc (setView:) set }

  /**
    - Selector: viewController
  */
  @objc var viewController: NSViewController? { @objc get @objc (setViewController:) set }
}

extension NSCustomTouchBarItem: NSCustomTouchBarItemExports {
}
