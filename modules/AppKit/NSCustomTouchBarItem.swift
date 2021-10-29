import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCustomTouchBarItem
    - name: NSCustomTouchBarItem
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSCustomTouchBarItem) protocol NSCustomTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: customizationLabel
    - name: customizationLabel
    - argLabels: 
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView { @objc get @objc (setView:) set }

  /**
    - jsName: viewController
    - name: viewController
    - argLabels: 
  */
  @objc var viewController: NSViewController? { @objc get @objc (setViewController:) set }
}

extension NSCustomTouchBarItem: NSCustomTouchBarItemExports {
}
