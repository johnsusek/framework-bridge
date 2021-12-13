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
    - Selector: NSPopoverTouchBarItem
    - Introduced: 10.12.2
  */

@objc(NSPopoverTouchBarItem) protocol NSPopoverTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: dismissPopover:
  */
  @objc func dismissPopover(_ p0: Any?)

  /**
    - Selector: makeStandardActivatePopoverGestureRecognizer
  */
  @objc func makeStandardActivatePopoverGestureRecognizer() -> NSGestureRecognizer

  /**
    - Selector: showPopover:
  */
  @objc func showPopover(_ p0: Any?)

  // Own Instance Properties

  /**
    - Selector: collapsedRepresentation
  */
  @objc var collapsedRepresentation: NSView { @objc get @objc (setCollapsedRepresentation:) set }

  /**
    - Selector: collapsedRepresentationImage
  */
  @objc var collapsedRepresentationImage: NSImage? { @objc get @objc (setCollapsedRepresentationImage:) set }

  /**
    - Selector: collapsedRepresentationLabel
  */
  @objc var collapsedRepresentationLabel: String { @objc get @objc (setCollapsedRepresentationLabel:) set }

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - Selector: popoverTouchBar
  */
  @objc var popoverTouchBar: NSTouchBar { @objc get @objc (setPopoverTouchBar:) set }

  /**
    - Selector: pressAndHoldTouchBar
  */
  @objc var pressAndHoldTouchBar: NSTouchBar? { @objc get @objc (setPressAndHoldTouchBar:) set }

  /**
    - Selector: showsCloseButton
  */
  @objc var showsCloseButton: Bool { @objc get @objc (setShowsCloseButton:) set }
}

extension NSPopoverTouchBarItem: NSPopoverTouchBarItemExports {
}
