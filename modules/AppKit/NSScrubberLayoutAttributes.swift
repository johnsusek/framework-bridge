import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScrubberLayoutAttributes
    - Introduced: 10.12.2
  */

@objc(NSScrubberLayoutAttributes) protocol NSScrubberLayoutAttributesExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: layoutAttributesForItemAtIndex:
  */
  @objc static func create(forItemAt: Int) -> Self

  // Own Instance Properties

  /**
    - Selector: alpha
  */
  @objc var alpha: CGFloat { @objc get @objc (setAlpha:) set }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - Selector: itemIndex
  */
  @objc var itemIndex: Int { @objc get @objc (setItemIndex:) set }
}

extension NSScrubberLayoutAttributes: NSScrubberLayoutAttributesExports {
  @objc public static func create(forItemAt: Int) -> Self {
    return self.init(forItemAt: forItemAt)
  }

}
