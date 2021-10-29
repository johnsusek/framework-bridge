import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberProportionalLayout
    - name: NSScrubberProportionalLayout
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberProportionalLayout) protocol NSScrubberProportionalLayoutExports: JSExport, NSScrubberLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithNumberOfVisibleItems
    - name: initWithNumberOfVisibleItems:
    - argLabels: 
    - constructorTokens: numberOfVisibleItems
  */
  @objc static func createWithNumberOfVisibleItems(_: Int) -> Self

  // Own Instance Properties

  /**
    - jsName: numberOfVisibleItems
    - name: numberOfVisibleItems
    - argLabels: 
  */
  @objc var numberOfVisibleItems: Int { @objc get @objc (setNumberOfVisibleItems:) set }
}

extension NSScrubberProportionalLayout: NSScrubberProportionalLayoutExports {
  @objc public static func createWithNumberOfVisibleItems(_ numberOfVisibleItems: Int) -> Self {
    return self.init(numberOfVisibleItems: numberOfVisibleItems)
  }

}
