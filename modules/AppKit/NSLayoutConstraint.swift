import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLayoutConstraint
    - name: NSLayoutConstraint
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSLayoutConstraint) protocol NSLayoutConstraintExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: activate
    - name: activateConstraints:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: activate(_:)
    - Introduced: 10.10
  */
  @objc (activateConstraints:) @available(OSX 10.10, *) static func activate(_: [NSLayoutConstraint])

  /**
    - jsName: create
    - name: constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:
    - argLabels: item, attribute, relatedBy, toItem, attribute, multiplier, constant
    - constructorTokens: 
    - available: 10.7
    - unavailable: true
    - renamed: init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)
    - message: Not available in Swift
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(item: Any, attribute: NSLayoutConstraint.Attribute, relatedBy: NSLayoutConstraint.Relation, toItem: Any?, attribute: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant: CGFloat) -> Self

  /**
    - jsName: constraints
    - name: constraintsWithVisualFormat:options:metrics:views:
    - argLabels: withVisualFormat, options, metrics, views
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: constraints(withVisualFormat:options:metrics:views:)
    - Introduced: 10.7
  */
  @objc (constraintsWithVisualFormat:options:metrics:views:) @available(OSX 10.7, *) static func constraints(withVisualFormat: String, options: NSLayoutConstraint.FormatOptions, metrics: [String: Any]?, views: [String: Any]) -> [NSLayoutConstraint]

  /**
    - jsName: deactivate
    - name: deactivateConstraints:
    - argLabels: _
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: deactivate(_:)
    - Introduced: 10.10
  */
  @objc (deactivateConstraints:) @available(OSX 10.10, *) static func deactivate(_: [NSLayoutConstraint])

  // Own Instance Properties

  /**
    - jsName: isActive
    - name: active
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: isActive
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isActive: Bool { @objc get @objc (setActive:) set }

  /**
    - jsName: constant
    - name: constant
    - argLabels: 
  */
  @objc var constant: CGFloat { @objc get @objc (setConstant:) set }

  /**
    - jsName: firstAnchor
    - name: firstAnchor
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) var firstAnchor: JSValue { @objc get }

  /**
    - jsName: firstAttribute
    - name: firstAttribute
    - argLabels: 
  */
  @objc var firstAttribute: NSLayoutConstraint.Attribute { @objc get }

  /**
    - jsName: firstItem
    - name: firstItem
    - argLabels: 
  */
  @objc var firstItem: AnyObject? { @objc get }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var identifier: String? { @objc get @objc (setIdentifier:) set }

  /**
    - jsName: multiplier
    - name: multiplier
    - argLabels: 
  */
  @objc var multiplier: CGFloat { @objc get }

  /**
    - jsName: priority
    - name: priority
    - argLabels: 
  */
  @objc var priority: NSLayoutConstraint.Priority { @objc get @objc (setPriority:) set }

  /**
    - jsName: relation
    - name: relation
    - argLabels: 
  */
  @objc var relation: NSLayoutConstraint.Relation { @objc get }

  /**
    - jsName: secondAnchor
    - name: secondAnchor
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) var secondAnchor: JSValue? { @objc get }

  /**
    - jsName: secondAttribute
    - name: secondAttribute
    - argLabels: 
  */
  @objc var secondAttribute: NSLayoutConstraint.Attribute { @objc get }

  /**
    - jsName: secondItem
    - name: secondItem
    - argLabels: 
  */
  @objc var secondItem: AnyObject? { @objc get }

  /**
    - jsName: shouldBeArchived
    - name: shouldBeArchived
    - argLabels: 
  */
  @objc var shouldBeArchived: Bool { @objc get @objc (setShouldBeArchived:) set }
}

extension NSLayoutConstraint: NSLayoutConstraintExports {
  @objc public static func create(item: Any, attribute: NSLayoutConstraint.Attribute, relatedBy: NSLayoutConstraint.Relation, toItem: Any?, attribute attribute1: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant: CGFloat) -> Self {
    return self.init(item: item, attribute: attribute, relatedBy: relatedBy, toItem: toItem, attribute: attribute1, multiplier: multiplier, constant: constant)
  }

}
