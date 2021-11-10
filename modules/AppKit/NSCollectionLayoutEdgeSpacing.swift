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
    - Selector: NSCollectionLayoutEdgeSpacing
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutEdgeSpacing) protocol NSCollectionLayoutEdgeSpacingExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: spacingForLeading:top:trailing:bottom:
  */
  @objc static func createWithSpacingForLeadingWithTopWithTrailingWithBottom(_ leading: NSCollectionLayoutSpacing?, _ top: NSCollectionLayoutSpacing?, _ trailing: NSCollectionLayoutSpacing?, _ bottom: NSCollectionLayoutSpacing?) -> Self

  // Own Instance Properties

  /**
    - Selector: bottom
  */
  @objc var bottom: NSCollectionLayoutSpacing? { @objc get }

  /**
    - Selector: leading
  */
  @objc var leading: NSCollectionLayoutSpacing? { @objc get }

  /**
    - Selector: top
  */
  @objc var top: NSCollectionLayoutSpacing? { @objc get }

  /**
    - Selector: trailing
  */
  @objc var trailing: NSCollectionLayoutSpacing? { @objc get }
}

extension NSCollectionLayoutEdgeSpacing: NSCollectionLayoutEdgeSpacingExports {

  /**
    - Selector: spacingForLeading:top:trailing:bottom:
  */
  @objc public static func createWithSpacingForLeadingWithTopWithTrailingWithBottom(_ leading: NSCollectionLayoutSpacing?, _ top: NSCollectionLayoutSpacing?, _ trailing: NSCollectionLayoutSpacing?, _ bottom: NSCollectionLayoutSpacing?) -> Self {
    return self.init(leading: leading, top: top, trailing: trailing, bottom: bottom)
  }

}
