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
    - Selector: NSColorWell
  */

@objc(NSColorWell) protocol NSColorWellExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: activate:
  */
  @objc func activate(_: Bool)

  /**
    - Selector: deactivate
  */
  @objc func deactivate()

  /**
    - Selector: drawWellInside:
  */
  @objc (drawWellInside:) func drawWell(inside: CGRect)

  /**
    - Selector: takeColorFrom:
  */
  @objc func takeColorFrom(_: Any?)

  // Own Instance Properties

  /**
    - Selector: active
  */
  @objc var isActive: Bool { @objc get }

  /**
    - Selector: bordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - Selector: color
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }
}

@objc protocol ColorWellExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(ColorWell) public class ColorWell: NSColorWell, ColorWellExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSColorWell: NSColorWellExports {
}
