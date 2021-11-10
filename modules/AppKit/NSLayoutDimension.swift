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
    - Selector: NSLayoutDimension
    - Introduced: 10.11
  */

@objc(NSLayoutDimension) protocol NSLayoutDimensionExports: JSExport, NSLayoutAnchorExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: constraintEqualToAnchor:multiplier:
  */
  @objc (constraintEqualToAnchor:multiplier:) func constraint(equalTo: NSLayoutDimension, multiplier: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintEqualToAnchor:multiplier:constant:
  */
  @objc (constraintEqualToAnchor:multiplier:constant:) func constraint(equalTo: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintEqualToConstant:
  */
  @objc (constraintEqualToConstant:) func constraint(equalToConstant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintGreaterThanOrEqualToAnchor:multiplier:
  */
  @objc (constraintGreaterThanOrEqualToAnchor:multiplier:) func constraint(greaterThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintGreaterThanOrEqualToAnchor:multiplier:constant:
  */
  @objc (constraintGreaterThanOrEqualToAnchor:multiplier:constant:) func constraint(greaterThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintGreaterThanOrEqualToConstant:
  */
  @objc (constraintGreaterThanOrEqualToConstant:) func constraint(greaterThanOrEqualToConstant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintLessThanOrEqualToAnchor:multiplier:
  */
  @objc (constraintLessThanOrEqualToAnchor:multiplier:) func constraint(lessThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintLessThanOrEqualToAnchor:multiplier:constant:
  */
  @objc (constraintLessThanOrEqualToAnchor:multiplier:constant:) func constraint(lessThanOrEqualTo: NSLayoutDimension, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint

  /**
    - Selector: constraintLessThanOrEqualToConstant:
  */
  @objc (constraintLessThanOrEqualToConstant:) func constraint(lessThanOrEqualToConstant: CGFloat) -> NSLayoutConstraint
}

extension NSLayoutDimension: NSLayoutDimensionExports {
}
