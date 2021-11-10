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
    - Selector: NSScrubberProportionalLayout
    - Introduced: 10.12.2
  */

@objc(NSScrubberProportionalLayout) protocol NSScrubberProportionalLayoutExports: JSExport, NSScrubberLayoutExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: numberOfVisibleItems
  */
  @objc var numberOfVisibleItems: Int { @objc get @objc (setNumberOfVisibleItems:) set }
}

extension NSScrubberProportionalLayout: NSScrubberProportionalLayoutExports {
}
