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
    - Selector: NSLayoutGuide
    - Introduced: 10.11
  */

@objc(NSLayoutGuide) protocol NSLayoutGuideExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: constraintsAffectingLayoutForOrientation:
    - Introduced: 10.12
  */
  @objc (constraintsAffectingLayoutForOrientation:) @available(OSX 10.12, *) func constraintsAffectingLayout(`for`: NSLayoutConstraint.Orientation) -> [NSLayoutConstraint]

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: bottomAnchor
  */
  @objc var bottomAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: centerXAnchor
  */
  @objc var centerXAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: centerYAnchor
  */
  @objc var centerYAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get }

  /**
    - Selector: hasAmbiguousLayout
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var hasAmbiguousLayout: Bool { @objc get }

  /**
    - Selector: heightAnchor
  */
  @objc var heightAnchor: NSLayoutDimension { @objc get }

  /**
    - Selector: leadingAnchor
  */
  @objc var leadingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: leftAnchor
  */
  @objc var leftAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: owningView
  */
  @objc var owningView: NSView? { @objc get @objc (setOwningView:) set }

  /**
    - Selector: rightAnchor
  */
  @objc var rightAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: topAnchor
  */
  @objc var topAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: trailingAnchor
  */
  @objc var trailingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: widthAnchor
  */
  @objc var widthAnchor: NSLayoutDimension { @objc get }
}

extension NSLayoutGuide: NSLayoutGuideExports {
}
