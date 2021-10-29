import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSWindowTab
    - name: NSWindowTab
    - argLabels: 
    - Introduced: 10.13
  */

@objc(NSWindowTab) protocol NSWindowTabExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: accessoryView
    - name: accessoryView
    - argLabels: 
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - jsName: attributedTitle
    - name: attributedTitle
    - argLabels: 
  */
  @objc var attributedTitle: NSAttributedString? { @objc get @objc (setAttributedTitle:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String! { @objc get @objc (setTitle:) set }

  /**
    - jsName: toolTip
    - name: toolTip
    - argLabels: 
  */
  @objc var toolTip: String! { @objc get @objc (setToolTip:) set }
}

extension NSWindowTab: NSWindowTabExports {
}
