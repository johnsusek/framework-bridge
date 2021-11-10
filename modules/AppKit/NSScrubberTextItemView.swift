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
    - Selector: NSScrubberTextItemView
    - Introduced: 10.12.2
  */

@objc(NSScrubberTextItemView) protocol NSScrubberTextItemViewExports: JSExport, NSScrubberItemViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: textField
  */
  @objc var textField: NSTextField { @objc get }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }
}

@objc protocol ScrubberTextItemViewExports: JSExport, NSScrubberItemViewExports {
  // Static Methods
}

@objc(ScrubberTextItemView) public class ScrubberTextItemView: NSScrubberTextItemView, ScrubberTextItemViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrubberTextItemView: NSScrubberTextItemViewExports {
}
