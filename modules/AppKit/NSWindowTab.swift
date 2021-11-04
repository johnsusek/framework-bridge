import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSWindowTab
    - Introduced: 10.13
  */

@objc(NSWindowTab) protocol NSWindowTabExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: accessoryView
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - Selector: attributedTitle
  */
  @objc var attributedTitle: NSAttributedString? { @objc get @objc (setAttributedTitle:) set }

  /**
    - Selector: title
  */
  @objc var title: String! { @objc get @objc (setTitle:) set }

  /**
    - Selector: toolTip
  */
  @objc var toolTip: String! { @objc get @objc (setToolTip:) set }
}

extension NSWindowTab: NSWindowTabExports {
}
