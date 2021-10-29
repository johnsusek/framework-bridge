import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPopoverTouchBarItem
    - name: NSPopoverTouchBarItem
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSPopoverTouchBarItem) protocol NSPopoverTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: dismissPopover
    - name: dismissPopover:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func dismissPopover(_: Any?)

  /**
    - jsName: makeStandardActivatePopoverGestureRecognizer
    - name: makeStandardActivatePopoverGestureRecognizer
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makeStandardActivatePopoverGestureRecognizer() -> NSGestureRecognizer

  /**
    - jsName: showPopover
    - name: showPopover:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func showPopover(_: Any?)

  // Own Instance Properties

  /**
    - jsName: collapsedRepresentation
    - name: collapsedRepresentation
    - argLabels: 
  */
  @objc var collapsedRepresentation: NSView { @objc get @objc (setCollapsedRepresentation:) set }

  /**
    - jsName: collapsedRepresentationImage
    - name: collapsedRepresentationImage
    - argLabels: 
  */
  @objc var collapsedRepresentationImage: NSImage? { @objc get @objc (setCollapsedRepresentationImage:) set }

  /**
    - jsName: collapsedRepresentationLabel
    - name: collapsedRepresentationLabel
    - argLabels: 
  */
  @objc var collapsedRepresentationLabel: String { @objc get @objc (setCollapsedRepresentationLabel:) set }

  /**
    - jsName: customizationLabel
    - name: customizationLabel
    - argLabels: 
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - jsName: popoverTouchBar
    - name: popoverTouchBar
    - argLabels: 
  */
  @objc var popoverTouchBar: NSTouchBar { @objc get @objc (setPopoverTouchBar:) set }

  /**
    - jsName: pressAndHoldTouchBar
    - name: pressAndHoldTouchBar
    - argLabels: 
  */
  @objc var pressAndHoldTouchBar: NSTouchBar? { @objc get @objc (setPressAndHoldTouchBar:) set }

  /**
    - jsName: showsCloseButton
    - name: showsCloseButton
    - argLabels: 
  */
  @objc var showsCloseButton: Bool { @objc get @objc (setShowsCloseButton:) set }
}

extension NSPopoverTouchBarItem: NSPopoverTouchBarItemExports {
}
