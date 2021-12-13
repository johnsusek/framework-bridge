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
    - Selector: NSSplitView
  */

@objc(NSSplitView) protocol NSSplitViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: addArrangedSubview:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func addArrangedSubview(_ p0: NSView)

  /**
    - Selector: adjustSubviews
  */
  @objc func adjustSubviews()

  /**
    - Selector: drawDividerInRect:
  */
  @objc (drawDividerInRect:) func drawDivider(in: CGRect)

  /**
    - Selector: holdingPriorityForSubviewAtIndex:
    - Introduced: 10.8
  */
  @objc (holdingPriorityForSubviewAtIndex:) @available(OSX 10.8, *) func holdingPriorityForSubview(at: Int) -> NSLayoutConstraint.Priority

  /**
    - Selector: insertArrangedSubview:atIndex:
    - Introduced: 10.11
  */
  @objc (insertArrangedSubview:atIndex:) @available(OSX 10.11, *) func insertArrangedSubview(_ p0: NSView, at: Int)

  /**
    - Selector: isSubviewCollapsed:
  */
  @objc func isSubviewCollapsed(_ p0: NSView) -> Bool

  /**
    - Selector: maxPossiblePositionOfDividerAtIndex:
    - Introduced: 10.5
  */
  @objc (maxPossiblePositionOfDividerAtIndex:) @available(OSX 10.5, *) func maxPossiblePositionOfDivider(at: Int) -> CGFloat

  /**
    - Selector: minPossiblePositionOfDividerAtIndex:
    - Introduced: 10.5
  */
  @objc (minPossiblePositionOfDividerAtIndex:) @available(OSX 10.5, *) func minPossiblePositionOfDivider(at: Int) -> CGFloat

  /**
    - Selector: removeArrangedSubview:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func removeArrangedSubview(_ p0: NSView)

  /**
    - Selector: setHoldingPriority:forSubviewAtIndex:
    - Introduced: 10.8
  */
  @objc (setHoldingPriority:forSubviewAtIndex:) @available(OSX 10.8, *) func setHoldingPriority(_ p0: NSLayoutConstraint.Priority, forSubviewAt: Int)

  /**
    - Selector: setPosition:ofDividerAtIndex:
    - Introduced: 10.5
  */
  @objc (setPosition:ofDividerAtIndex:) @available(OSX 10.5, *) func setPosition(_ p0: CGFloat, ofDividerAt: Int)

  // Own Instance Properties

  /**
    - Selector: arrangedSubviews
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var arrangedSubviews: [NSView] { @objc get }

  /**
    - Selector: arrangesAllSubviews
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var arrangesAllSubviews: Bool { @objc get @objc (setArrangesAllSubviews:) set }

  /**
    - Selector: autosaveName
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var autosaveName: NSSplitView.AutosaveName? { @objc get @objc (setAutosaveName:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSSplitViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: dividerColor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dividerColor: NSColor { @objc get }

  /**
    - Selector: dividerStyle
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dividerStyle: NSSplitView.DividerStyle { @objc get @objc (setDividerStyle:) set }

  /**
    - Selector: dividerThickness
  */
  @objc var dividerThickness: CGFloat { @objc get }

  /**
    - Selector: vertical
  */
  @objc var isVertical: Bool { @objc get @objc (setVertical:) set }
}

extension NSSplitView: NSSplitViewExports {
}
