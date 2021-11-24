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
    - Selector: NSLayoutConstraint
    - Introduced: 10.7
  */

@objc(NSLayoutConstraint) protocol NSLayoutConstraintExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: activateConstraints:
    - Introduced: 10.10
  */
  @objc (activateConstraints:) @available(OSX 10.10, *) static func activate(_: [NSLayoutConstraint])

  /**
    - Selector: constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithItem_Attribute_RelatedBy_ToItem_Attribute_Multiplier_Constant(_ item: Any, _ attribute: NSLayoutConstraint.Attribute, _ relatedBy: NSLayoutConstraint.Relation, _ toItem: Any?, _ attribute1: NSLayoutConstraint.Attribute, _ multiplier: CGFloat, _ constant: CGFloat) -> Self

  /**
    - Selector: constraintsWithVisualFormat:options:metrics:views:
    - Introduced: 10.7
  */
  @objc (constraintsWithVisualFormat:options:metrics:views:) @available(OSX 10.7, *) static func constraints(withVisualFormat: String, options: NSLayoutConstraint.FormatOptions, metrics: [String: Any]?, views: [String: Any]) -> [NSLayoutConstraint]

  /**
    - Selector: deactivateConstraints:
    - Introduced: 10.10
  */
  @objc (deactivateConstraints:) @available(OSX 10.10, *) static func deactivate(_: [NSLayoutConstraint])

  // Own Instance Properties

  /**
    - Selector: active
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isActive: Bool { @objc get @objc (setActive:) set }

  /**
    - Selector: constant
  */
  @objc var constant: CGFloat { @objc get @objc (setConstant:) set }

  /**
    - Selector: firstAnchor
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) var firstAnchor: JSValue { @objc get }

  /**
    - Selector: firstAttribute
  */
  @objc var firstAttribute: NSLayoutConstraint.Attribute { @objc get }

  /**
    - Selector: firstItem
  */
  @objc var firstItem: AnyObject? { @objc get }

  /**
    - Selector: identifier
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var identifier: String? { @objc get @objc (setIdentifier:) set }

  /**
    - Selector: multiplier
  */
  @objc var multiplier: CGFloat { @objc get }

  /**
    - Selector: priority
  */
  @objc var priority: NSLayoutConstraint.Priority { @objc get @objc (setPriority:) set }

  /**
    - Selector: relation
  */
  @objc var relation: NSLayoutConstraint.Relation { @objc get }

  /**
    - Selector: secondAnchor
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) var secondAnchor: JSValue? { @objc get }

  /**
    - Selector: secondAttribute
  */
  @objc var secondAttribute: NSLayoutConstraint.Attribute { @objc get }

  /**
    - Selector: secondItem
  */
  @objc var secondItem: AnyObject? { @objc get }

  /**
    - Selector: shouldBeArchived
  */
  @objc var shouldBeArchived: Bool { @objc get @objc (setShouldBeArchived:) set }
}

extension NSLayoutConstraint: NSLayoutConstraintExports {

  /**
    - Selector: constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:
    - Introduced: 10.7
  */
  @objc public static func createWithItem_Attribute_RelatedBy_ToItem_Attribute_Multiplier_Constant(_ item: Any, _ attribute: NSLayoutConstraint.Attribute, _ relatedBy: NSLayoutConstraint.Relation, _ toItem: Any?, _ attribute1: NSLayoutConstraint.Attribute, _ multiplier: CGFloat, _ constant: CGFloat) -> Self {
    return self.init(item: item, attribute: attribute, relatedBy: relatedBy, toItem: toItem, attribute: attribute1, multiplier: multiplier, constant: constant)
  }

}
