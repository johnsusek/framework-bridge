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
    - Selector: NSSplitViewController
    - Introduced: 10.10
  */

@objc(NSSplitViewController) protocol NSSplitViewControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addSplitViewItem:
  */
  @objc func addSplitViewItem(_ p0: NSSplitViewItem)

  /**
    - Selector: insertSplitViewItem:atIndex:
  */
  @objc (insertSplitViewItem:atIndex:) func insertSplitViewItem(_ p0: NSSplitViewItem, at: Int)

  /**
    - Selector: removeSplitViewItem:
  */
  @objc func removeSplitViewItem(_ p0: NSSplitViewItem)

  /**
    - Selector: splitViewItemForViewController:
  */
  @objc (splitViewItemForViewController:) func splitViewItem(`for`: NSViewController) -> NSSplitViewItem?

  /**
    - Selector: toggleSidebar:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func toggleSidebar(_ p0: Any?)

  // Own Instance Properties

  /**
    - Selector: minimumThicknessForInlineSidebars
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var minimumThicknessForInlineSidebars: CGFloat { @objc get @objc (setMinimumThicknessForInlineSidebars:) set }

  /**
    - Selector: splitView
  */
  @objc var splitView: NSSplitView { @objc get @objc (setSplitView:) set }

  /**
    - Selector: splitViewItems
  */
  @objc var splitViewItems: [NSSplitViewItem] { @objc get @objc (setSplitViewItems:) set }
}

extension NSSplitViewController: NSSplitViewControllerExports {
}
