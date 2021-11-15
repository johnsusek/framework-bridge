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
    - Selector: NSStatusBarButton
    - Introduced: 10.10
  */

@objc(NSStatusBarButton) protocol NSStatusBarButtonExports: JSExport, NSButtonExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: appearsDisabled
  */
  @objc var appearsDisabled: Bool { @objc get @objc (setAppearsDisabled:) set }
}

extension NSStatusBarButton: NSStatusBarButtonExports {
}
