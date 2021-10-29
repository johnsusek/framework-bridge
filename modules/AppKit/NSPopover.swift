import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPopover
    - name: NSPopover
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSPopover) protocol NSPopoverExports: JSExport, NSResponderExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: close
    - name: close
    - argLabels: 
    - constructorTokens: 
  */
  @objc func close()

  /**
    - jsName: performClose
    - name: performClose:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func performClose(_: Any?)

  /**
    - jsName: show
    - name: showRelativeToRect:ofView:preferredEdge:
    - argLabels: relativeTo, of, preferredEdge
    - constructorTokens: 
    - obsoleted: 3
    - renamed: show(relativeTo:of:preferredEdge:)
  */
  @objc (showRelativeToRect:ofView:preferredEdge:) func show(relativeTo: CGRect, of: NSView, preferredEdge: NSRectEdge)

  // Own Instance Properties

  /**
    - jsName: animates
    - name: animates
    - argLabels: 
  */
  @objc var animates: Bool { @objc get @objc (setAnimates:) set }

  /**
    - jsName: behavior
    - name: behavior
    - argLabels: 
  */
  @objc var behavior: NSPopover.Behavior { @objc get @objc (setBehavior:) set }

  /**
    - jsName: contentSize
    - name: contentSize
    - argLabels: 
  */
  @objc var contentSize: CGSize { @objc get @objc (setContentSize:) set }

  /**
    - jsName: contentViewController
    - name: contentViewController
    - argLabels: 
  */
  @objc var contentViewController: NSViewController? { @objc get @objc (setContentViewController:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSPopoverDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: isDetached
    - name: detached
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isDetached
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isDetached: Bool { @objc get }

  /**
    - jsName: positioningRect
    - name: positioningRect
    - argLabels: 
  */
  @objc var positioningRect: CGRect { @objc get @objc (setPositioningRect:) set }

  /**
    - jsName: isShown
    - name: shown
    - argLabels: 
    - obsoleted: 3
    - renamed: isShown
  */
  @objc var isShown: Bool { @objc get }
}

extension NSPopover: NSPopoverExports {
}
