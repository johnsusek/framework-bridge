import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSplitViewItem
    - name: NSSplitViewItem
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSSplitViewItem) protocol NSSplitViewItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: contentListWithViewController:
    - argLabels: contentListWithViewController
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: init(contentListWithViewController:)
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(contentListWithViewController: NSViewController) -> Self

  /**
    - jsName: create
    - name: sidebarWithViewController:
    - argLabels: sidebarWithViewController
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: init(sidebarWithViewController:)
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(sidebarWithViewController: NSViewController) -> Self

  /**
    - jsName: create
    - name: splitViewItemWithViewController:
    - argLabels: viewController
    - constructorTokens: 
    - unavailable: true
    - renamed: init(viewController:)
    - message: Not available in Swift
  */
  @objc static func create(viewController: NSViewController) -> Self

  // Own Instance Properties

  /**
    - jsName: automaticMaximumThickness
    - name: automaticMaximumThickness
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var automaticMaximumThickness: CGFloat { @objc get @objc (setAutomaticMaximumThickness:) set }

  /**
    - jsName: behavior
    - name: behavior
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var behavior: NSSplitViewItem.Behavior { @objc get }

  /**
    - jsName: canCollapse
    - name: canCollapse
    - argLabels: 
  */
  @objc var canCollapse: Bool { @objc get @objc (setCanCollapse:) set }

  /**
    - jsName: collapseBehavior
    - name: collapseBehavior
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var collapseBehavior: NSSplitViewItem.CollapseBehavior { @objc get @objc (setCollapseBehavior:) set }

  /**
    - jsName: isCollapsed
    - name: collapsed
    - argLabels: 
    - obsoleted: 3
    - renamed: isCollapsed
  */
  @objc var isCollapsed: Bool { @objc get @objc (setCollapsed:) set }

  /**
    - jsName: holdingPriority
    - name: holdingPriority
    - argLabels: 
  */
  @objc var holdingPriority: NSLayoutConstraint.Priority { @objc get @objc (setHoldingPriority:) set }

  /**
    - jsName: maximumThickness
    - name: maximumThickness
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maximumThickness: CGFloat { @objc get @objc (setMaximumThickness:) set }

  /**
    - jsName: minimumThickness
    - name: minimumThickness
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var minimumThickness: CGFloat { @objc get @objc (setMinimumThickness:) set }

  /**
    - jsName: preferredThicknessFraction
    - name: preferredThicknessFraction
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var preferredThicknessFraction: CGFloat { @objc get @objc (setPreferredThicknessFraction:) set }

  /**
    - jsName: isSpringLoaded
    - name: springLoaded
    - argLabels: 
    - available: 10.11
    - obsoleted: 3
    - renamed: isSpringLoaded
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isSpringLoaded: Bool { @objc get @objc (setSpringLoaded:) set }

  /**
    - jsName: viewController
    - name: viewController
    - argLabels: 
  */
  @objc var viewController: NSViewController { @objc get @objc (setViewController:) set }
}

extension NSSplitViewItem: NSSplitViewItemExports {
  @objc public static func create(contentListWithViewController: NSViewController) -> Self {
    return self.init(contentListWithViewController: contentListWithViewController)
  }

  @objc public static func create(sidebarWithViewController: NSViewController) -> Self {
    return self.init(sidebarWithViewController: sidebarWithViewController)
  }

  @objc public static func create(viewController: NSViewController) -> Self {
    return self.init(viewController: viewController)
  }

}
