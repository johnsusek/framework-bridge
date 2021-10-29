import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberArrangedView
    - name: NSScrubberArrangedView
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberArrangedView) protocol NSScrubberArrangedViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: apply
    - name: applyLayoutAttributes:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: apply(_:)
  */
  @objc (applyLayoutAttributes:) func apply(_: NSScrubberLayoutAttributes)

  // Own Instance Properties

  /**
    - jsName: isHighlighted
    - name: highlighted
    - argLabels: 
    - obsoleted: 3
    - renamed: isHighlighted
  */
  @objc var isHighlighted: Bool { @objc get @objc (setHighlighted:) set }

  /**
    - jsName: isSelected
    - name: selected
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelected
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
