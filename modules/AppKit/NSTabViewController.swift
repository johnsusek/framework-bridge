import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTabViewController
    - name: NSTabViewController
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSTabViewController) protocol NSTabViewControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addTabViewItem
    - name: addTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addTabViewItem(_: NSTabViewItem)

  /**
    - jsName: insertTabViewItem
    - name: insertTabViewItem:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertTabViewItem(_:at:)
  */
  @objc (insertTabViewItem:atIndex:) func insertTabViewItem(_: NSTabViewItem, at: Int)

  /**
    - jsName: removeTabViewItem
    - name: removeTabViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeTabViewItem(_: NSTabViewItem)

  /**
    - jsName: tabViewItem
    - name: tabViewItemForViewController:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tabViewItem(for:)
  */
  @objc (tabViewItemForViewController:) func tabViewItem(`for`: NSViewController) -> NSTabViewItem?

  // Own Instance Properties

  /**
    - jsName: canPropagateSelectedChildViewControllerTitle
    - name: canPropagateSelectedChildViewControllerTitle
    - argLabels: 
  */
  @objc var canPropagateSelectedChildViewControllerTitle: Bool { @objc get @objc (setCanPropagateSelectedChildViewControllerTitle:) set }

  /**
    - jsName: selectedTabViewItemIndex
    - name: selectedTabViewItemIndex
    - argLabels: 
  */
  @objc var selectedTabViewItemIndex: Int { @objc get @objc (setSelectedTabViewItemIndex:) set }

  /**
    - jsName: tabStyle
    - name: tabStyle
    - argLabels: 
  */
  @objc var tabStyle: NSTabViewController.TabStyle { @objc get @objc (setTabStyle:) set }

  /**
    - jsName: tabView
    - name: tabView
    - argLabels: 
  */
  @objc var tabView: NSTabView { @objc get @objc (setTabView:) set }

  /**
    - jsName: tabViewItems
    - name: tabViewItems
    - argLabels: 
  */
  @objc var tabViewItems: [NSTabViewItem] { @objc get @objc (setTabViewItems:) set }

  /**
    - jsName: transitionOptions
    - name: transitionOptions
    - argLabels: 
  */
  @objc var transitionOptions: NSViewController.TransitionOptions { @objc get @objc (setTransitionOptions:) set }
}

extension NSTabViewController: NSTabViewControllerExports {
}
