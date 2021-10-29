import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutEdgeSpacing
    - name: NSCollectionLayoutEdgeSpacing
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutEdgeSpacing) protocol NSCollectionLayoutEdgeSpacingExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: spacingForLeading:top:trailing:bottom:
    - argLabels: leading, top, trailing, bottom
    - constructorTokens: 
    - unavailable: true
    - renamed: init(leading:top:trailing:bottom:)
    - message: Not available in Swift
  */
  @objc static func create(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?) -> Self

  // Own Instance Properties

  /**
    - jsName: bottom
    - name: bottom
    - argLabels: 
  */
  @objc var bottom: NSCollectionLayoutSpacing? { @objc get }

  /**
    - jsName: leading
    - name: leading
    - argLabels: 
  */
  @objc var leading: NSCollectionLayoutSpacing? { @objc get }

  /**
    - jsName: top
    - name: top
    - argLabels: 
  */
  @objc var top: NSCollectionLayoutSpacing? { @objc get }

  /**
    - jsName: trailing
    - name: trailing
    - argLabels: 
  */
  @objc var trailing: NSCollectionLayoutSpacing? { @objc get }
}

extension NSCollectionLayoutEdgeSpacing: NSCollectionLayoutEdgeSpacingExports {
  @objc public static func create(leading: NSCollectionLayoutSpacing?, top: NSCollectionLayoutSpacing?, trailing: NSCollectionLayoutSpacing?, bottom: NSCollectionLayoutSpacing?) -> Self {
    return self.init(leading: leading, top: top, trailing: trailing, bottom: bottom)
  }

}
