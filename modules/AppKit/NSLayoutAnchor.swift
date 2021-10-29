import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLayoutAnchor
    - name: NSLayoutAnchor
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSLayoutAnchor) protocol NSLayoutAnchorExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: constraint
    - name: constraintEqualToAnchor:
    - argLabels: equalTo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(equalTo:)
  */
  // jsvalue - @objc func constraint(equalTo: JSValue) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintEqualToAnchor:constant:
    - argLabels: equalTo, constant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(equalTo:constant:)
  */
  // jsvalue - @objc func constraint(equalTo: JSValue, constant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintGreaterThanOrEqualToAnchor:
    - argLabels: greaterThanOrEqualTo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(greaterThanOrEqualTo:)
  */
  // jsvalue - @objc func constraint(greaterThanOrEqualTo: JSValue) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintGreaterThanOrEqualToAnchor:constant:
    - argLabels: greaterThanOrEqualTo, constant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(greaterThanOrEqualTo:constant:)
  */
  // jsvalue - @objc func constraint(greaterThanOrEqualTo: JSValue, constant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintLessThanOrEqualToAnchor:
    - argLabels: lessThanOrEqualTo
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(lessThanOrEqualTo:)
  */
  // jsvalue - @objc func constraint(lessThanOrEqualTo: JSValue) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintLessThanOrEqualToAnchor:constant:
    - argLabels: lessThanOrEqualTo, constant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(lessThanOrEqualTo:constant:)
  */
  // jsvalue - @objc func constraint(lessThanOrEqualTo: JSValue, constant: CGFloat) -> NSLayoutConstraint

  // Own Instance Properties

  /**
    - jsName: constraintsAffectingLayout
    - name: constraintsAffectingLayout
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var constraintsAffectingLayout: [NSLayoutConstraint] { @objc get }

  /**
    - jsName: hasAmbiguousLayout
    - name: hasAmbiguousLayout
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var hasAmbiguousLayout: Bool { @objc get }

  /**
    - jsName: item
    - name: item
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var item: AnyObject? { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var name: String { @objc get }
}

extension NSLayoutAnchor: NSLayoutAnchorExports {
}
