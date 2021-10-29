import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberLayoutAttributes
    - name: NSScrubberLayoutAttributes
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberLayoutAttributes) protocol NSScrubberLayoutAttributesExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: layoutAttributesForItemAtIndex:
    - argLabels: forItemAt
    - constructorTokens: 
    - unavailable: true
    - renamed: init(forItemAt:)
    - message: Not available in Swift
  */
  @objc static func create(forItemAt: Int) -> Self

  // Own Instance Properties

  /**
    - jsName: alpha
    - name: alpha
    - argLabels: 
  */
  @objc var alpha: CGFloat { @objc get @objc (setAlpha:) set }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - jsName: itemIndex
    - name: itemIndex
    - argLabels: 
  */
  @objc var itemIndex: Int { @objc get @objc (setItemIndex:) set }
}

extension NSScrubberLayoutAttributes: NSScrubberLayoutAttributesExports {
  @objc public static func create(forItemAt: Int) -> Self {
    return self.init(forItemAt: forItemAt)
  }

}
