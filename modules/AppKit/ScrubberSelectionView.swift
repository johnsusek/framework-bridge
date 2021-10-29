import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberSelectionView
    - name: NSScrubberSelectionView
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberSelectionView) protocol NSScrubberSelectionViewExports: JSExport, NSScrubberArrangedViewExports {
  // Static Methods
}

@objc protocol ScrubberSelectionViewExports: JSExport, NSScrubberArrangedViewExports {
  // Static Methods
}

@objc(ScrubberSelectionView) public class ScrubberSelectionView: NSScrubberSelectionView, ScrubberSelectionViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrubberSelectionView: NSScrubberSelectionViewExports {
}
