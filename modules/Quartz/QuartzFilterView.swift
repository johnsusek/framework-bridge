import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Quartz

// Interface 

  /**
    - Selector: QuartzFilterView
  */

@objc(QuartzFilterView) protocol QuartzFilterViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: sizeToFit
  */
  @objc func sizeToFit()
}

@objc protocol artzFilterViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(artzFilterView) public class artzFilterView: QuartzFilterView, artzFilterViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension QuartzFilterView: QuartzFilterViewExports {
}
