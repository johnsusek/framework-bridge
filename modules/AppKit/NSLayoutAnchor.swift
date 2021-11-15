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
    - Selector: NSLayoutAnchor
    - Introduced: 10.11
  */

@objc(NSLayoutAnchor) protocol NSLayoutAnchorExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: constraintEqualToAnchor:
  */
  @objc func constraint(equalTo: JSValue) -> NSLayoutConstraint

  /**
    - Selector: constraintEqualToAnchor:constant:
  */
  @objc func constraint(equalTo: JSValue, constant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintGreaterThanOrEqualToAnchor:
  */
  @objc func constraint(greaterThanOrEqualTo: JSValue) -> NSLayoutConstraint

  /**
    - Selector: constraintGreaterThanOrEqualToAnchor:constant:
  */
  @objc func constraint(greaterThanOrEqualTo: JSValue, constant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintLessThanOrEqualToAnchor:
  */
  @objc func constraint(lessThanOrEqualTo: JSValue) -> NSLayoutConstraint

  /**
    - Selector: constraintLessThanOrEqualToAnchor:constant:
  */
  @objc func constraint(lessThanOrEqualTo: JSValue, constant: CGFloat) -> NSLayoutConstraint

  // Own Instance Properties

  /**
    - Selector: constraintsAffectingLayout
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var constraintsAffectingLayout: [NSLayoutConstraint] { @objc get }

  /**
    - Selector: hasAmbiguousLayout
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var hasAmbiguousLayout: Bool { @objc get }

  /**
    - Selector: item
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var item: AnyObject? { @objc get }

  /**
    - Selector: name
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var name: String { @objc get }
}

extension NSLayoutAnchor: NSLayoutAnchorExports {

  /**
    - Selector: constraintEqualToAnchor:
  */
  @objc public func constraint(equalTo: JSValue) -> NSLayoutConstraint {
    return self.constraint(equalTo: equalTo.toObjectOf(NSLayoutAnchor.self) as! NSLayoutAnchor<AnchorType>)
  }


  /**
    - Selector: constraintEqualToAnchor:constant:
  */
  @objc public func constraint(equalTo: JSValue, constant: CGFloat) -> NSLayoutConstraint {
    return self.constraint(equalTo: equalTo.toObjectOf(NSLayoutAnchor.self) as! NSLayoutAnchor<AnchorType>, constant: constant)
  }


  /**
    - Selector: constraintGreaterThanOrEqualToAnchor:
  */
  @objc public func constraint(greaterThanOrEqualTo: JSValue) -> NSLayoutConstraint {
    return self.constraint(greaterThanOrEqualTo: greaterThanOrEqualTo.toObjectOf(NSLayoutAnchor.self) as! NSLayoutAnchor<AnchorType>)
  }


  /**
    - Selector: constraintGreaterThanOrEqualToAnchor:constant:
  */
  @objc public func constraint(greaterThanOrEqualTo: JSValue, constant: CGFloat) -> NSLayoutConstraint {
    return self.constraint(greaterThanOrEqualTo: greaterThanOrEqualTo.toObjectOf(NSLayoutAnchor.self) as! NSLayoutAnchor<AnchorType>, constant: constant)
  }


  /**
    - Selector: constraintLessThanOrEqualToAnchor:
  */
  @objc public func constraint(lessThanOrEqualTo: JSValue) -> NSLayoutConstraint {
    return self.constraint(lessThanOrEqualTo: lessThanOrEqualTo.toObjectOf(NSLayoutAnchor.self) as! NSLayoutAnchor<AnchorType>)
  }


  /**
    - Selector: constraintLessThanOrEqualToAnchor:constant:
  */
  @objc public func constraint(lessThanOrEqualTo: JSValue, constant: CGFloat) -> NSLayoutConstraint {
    return self.constraint(lessThanOrEqualTo: lessThanOrEqualTo.toObjectOf(NSLayoutAnchor.self) as! NSLayoutAnchor<AnchorType>, constant: constant)
  }

}
