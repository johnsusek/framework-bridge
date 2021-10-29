import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSplitViewController
    - name: NSSplitViewController
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSSplitViewController) protocol NSSplitViewControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addSplitViewItem
    - name: addSplitViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addSplitViewItem(_: NSSplitViewItem)

  /**
    - jsName: insertSplitViewItem
    - name: insertSplitViewItem:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertSplitViewItem(_:at:)
  */
  @objc (insertSplitViewItem:atIndex:) func insertSplitViewItem(_: NSSplitViewItem, at: Int)

  /**
    - jsName: removeSplitViewItem
    - name: removeSplitViewItem:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeSplitViewItem(_: NSSplitViewItem)

  /**
    - jsName: splitViewItem
    - name: splitViewItemForViewController:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: splitViewItem(for:)
  */
  @objc (splitViewItemForViewController:) func splitViewItem(`for`: NSViewController) -> NSSplitViewItem?

  /**
    - jsName: toggleSidebar
    - name: toggleSidebar:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func toggleSidebar(_: Any?)

  // Own Instance Properties

  /**
    - jsName: minimumThicknessForInlineSidebars
    - name: minimumThicknessForInlineSidebars
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var minimumThicknessForInlineSidebars: CGFloat { @objc get @objc (setMinimumThicknessForInlineSidebars:) set }

  /**
    - jsName: splitView
    - name: splitView
    - argLabels: 
  */
  @objc var splitView: NSSplitView { @objc get @objc (setSplitView:) set }

  /**
    - jsName: splitViewItems
    - name: splitViewItems
    - argLabels: 
  */
  @objc var splitViewItems: [NSSplitViewItem] { @objc get @objc (setSplitViewItems:) set }
}

extension NSSplitViewController: NSSplitViewControllerExports {
}
