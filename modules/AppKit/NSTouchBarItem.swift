import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTouchBarItem
    - Introduced: 10.12.2
  */

@objc(NSTouchBarItem) protocol NSTouchBarItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String { @objc get }

  /**
    - Selector: identifier
  */
  @objc var identifier: NSTouchBarItem.Identifier { @objc get }

  /**
    - Selector: view
  */
  @objc var view: NSView? { @objc get }

  /**
    - Selector: viewController
  */
  @objc var viewController: NSViewController? { @objc get }

  /**
    - Selector: visibilityPriority
  */
  @objc var visibilityPriority: NSTouchBarItem.Priority { @objc get @objc (setVisibilityPriority:) set }

  /**
    - Selector: visible
  */
  @objc var isVisible: Bool { @objc get }
}

extension NSTouchBarItem: NSTouchBarItemExports {
}
