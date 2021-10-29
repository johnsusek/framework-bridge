import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberItemView
    - name: NSScrubberItemView
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberItemView) protocol NSScrubberItemViewExports: JSExport, NSScrubberArrangedViewExports {
  // Static Methods
}

@objc protocol ScrubberItemViewExports: JSExport, NSScrubberArrangedViewExports {
  // Static Methods
}

@objc(ScrubberItemView) public class ScrubberItemView: NSScrubberItemView, ScrubberItemViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrubberItemView: NSScrubberItemViewExports {
}
