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
    - Selector: NSTabViewController
    - Introduced: 10.10
  */

@objc(NSTabViewController) protocol NSTabViewControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addTabViewItem:
  */
  @objc func addTabViewItem(_ p0: NSTabViewItem)

  /**
    - Selector: insertTabViewItem:atIndex:
  */
  @objc (insertTabViewItem:atIndex:) func insertTabViewItem(_ p0: NSTabViewItem, at: Int)

  /**
    - Selector: removeTabViewItem:
  */
  @objc func removeTabViewItem(_ p0: NSTabViewItem)

  /**
    - Selector: tabViewItemForViewController:
  */
  @objc (tabViewItemForViewController:) func tabViewItem(`for`: NSViewController) -> NSTabViewItem?

  // Own Instance Properties

  /**
    - Selector: canPropagateSelectedChildViewControllerTitle
  */
  @objc var canPropagateSelectedChildViewControllerTitle: Bool { @objc get @objc (setCanPropagateSelectedChildViewControllerTitle:) set }

  /**
    - Selector: selectedTabViewItemIndex
  */
  @objc var selectedTabViewItemIndex: Int { @objc get @objc (setSelectedTabViewItemIndex:) set }

  /**
    - Selector: tabStyle
  */
  @objc var tabStyle: NSTabViewController.TabStyle { @objc get @objc (setTabStyle:) set }

  /**
    - Selector: tabView
  */
  @objc var tabView: NSTabView { @objc get @objc (setTabView:) set }

  /**
    - Selector: tabViewItems
  */
  @objc var tabViewItems: [NSTabViewItem] { @objc get @objc (setTabViewItems:) set }

  /**
    - Selector: transitionOptions
  */
  @objc var transitionOptions: NSViewController.TransitionOptions { @objc get @objc (setTransitionOptions:) set }
}

extension NSTabViewController: NSTabViewControllerExports {
}
