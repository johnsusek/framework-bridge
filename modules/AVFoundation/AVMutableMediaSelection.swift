import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVFoundation

// Interface 

  /**
    - Selector: AVMutableMediaSelection
    - Introduced: 10.11
  */

@objc(AVMutableMediaSelection) protocol AVMutableMediaSelectionExports: JSExport, AVMediaSelectionExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: selectMediaOption:inMediaSelectionGroup:
  */
  @objc (selectMediaOption:inMediaSelectionGroup:) func select(_ p0: AVMediaSelectionOption?, in: AVMediaSelectionGroup)
}

extension AVMutableMediaSelection: AVMutableMediaSelectionExports {
}
