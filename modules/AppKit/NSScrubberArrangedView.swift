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
    - Selector: NSScrubberArrangedView
    - Introduced: 10.12.2
  */

@objc(NSScrubberArrangedView) protocol NSScrubberArrangedViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: applyLayoutAttributes:
  */
  @objc (applyLayoutAttributes:) func apply(_: NSScrubberLayoutAttributes)

  // Own Instance Properties

  /**
    - Selector: highlighted
  */
  @objc var isHighlighted: Bool { @objc get @objc (setHighlighted:) set }

  /**
    - Selector: selected
  */
  @objc var isSelected: Bool { @objc get @objc (setSelected:) set }
}

@objc protocol ScrubberArrangedViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(ScrubberArrangedView) public class ScrubberArrangedView: NSScrubberArrangedView, ScrubberArrangedViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrubberArrangedView: NSScrubberArrangedViewExports {
}
