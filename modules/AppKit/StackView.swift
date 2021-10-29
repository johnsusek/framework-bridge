import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStackView
    - name: NSStackView
    - argLabels: 
    - Introduced: 10.9
  */

@objc(NSStackView) protocol NSStackViewExports: JSExport, NSViewExports {
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
    - jsName: addView
    - name: addView:inGravity:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addView(_:in:)
  */
  @objc (addView:inGravity:) func addView(_: NSView, in: NSStackView.Gravity)

  /**
    - jsName: clippingResistancePriority
    - name: clippingResistancePriorityForOrientation:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: clippingResistancePriority(for:)
  */
  @objc (clippingResistancePriorityForOrientation:) func clippingResistancePriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - jsName: customSpacing
    - name: customSpacingAfterView:
    - argLabels: after
    - constructorTokens: 
    - obsoleted: 3
    - renamed: customSpacing(after:)
  */
  @objc (customSpacingAfterView:) func customSpacing(after: NSView) -> CGFloat

  /**
    - jsName: huggingPriority
    - name: huggingPriorityForOrientation:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: huggingPriority(for:)
  */
  @objc (huggingPriorityForOrientation:) func huggingPriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

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
    - jsName: insertView
    - name: insertView:atIndex:inGravity:
    - argLabels: _, at, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertView(_:at:in:)
  */
  @objc (insertView:atIndex:inGravity:) func insertView(_: NSView, at: Int, in: NSStackView.Gravity)

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
    - jsName: removeView
    - name: removeView:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeView(_: NSView)

  /**
    - jsName: setClippingResistancePriority
    - name: setClippingResistancePriority:forOrientation:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setClippingResistancePriority(_:for:)
  */
  @objc (setClippingResistancePriority:forOrientation:) func setClippingResistancePriority(_: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - jsName: setCustomSpacing
    - name: setCustomSpacing:afterView:
    - argLabels: _, after
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setCustomSpacing(_:after:)
  */
  @objc (setCustomSpacing:afterView:) func setCustomSpacing(_: CGFloat, after: NSView)

  /**
    - jsName: setHuggingPriority
    - name: setHuggingPriority:forOrientation:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setHuggingPriority(_:for:)
  */
  @objc (setHuggingPriority:forOrientation:) func setHuggingPriority(_: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - jsName: setViews
    - name: setViews:inGravity:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setViews(_:in:)
  */
  @objc (setViews:inGravity:) func setViews(_: [NSView], in: NSStackView.Gravity)

  /**
    - jsName: setVisibilityPriority
    - name: setVisibilityPriority:forView:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setVisibilityPriority(_:for:)
  */
  @objc (setVisibilityPriority:forView:) func setVisibilityPriority(_: NSStackView.VisibilityPriority, `for`: NSView)

  /**
    - jsName: views
    - name: viewsInGravity:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: views(in:)
  */
  @objc (viewsInGravity:) func views(in: NSStackView.Gravity) -> [NSView]

  /**
    - jsName: visibilityPriority
    - name: visibilityPriorityForView:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: visibilityPriority(for:)
  */
  @objc (visibilityPriorityForView:) func visibilityPriority(`for`: NSView) -> NSStackView.VisibilityPriority

  // Own Instance Properties

  /**
    - jsName: alignment
    - name: alignment
    - argLabels: 
  */
  @objc var alignment: NSLayoutConstraint.Attribute { @objc get @objc (setAlignment:) set }

  /**
    - jsName: arrangedSubviews
    - name: arrangedSubviews
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var arrangedSubviews: [NSView] { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSStackViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: detachedViews
    - name: detachedViews
    - argLabels: 
  */
  @objc var detachedViews: [NSView] { @objc get }

  /**
    - jsName: detachesHiddenViews
    - name: detachesHiddenViews
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var detachesHiddenViews: Bool { @objc get @objc (setDetachesHiddenViews:) set }

  /**
    - jsName: distribution
    - name: distribution
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var distribution: NSStackView.Distribution { @objc get @objc (setDistribution:) set }

  /**
    - jsName: edgeInsets
    - name: edgeInsets
    - argLabels: 
  */
  @objc var edgeInsets: NSEdgeInsets { @objc get @objc (setEdgeInsets:) set }

  /**
    - jsName: orientation
    - name: orientation
    - argLabels: 
  */
  @objc var orientation: NSUserInterfaceLayoutOrientation { @objc get @objc (setOrientation:) set }

  /**
    - jsName: spacing
    - name: spacing
    - argLabels: 
  */
  @objc var spacing: CGFloat { @objc get @objc (setSpacing:) set }

  /**
    - jsName: views
    - name: views
    - argLabels: 
  */
  @objc var views: [NSView] { @objc get }
}

@objc protocol StackViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(StackView) public class StackView: NSStackView, StackViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSStackView: NSStackViewExports {
}
