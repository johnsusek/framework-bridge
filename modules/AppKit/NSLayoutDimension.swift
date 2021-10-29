import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLayoutDimension
    - name: NSLayoutDimension
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSLayoutDimension) protocol NSLayoutDimensionExports: JSExport, NSLayoutAnchorExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: constraint
    - name: constraintEqualToAnchor:multiplier:
    - argLabels: equalTo, multiplier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(equalTo:multiplier:)
  */
  @objc (constraintEqualToAnchor:multiplier:) func constraint(equalTo: NSLayoutDimension, multiplier: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintEqualToAnchor:multiplier:constant:
    - argLabels: equalTo, multiplier, constant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(equalTo:multiplier:constant:)
  */
  @objc (constraintEqualToAnchor:multiplier:constant:) func constraint(equalTo: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintEqualToConstant:
    - argLabels: equalToConstant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(equalToConstant:)
  */
  @objc (constraintEqualToConstant:) func constraint(equalToConstant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintGreaterThanOrEqualToAnchor:multiplier:
    - argLabels: greaterThanOrEqualTo, multiplier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(greaterThanOrEqualTo:multiplier:)
  */
  @objc (constraintGreaterThanOrEqualToAnchor:multiplier:) func constraint(greaterThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintGreaterThanOrEqualToAnchor:multiplier:constant:
    - argLabels: greaterThanOrEqualTo, multiplier, constant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(greaterThanOrEqualTo:multiplier:constant:)
  */
  @objc (constraintGreaterThanOrEqualToAnchor:multiplier:constant:) func constraint(greaterThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintGreaterThanOrEqualToConstant:
    - argLabels: greaterThanOrEqualToConstant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(greaterThanOrEqualToConstant:)
  */
  @objc (constraintGreaterThanOrEqualToConstant:) func constraint(greaterThanOrEqualToConstant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintLessThanOrEqualToAnchor:multiplier:
    - argLabels: lessThanOrEqualTo, multiplier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(lessThanOrEqualTo:multiplier:)
  */
  @objc (constraintLessThanOrEqualToAnchor:multiplier:) func constraint(lessThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintLessThanOrEqualToAnchor:multiplier:constant:
    - argLabels: lessThanOrEqualTo, multiplier, constant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(lessThanOrEqualTo:multiplier:constant:)
  */
  @objc (constraintLessThanOrEqualToAnchor:multiplier:constant:) func constraint(lessThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint

  /**
    - jsName: constraint
    - name: constraintLessThanOrEqualToConstant:
    - argLabels: lessThanOrEqualToConstant
    - constructorTokens: 
    - obsoleted: 3
    - renamed: constraint(lessThanOrEqualToConstant:)
  */
  @objc (constraintLessThanOrEqualToConstant:) func constraint(lessThanOrEqualToConstant: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutDimension: NSLayoutDimensionExports {
}
