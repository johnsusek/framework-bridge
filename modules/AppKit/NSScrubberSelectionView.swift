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
    - Selector: NSScrubberSelectionView
    - Introduced: 10.12.2
  */

@objc(NSScrubberSelectionView) protocol NSScrubberSelectionViewExports: JSExport, NSScrubberArrangedViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?
}

extension NSScrubberSelectionView: NSScrubberSelectionViewExports {
}
