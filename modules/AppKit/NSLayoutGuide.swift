import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLayoutGuide
    - name: NSLayoutGuide
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSLayoutGuide) protocol NSLayoutGuideExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: constraintsAffectingLayout
    - name: constraintsAffectingLayoutForOrientation:
    - argLabels: for
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: constraintsAffectingLayout(for:)
    - Introduced: 10.12
  */
  @objc (constraintsAffectingLayoutForOrientation:) @available(OSX 10.12, *) func constraintsAffectingLayout(`for`: NSLayoutConstraint.Orientation) -> [NSLayoutConstraint]

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: bottomAnchor
    - name: bottomAnchor
    - argLabels: 
  */
  @objc var bottomAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: centerXAnchor
    - name: centerXAnchor
    - argLabels: 
  */
  @objc var centerXAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: centerYAnchor
    - name: centerYAnchor
    - argLabels: 
  */
  @objc var centerYAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get }

  /**
    - jsName: hasAmbiguousLayout
    - name: hasAmbiguousLayout
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var hasAmbiguousLayout: Bool { @objc get }

  /**
    - jsName: heightAnchor
    - name: heightAnchor
    - argLabels: 
  */
  @objc var heightAnchor: NSLayoutDimension { @objc get }

  /**
    - jsName: leadingAnchor
    - name: leadingAnchor
    - argLabels: 
  */
  @objc var leadingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: leftAnchor
    - name: leftAnchor
    - argLabels: 
  */
  @objc var leftAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: owningView
    - name: owningView
    - argLabels: 
  */
  @objc var owningView: NSView? { @objc get @objc (setOwningView:) set }

  /**
    - jsName: rightAnchor
    - name: rightAnchor
    - argLabels: 
  */
  @objc var rightAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: topAnchor
    - name: topAnchor
    - argLabels: 
  */
  @objc var topAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: trailingAnchor
    - name: trailingAnchor
    - argLabels: 
  */
  @objc var trailingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: widthAnchor
    - name: widthAnchor
    - argLabels: 
  */
  @objc var widthAnchor: NSLayoutDimension { @objc get }
}

extension NSLayoutGuide: NSLayoutGuideExports {
}
