import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutSpacing
    - name: NSCollectionLayoutSpacing
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSpacing) protocol NSCollectionLayoutSpacingExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: fixed
    - name: fixedSpacing:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: fixed(_:)
  */
  @objc static func fixed(_: CGFloat) -> Self

  /**
    - jsName: flexible
    - name: flexibleSpacing:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: flexible(_:)
  */
  @objc static func flexible(_: CGFloat) -> Self

  // Own Instance Properties

  /**
    - jsName: isFixed
    - name: isFixedSpacing
    - argLabels: 
    - obsoleted: 3
    - renamed: isFixed
  */
  @objc var isFixed: Bool { @objc (isFixedSpacing) get }

  /**
    - jsName: isFlexible
    - name: isFlexibleSpacing
    - argLabels: 
    - obsoleted: 3
    - renamed: isFlexible
  */
  @objc var isFlexible: Bool { @objc (isFlexibleSpacing) get }

  /**
    - jsName: spacing
    - name: spacing
    - argLabels: 
  */
  @objc var spacing: CGFloat { @objc get }
}

extension NSCollectionLayoutSpacing: NSCollectionLayoutSpacingExports {
  @objc public static func fixed(_ p0: CGFloat) -> Self {
    return self.fixed(p0)
  }

  @objc public static func flexible(_ p0: CGFloat) -> Self {
    return self.flexible(p0)
  }

}
