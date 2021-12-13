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
    - Selector: NSStackView
    - Introduced: 10.9
  */

@objc(NSStackView) protocol NSStackViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: stackViewWithViews:
  */
  @objc static func createWithViews(_ views: [NSView]) -> Self

  // Instance Methods

  /**
    - Selector: addArrangedSubview:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func addArrangedSubview(_ p0: NSView)

  /**
    - Selector: addView:inGravity:
  */
  @objc (addView:inGravity:) func addView(_ p0: NSView, in: NSStackView.Gravity)

  /**
    - Selector: clippingResistancePriorityForOrientation:
  */
  @objc (clippingResistancePriorityForOrientation:) func clippingResistancePriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - Selector: customSpacingAfterView:
  */
  @objc (customSpacingAfterView:) func customSpacing(after: NSView) -> CGFloat

  /**
    - Selector: huggingPriorityForOrientation:
  */
  @objc (huggingPriorityForOrientation:) func huggingPriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - Selector: insertArrangedSubview:atIndex:
    - Introduced: 10.11
  */
  @objc (insertArrangedSubview:atIndex:) @available(OSX 10.11, *) func insertArrangedSubview(_ p0: NSView, at: Int)

  /**
    - Selector: insertView:atIndex:inGravity:
  */
  @objc (insertView:atIndex:inGravity:) func insertView(_ p0: NSView, at: Int, in: NSStackView.Gravity)

  /**
    - Selector: removeArrangedSubview:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func removeArrangedSubview(_ p0: NSView)

  /**
    - Selector: removeView:
  */
  @objc func removeView(_ p0: NSView)

  /**
    - Selector: setClippingResistancePriority:forOrientation:
  */
  @objc (setClippingResistancePriority:forOrientation:) func setClippingResistancePriority(_ p0: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - Selector: setCustomSpacing:afterView:
  */
  @objc (setCustomSpacing:afterView:) func setCustomSpacing(_ p0: CGFloat, after: NSView)

  /**
    - Selector: setHuggingPriority:forOrientation:
  */
  @objc (setHuggingPriority:forOrientation:) func setHuggingPriority(_ p0: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - Selector: setViews:inGravity:
  */
  @objc (setViews:inGravity:) func setViews(_ p0: [NSView], in: NSStackView.Gravity)

  /**
    - Selector: setVisibilityPriority:forView:
  */
  @objc (setVisibilityPriority:forView:) func setVisibilityPriority(_ p0: NSStackView.VisibilityPriority, `for`: NSView)

  /**
    - Selector: viewsInGravity:
  */
  @objc (viewsInGravity:) func views(in: NSStackView.Gravity) -> [NSView]

  /**
    - Selector: visibilityPriorityForView:
  */
  @objc (visibilityPriorityForView:) func visibilityPriority(`for`: NSView) -> NSStackView.VisibilityPriority

  // Own Instance Properties

  /**
    - Selector: alignment
  */
  @objc var alignment: NSLayoutConstraint.Attribute { @objc get @objc (setAlignment:) set }

  /**
    - Selector: arrangedSubviews
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var arrangedSubviews: [NSView] { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSStackViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: detachedViews
  */
  @objc var detachedViews: [NSView] { @objc get }

  /**
    - Selector: detachesHiddenViews
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var detachesHiddenViews: Bool { @objc get @objc (setDetachesHiddenViews:) set }

  /**
    - Selector: distribution
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var distribution: NSStackView.Distribution { @objc get @objc (setDistribution:) set }

  /**
    - Selector: edgeInsets
  */
  @objc var edgeInsets: NSEdgeInsets { @objc get @objc (setEdgeInsets:) set }

  /**
    - Selector: orientation
  */
  @objc var orientation: NSUserInterfaceLayoutOrientation { @objc get @objc (setOrientation:) set }

  /**
    - Selector: spacing
  */
  @objc var spacing: CGFloat { @objc get @objc (setSpacing:) set }

  /**
    - Selector: views
  */
  @objc var views: [NSView] { @objc get }
}

extension NSStackView: NSStackViewExports {

  /**
    - Selector: stackViewWithViews:
  */
  @objc public static func createWithViews(_ views: [NSView]) -> Self {
    return self.init(views: views)
  }

}
