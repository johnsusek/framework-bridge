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
    - Selector: NSSplitViewItem
    - Introduced: 10.10
  */

@objc(NSSplitViewItem) protocol NSSplitViewItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: contentListWithViewController:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func createWithContentListWithViewController(_ contentListWithViewController: NSViewController) -> Self

  /**
    - Selector: sidebarWithViewController:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func createWithSidebarWithViewController(_ sidebarWithViewController: NSViewController) -> Self

  /**
    - Selector: splitViewItemWithViewController:
  */
  @objc static func createWithViewController(_ viewController: NSViewController) -> Self

  // Own Instance Properties

  /**
    - Selector: automaticMaximumThickness
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var automaticMaximumThickness: CGFloat { @objc get @objc (setAutomaticMaximumThickness:) set }

  /**
    - Selector: behavior
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var behavior: NSSplitViewItem.Behavior { @objc get }

  /**
    - Selector: canCollapse
  */
  @objc var canCollapse: Bool { @objc get @objc (setCanCollapse:) set }

  /**
    - Selector: collapseBehavior
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var collapseBehavior: NSSplitViewItem.CollapseBehavior { @objc get @objc (setCollapseBehavior:) set }

  /**
    - Selector: collapsed
  */
  @objc var isCollapsed: Bool { @objc get @objc (setCollapsed:) set }

  /**
    - Selector: holdingPriority
  */
  @objc var holdingPriority: NSLayoutConstraint.Priority { @objc get @objc (setHoldingPriority:) set }

  /**
    - Selector: maximumThickness
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maximumThickness: CGFloat { @objc get @objc (setMaximumThickness:) set }

  /**
    - Selector: minimumThickness
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var minimumThickness: CGFloat { @objc get @objc (setMinimumThickness:) set }

  /**
    - Selector: preferredThicknessFraction
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var preferredThicknessFraction: CGFloat { @objc get @objc (setPreferredThicknessFraction:) set }

  /**
    - Selector: springLoaded
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isSpringLoaded: Bool { @objc get @objc (setSpringLoaded:) set }

  /**
    - Selector: viewController
  */
  @objc var viewController: NSViewController { @objc get @objc (setViewController:) set }
}

extension NSSplitViewItem: NSSplitViewItemExports {

  /**
    - Selector: contentListWithViewController:
    - Introduced: 10.11
  */
  @objc public static func createWithContentListWithViewController(_ contentListWithViewController: NSViewController) -> Self {
    return self.init(contentListWithViewController: contentListWithViewController)
  }


  /**
    - Selector: sidebarWithViewController:
    - Introduced: 10.11
  */
  @objc public static func createWithSidebarWithViewController(_ sidebarWithViewController: NSViewController) -> Self {
    return self.init(sidebarWithViewController: sidebarWithViewController)
  }


  /**
    - Selector: splitViewItemWithViewController:
  */
  @objc public static func createWithViewController(_ viewController: NSViewController) -> Self {
    return self.init(viewController: viewController)
  }

}
