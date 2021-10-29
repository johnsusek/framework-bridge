import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPageController
    - name: NSPageController
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSPageController) protocol NSPageControllerExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: completeTransition
    - name: completeTransition
    - argLabels: 
    - constructorTokens: 
  */
  @objc func completeTransition()

  /**
    - jsName: navigateBack
    - name: navigateBack:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func navigateBack(_: Any?)

  /**
    - jsName: navigateForward
    - name: navigateForward:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func navigateForward(_: Any?)

  /**
    - jsName: navigateForward
    - name: navigateForwardToObject:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: navigateForward(to:)
  */
  @objc (navigateForwardToObject:) func navigateForward(to: Any)

  /**
    - jsName: takeSelectedIndexFrom
    - name: takeSelectedIndexFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeSelectedIndexFrom(_: Any?)

  // Own Instance Properties

  /**
    - jsName: arrangedObjects
    - name: arrangedObjects
    - argLabels: 
  */
  @objc var arrangedObjects: [Any] { @objc get @objc (setArrangedObjects:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSPageControllerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: selectedIndex
    - name: selectedIndex
    - argLabels: 
  */
  @objc var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - jsName: selectedViewController
    - name: selectedViewController
    - argLabels: 
  */
  @objc var selectedViewController: NSViewController? { @objc get }

  /**
    - jsName: transitionStyle
    - name: transitionStyle
    - argLabels: 
  */
  @objc var transitionStyle: NSPageController.TransitionStyle { @objc get @objc (setTransitionStyle:) set }
}

extension NSPageController: NSPageControllerExports {
}
