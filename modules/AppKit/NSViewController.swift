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
    - Selector: NSViewController
    - Introduced: 10.5
  */

@objc(NSViewController) protocol NSViewControllerExports: JSExport, NSResponderExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addChildViewController:
    - Introduced: 10.10
  */
  @objc (addChildViewController:) @available(OSX 10.10, *) func addChild(_: NSViewController)

  /**
    - Selector: dismissController:
    - Introduced: 10.10
  */
  @objc (dismissController:) @available(OSX 10.10, *) func dismiss(_: Any?)

  /**
    - Selector: dismissViewController:
    - Introduced: 10.10
  */
  @objc (dismissViewController:) @available(OSX 10.10, *) func dismiss(_: NSViewController)

  /**
    - Selector: insertChildViewController:atIndex:
    - Introduced: 10.10
  */
  @objc (insertChildViewController:atIndex:) @available(OSX 10.10, *) func insertChild(_: NSViewController, at: Int)

  /**
    - Selector: loadView
  */
  @objc func loadView()

  /**
    - Selector: preferredContentSizeDidChangeForViewController:
    - Introduced: 10.10
  */
  @objc (preferredContentSizeDidChangeForViewController:) @available(OSX 10.10, *) func preferredContentSizeDidChange(`for`: NSViewController)

  /**
    - Selector: presentViewController:animator:
    - Introduced: 10.10
  */
  @objc (presentViewController:animator:) @available(OSX 10.10, *) func present(_: NSViewController, animator: NSViewControllerPresentationAnimator)

  /**
    - Selector: presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:
    - Introduced: 10.10
  */
  @objc (presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:) @available(OSX 10.10, *) func present(_: NSViewController, asPopoverRelativeTo: CGRect, of: NSView, preferredEdge: NSRectEdge, behavior: NSPopover.Behavior)

  /**
    - Selector: presentViewControllerAsModalWindow:
    - Introduced: 10.10
  */
  @objc (presentViewControllerAsModalWindow:) @available(OSX 10.10, *) func presentAsModalWindow(_: NSViewController)

  /**
    - Selector: presentViewControllerAsSheet:
    - Introduced: 10.10
  */
  @objc (presentViewControllerAsSheet:) @available(OSX 10.10, *) func presentAsSheet(_: NSViewController)

  /**
    - Selector: removeChildViewControllerAtIndex:
    - Introduced: 10.10
  */
  @objc (removeChildViewControllerAtIndex:) @available(OSX 10.10, *) func removeChild(at: Int)

  /**
    - Selector: removeFromParentViewController
    - Introduced: 10.10
  */
  @objc (removeFromParentViewController) @available(OSX 10.10, *) func removeFromParent()

  /**
    - Selector: transitionFromViewController:toViewController:options:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func transitionFromViewControllerWithToViewControllerWithOptionsWithCallback(_ from: NSViewController, _ to: NSViewController, _ options: NSViewController.TransitionOptions, _ completionHandler: JSValue)

  /**
    - Selector: updateViewConstraints
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func updateViewConstraints()

  /**
    - Selector: viewDidAppear
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidAppear()

  /**
    - Selector: viewDidDisappear
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidDisappear()

  /**
    - Selector: viewDidLayout
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidLayout()

  /**
    - Selector: viewDidLoad
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidLoad()

  /**
    - Selector: viewWillAppear
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewWillAppear()

  /**
    - Selector: viewWillDisappear
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewWillDisappear()

  /**
    - Selector: viewWillLayout
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewWillLayout()

  /**
    - Selector: viewWillTransitionToSize:
    - Introduced: 10.10
  */
  @objc (viewWillTransitionToSize:) @available(OSX 10.10, *) func viewWillTransition(to: CGSize)

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: childViewControllers
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var children: [NSViewController] { @objc (childViewControllers) get @objc (setChildViewControllers:) set }

  /**
    - Selector: extensionContext
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var extensionContext: NSExtensionContext? { @objc get }

  /**
    - Selector: nibBundle
  */
  @objc var nibBundle: Bundle? { @objc get }

  /**
    - Selector: nibName
  */
  @objc var nibName: NSNib.Name? { @objc get }

  /**
    - Selector: parentViewController
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var parent: NSViewController? { @objc (parentViewController) get }

  /**
    - Selector: preferredContentSize
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredContentSize: CGSize { @objc get @objc (setPreferredContentSize:) set }

  /**
    - Selector: preferredMaximumSize
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredMaximumSize: CGSize { @objc get }

  /**
    - Selector: preferredMinimumSize
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredMinimumSize: CGSize { @objc get }

  /**
    - Selector: preferredScreenOrigin
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredScreenOrigin: CGPoint { @objc get @objc (setPreferredScreenOrigin:) set }

  /**
    - Selector: presentedViewControllers
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var presentedViewControllers: [NSViewController]? { @objc get }

  /**
    - Selector: presentingViewController
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var presentingViewController: NSViewController? { @objc get }

  /**
    - Selector: representedObject
  */
  @objc var representedObject: Any? { @objc get @objc (setRepresentedObject:) set }

  /**
    - Selector: sourceItemView
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sourceItemView: NSView? { @objc get @objc (setSourceItemView:) set }

  /**
    - Selector: storyboard
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var storyboard: NSStoryboard? { @objc get }

  /**
    - Selector: title
  */
  @objc var title: String? { @objc get @objc (setTitle:) set }

  /**
    - Selector: view
  */
  @objc var view: NSView { @objc get @objc (setView:) set }

  /**
    - Selector: viewLoaded
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isViewLoaded: Bool { @objc get }
}

extension NSViewController: NSViewControllerExports {
}
