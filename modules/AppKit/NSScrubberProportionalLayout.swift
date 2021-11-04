import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScrubberProportionalLayout
    - Introduced: 10.12.2
  */

@objc(NSScrubberProportionalLayout) protocol NSScrubberProportionalLayoutExports: JSExport, NSScrubberLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithNumberOfVisibleItems:
  */
  @objc static func createWithNumberOfVisibleItems(_: Int) -> Self

  // Own Instance Properties

  /**
    - Selector: numberOfVisibleItems
  */
  @objc var numberOfVisibleItems: Int { @objc get @objc (setNumberOfVisibleItems:) set }
}

extension NSScrubberProportionalLayout: NSScrubberProportionalLayoutExports {
  @objc public static func createWithNumberOfVisibleItems(_ numberOfVisibleItems: Int) -> Self {
    return self.init(numberOfVisibleItems: numberOfVisibleItems)
  }

}
