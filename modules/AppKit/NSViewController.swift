import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSViewController
    - name: NSViewController
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSViewController) protocol NSViewControllerExports: JSExport, NSResponderExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addChild
    - name: addChildViewController:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: addChild(_:)
    - Introduced: 10.10
  */
  @objc (addChildViewController:) @available(OSX 10.10, *) func addChild(_: NSViewController)

  /**
    - jsName: dismiss
    - name: dismissController:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: dismiss(_:)
    - Introduced: 10.10
  */
  @objc (dismissController:) @available(OSX 10.10, *) func dismiss(_: Any?)

  /**
    - jsName: dismiss
    - name: dismissViewController:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: dismiss(_:)
    - Introduced: 10.10
  */
  @objc (dismissViewController:) @available(OSX 10.10, *) func dismiss(_: NSViewController)

  /**
    - jsName: createWithNibName
    - name: initWithNibName:bundle:
    - argLabels: bundle
    - constructorTokens: nibName, bundle
  */
  @objc static func createWithNibName(_: NSNib.Name?, bundle: Bundle?) -> Self

  /**
    - jsName: insertChild
    - name: insertChildViewController:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: insertChild(_:at:)
    - Introduced: 10.10
  */
  @objc (insertChildViewController:atIndex:) @available(OSX 10.10, *) func insertChild(_: NSViewController, at: Int)

  /**
    - jsName: loadView
    - name: loadView
    - argLabels: 
    - constructorTokens: 
  */
  @objc func loadView()

  /**
    - jsName: preferredContentSizeDidChange
    - name: preferredContentSizeDidChangeForViewController:
    - argLabels: for
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: preferredContentSizeDidChange(for:)
    - Introduced: 10.10
  */
  @objc (preferredContentSizeDidChangeForViewController:) @available(OSX 10.10, *) func preferredContentSizeDidChange(`for`: NSViewController)

  /**
    - jsName: present
    - name: presentViewController:animator:
    - argLabels: _, animator
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: present(_:animator:)
    - Introduced: 10.10
  */
  @objc (presentViewController:animator:) @available(OSX 10.10, *) func present(_: NSViewController, animator: NSViewControllerPresentationAnimator)

  /**
    - jsName: present
    - name: presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:
    - argLabels: _, asPopoverRelativeTo, of, preferredEdge, behavior
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: present(_:asPopoverRelativeTo:of:preferredEdge:behavior:)
    - Introduced: 10.10
  */
  @objc (presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:) @available(OSX 10.10, *) func present(_: NSViewController, asPopoverRelativeTo: CGRect, of: NSView, preferredEdge: NSRectEdge, behavior: NSPopover.Behavior)

  /**
    - jsName: presentAsModalWindow
    - name: presentViewControllerAsModalWindow:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: presentAsModalWindow(_:)
    - Introduced: 10.10
  */
  @objc (presentViewControllerAsModalWindow:) @available(OSX 10.10, *) func presentAsModalWindow(_: NSViewController)

  /**
    - jsName: presentAsSheet
    - name: presentViewControllerAsSheet:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: presentAsSheet(_:)
    - Introduced: 10.10
  */
  @objc (presentViewControllerAsSheet:) @available(OSX 10.10, *) func presentAsSheet(_: NSViewController)

  /**
    - jsName: removeChild
    - name: removeChildViewControllerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: removeChild(at:)
    - Introduced: 10.10
  */
  @objc (removeChildViewControllerAtIndex:) @available(OSX 10.10, *) func removeChild(at: Int)

  /**
    - jsName: removeFromParent
    - name: removeFromParentViewController
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: removeFromParent()
    - Introduced: 10.10
  */
  @objc (removeFromParentViewController) @available(OSX 10.10, *) func removeFromParent()

  /**
    - jsName: transition
    - name: transitionFromViewController:toViewController:options:completionHandler:
    - argLabels: from, to, options, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: transition(from:to:options:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (transitionFromViewController:toViewController:options:completionHandler:) @available(OSX 10.10, *) func transition(from: NSViewController, to: NSViewController, options: NSViewController.TransitionOptions, completionHandler: JSValue)

  /**
    - jsName: updateViewConstraints
    - name: updateViewConstraints
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func updateViewConstraints()

  /**
    - jsName: viewDidAppear
    - name: viewDidAppear
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidAppear()

  /**
    - jsName: viewDidDisappear
    - name: viewDidDisappear
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidDisappear()

  /**
    - jsName: viewDidLayout
    - name: viewDidLayout
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidLayout()

  /**
    - jsName: viewDidLoad
    - name: viewDidLoad
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewDidLoad()

  /**
    - jsName: viewWillAppear
    - name: viewWillAppear
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewWillAppear()

  /**
    - jsName: viewWillDisappear
    - name: viewWillDisappear
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewWillDisappear()

  /**
    - jsName: viewWillLayout
    - name: viewWillLayout
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func viewWillLayout()

  /**
    - jsName: viewWillTransition
    - name: viewWillTransitionToSize:
    - argLabels: to
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: viewWillTransition(to:)
    - Introduced: 10.10
  */
  @objc (viewWillTransitionToSize:) @available(OSX 10.10, *) func viewWillTransition(to: CGSize)

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
    - available: 10.5
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: children
    - name: childViewControllers
    - argLabels: 
    - available: 10.10
    - obsoleted: 4.2
    - renamed: children
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var children: [NSViewController] { @objc (childViewControllers) get @objc (setChildViewControllers:) set }

  /**
    - jsName: extensionContext
    - name: extensionContext
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var extensionContext: NSExtensionContext? { @objc get }

  /**
    - jsName: nibBundle
    - name: nibBundle
    - argLabels: 
  */
  @objc var nibBundle: Bundle? { @objc get }

  /**
    - jsName: nibName
    - name: nibName
    - argLabels: 
  */
  @objc var nibName: NSNib.Name? { @objc get }

  /**
    - jsName: parent
    - name: parentViewController
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: parent
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var parent: NSViewController? { @objc (parentViewController) get }

  /**
    - jsName: preferredContentSize
    - name: preferredContentSize
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredContentSize: CGSize { @objc get @objc (setPreferredContentSize:) set }

  /**
    - jsName: preferredMaximumSize
    - name: preferredMaximumSize
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredMaximumSize: CGSize { @objc get }

  /**
    - jsName: preferredMinimumSize
    - name: preferredMinimumSize
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredMinimumSize: CGSize { @objc get }

  /**
    - jsName: preferredScreenOrigin
    - name: preferredScreenOrigin
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var preferredScreenOrigin: CGPoint { @objc get @objc (setPreferredScreenOrigin:) set }

  /**
    - jsName: presentedViewControllers
    - name: presentedViewControllers
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var presentedViewControllers: [NSViewController]? { @objc get }

  /**
    - jsName: presentingViewController
    - name: presentingViewController
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var presentingViewController: NSViewController? { @objc get }

  /**
    - jsName: representedObject
    - name: representedObject
    - argLabels: 
  */
  @objc var representedObject: Any? { @objc get @objc (setRepresentedObject:) set }

  /**
    - jsName: sourceItemView
    - name: sourceItemView
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sourceItemView: NSView? { @objc get @objc (setSourceItemView:) set }

  /**
    - jsName: storyboard
    - name: storyboard
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var storyboard: NSStoryboard? { @objc get }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String? { @objc get @objc (setTitle:) set }

  /**
    - jsName: view
    - name: view
    - argLabels: 
  */
  @objc var view: NSView { @objc get @objc (setView:) set }

  /**
    - jsName: isViewLoaded
    - name: viewLoaded
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isViewLoaded
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isViewLoaded: Bool { @objc get }
}

extension NSViewController: NSViewControllerExports {
  @objc public static func createWithNibName(_ nibName: NSNib.Name?, bundle: Bundle?) -> Self {
    return self.init(nibName: nibName, bundle: bundle)
  }

}
