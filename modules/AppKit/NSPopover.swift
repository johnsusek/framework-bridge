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
    - Selector: NSPopover
    - Introduced: 10.7
  */

@objc(NSPopover) protocol NSPopoverExports: JSExport, NSResponderExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: close
  */
  @objc func close()

  /**
    - Selector: performClose:
  */
  @objc func performClose(_ p0: Any?)

  /**
    - Selector: showRelativeToRect:ofView:preferredEdge:
  */
  @objc (showRelativeToRect:ofView:preferredEdge:) func show(relativeTo: CGRect, of: NSView, preferredEdge: NSRectEdge)

  // Own Instance Properties

  /**
    - Selector: animates
  */
  @objc var animates: Bool { @objc get @objc (setAnimates:) set }

  /**
    - Selector: behavior
  */
  @objc var behavior: NSPopover.Behavior { @objc get @objc (setBehavior:) set }

  /**
    - Selector: contentSize
  */
  @objc var contentSize: CGSize { @objc get @objc (setContentSize:) set }

  /**
    - Selector: contentViewController
  */
  @objc var contentViewController: NSViewController? { @objc get @objc (setContentViewController:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSPopoverDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: detached
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isDetached: Bool { @objc get }

  /**
    - Selector: positioningRect
  */
  @objc var positioningRect: CGRect { @objc get @objc (setPositioningRect:) set }

  /**
    - Selector: shown
  */
  @objc var isShown: Bool { @objc get }
}

extension NSPopover: NSPopoverExports {
}
