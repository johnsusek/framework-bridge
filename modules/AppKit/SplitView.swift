import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSplitView
    - name: NSSplitView
    - argLabels: 
  */

@objc(NSSplitView) protocol NSSplitViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addArrangedSubview
    - name: addArrangedSubview:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func addArrangedSubview(_: NSView)

  /**
    - jsName: adjustSubviews
    - name: adjustSubviews
    - argLabels: 
    - constructorTokens: 
  */
  @objc func adjustSubviews()

  /**
    - jsName: drawDivider
    - name: drawDividerInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawDivider(in:)
  */
  @objc (drawDividerInRect:) func drawDivider(in: CGRect)

  /**
    - jsName: holdingPriorityForSubview
    - name: holdingPriorityForSubviewAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: holdingPriorityForSubview(at:)
    - Introduced: 10.8
  */
  @objc (holdingPriorityForSubviewAtIndex:) @available(OSX 10.8, *) func holdingPriorityForSubview(at: Int) -> NSLayoutConstraint.Priority

  /**
    - jsName: insertArrangedSubview
    - name: insertArrangedSubview:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: insertArrangedSubview(_:at:)
    - Introduced: 10.11
  */
  @objc (insertArrangedSubview:atIndex:) @available(OSX 10.11, *) func insertArrangedSubview(_: NSView, at: Int)

  /**
    - jsName: isSubviewCollapsed
    - name: isSubviewCollapsed:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func isSubviewCollapsed(_: NSView) -> Bool

  /**
    - jsName: maxPossiblePositionOfDivider
    - name: maxPossiblePositionOfDividerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: maxPossiblePositionOfDivider(at:)
    - Introduced: 10.5
  */
  @objc (maxPossiblePositionOfDividerAtIndex:) @available(OSX 10.5, *) func maxPossiblePositionOfDivider(at: Int) -> CGFloat

  /**
    - jsName: minPossiblePositionOfDivider
    - name: minPossiblePositionOfDividerAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: minPossiblePositionOfDivider(at:)
    - Introduced: 10.5
  */
  @objc (minPossiblePositionOfDividerAtIndex:) @available(OSX 10.5, *) func minPossiblePositionOfDivider(at: Int) -> CGFloat

  /**
    - jsName: removeArrangedSubview
    - name: removeArrangedSubview:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func removeArrangedSubview(_: NSView)

  /**
    - jsName: setHoldingPriority
    - name: setHoldingPriority:forSubviewAtIndex:
    - argLabels: _, forSubviewAt
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: setHoldingPriority(_:forSubviewAt:)
    - Introduced: 10.8
  */
  @objc (setHoldingPriority:forSubviewAtIndex:) @available(OSX 10.8, *) func setHoldingPriority(_: NSLayoutConstraint.Priority, forSubviewAt: Int)

  /**
    - jsName: setPosition
    - name: setPosition:ofDividerAtIndex:
    - argLabels: _, ofDividerAt
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: setPosition(_:ofDividerAt:)
    - Introduced: 10.5
  */
  @objc (setPosition:ofDividerAtIndex:) @available(OSX 10.5, *) func setPosition(_: CGFloat, ofDividerAt: Int)

  // Own Instance Properties

  /**
    - jsName: arrangedSubviews
    - name: arrangedSubviews
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var arrangedSubviews: [NSView] { @objc get }

  /**
    - jsName: arrangesAllSubviews
    - name: arrangesAllSubviews
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var arrangesAllSubviews: Bool { @objc get @objc (setArrangesAllSubviews:) set }

  /**
    - jsName: autosaveName
    - name: autosaveName
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var autosaveName: NSSplitView.AutosaveName? { @objc get @objc (setAutosaveName:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSSplitViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: dividerColor
    - name: dividerColor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dividerColor: NSColor { @objc get }

  /**
    - jsName: dividerStyle
    - name: dividerStyle
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var dividerStyle: NSSplitView.DividerStyle { @objc get @objc (setDividerStyle:) set }

  /**
    - jsName: dividerThickness
    - name: dividerThickness
    - argLabels: 
  */
  @objc var dividerThickness: CGFloat { @objc get }

  /**
    - jsName: isVertical
    - name: vertical
    - argLabels: 
    - obsoleted: 3
    - renamed: isVertical
  */
  @objc var isVertical: Bool { @objc get @objc (setVertical:) set }
}

@objc protocol SplitViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(SplitView) public class SplitView: NSSplitView, SplitViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSSplitView: NSSplitViewExports {
}
