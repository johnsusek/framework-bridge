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
    - Selector: NSTabViewItem
  */

@objc(NSTabViewItem) protocol NSTabViewItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: tabViewItemWithViewController:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static func createWithViewController(_ viewController: NSViewController) -> Self

  // Instance Methods

  /**
    - Selector: drawLabel:inRect:
  */
  @objc (drawLabel:inRect:) func drawLabel(_ p0: Bool, in: CGRect)

  /**
    - Selector: sizeOfLabel:
  */
  @objc (sizeOfLabel:) func sizeOfLabel(_ p0: Bool) -> CGSize

  // Own Instance Properties

  /**
    - Selector: color
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }

  /**
    - Selector: identifier
  */
  @objc var identifier: Any? { @objc get @objc (setIdentifier:) set }

  /**
    - Selector: image
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: initialFirstResponder
  */
  @objc var initialFirstResponder: NSView? { @objc get @objc (setInitialFirstResponder:) set }

  /**
    - Selector: label
  */
  @objc var label: String { @objc get @objc (setLabel:) set }

  /**
    - Selector: tabState
  */
  @objc var tabState: NSTabViewItem.State { @objc get }

  /**
    - Selector: tabView
  */
  @objc var tabView: NSTabView? { @objc get }

  /**
    - Selector: toolTip
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - Selector: view
  */
  @objc var view: NSView? { @objc get @objc (setView:) set }

  /**
    - Selector: viewController
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var viewController: NSViewController? { @objc get @objc (setViewController:) set }
}

extension NSTabViewItem: NSTabViewItemExports {

  /**
    - Selector: tabViewItemWithViewController:
    - Introduced: 10.10
  */
  @objc public static func createWithViewController(_ viewController: NSViewController) -> Self {
    return self.init(viewController: viewController)
  }

}
