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
    - Selector: NSPageController
    - Introduced: 10.8
  */

@objc(NSPageController) protocol NSPageControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: completeTransition
  */
  @objc func completeTransition()

  /**
    - Selector: navigateBack:
  */
  @objc func navigateBack(_: Any?)

  /**
    - Selector: navigateForward:
  */
  @objc func navigateForward(_: Any?)

  /**
    - Selector: navigateForwardToObject:
  */
  @objc (navigateForwardToObject:) func navigateForward(to: Any)

  /**
    - Selector: takeSelectedIndexFrom:
  */
  @objc func takeSelectedIndexFrom(_: Any?)

  // Own Instance Properties

  /**
    - Selector: arrangedObjects
  */
  @objc var arrangedObjects: [Any] { @objc get @objc (setArrangedObjects:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSPageControllerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: selectedIndex
  */
  @objc var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - Selector: selectedViewController
  */
  @objc var selectedViewController: NSViewController? { @objc get }

  /**
    - Selector: transitionStyle
  */
  @objc var transitionStyle: NSPageController.TransitionStyle { @objc get @objc (setTransitionStyle:) set }
}

extension NSPageController: NSPageControllerExports {
}
