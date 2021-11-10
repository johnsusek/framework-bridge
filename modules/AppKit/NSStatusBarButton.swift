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

@objc protocol StatusBarButtonExports: JSExport, NSButtonExports {
  // Static Methods
}

@objc(StatusBarButton) public class StatusBarButton: NSStatusBarButton, StatusBarButtonExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSStatusBarButton: NSStatusBarButtonExports {
}
