import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberTextItemView
    - name: NSScrubberTextItemView
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberTextItemView) protocol NSScrubberTextItemViewExports: JSExport, NSScrubberItemViewExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: textField
    - name: textField
    - argLabels: 
  */
  @objc var textField: NSTextField { @objc get }

  /**
    - jsName: title
    - name: title
    - argLabels: 
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
