import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScroller
    - name: NSScroller
    - argLabels: 
  */

@objc(NSScroller) protocol NSScrollerExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: scrollerWidth
    - name: scrollerWidthForControlSize:scrollerStyle:
    - argLabels: for, scrollerStyle
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: scrollerWidth(for:scrollerStyle:)
    - Introduced: 10.7
  */
  @objc (scrollerWidthForControlSize:scrollerStyle:) @available(OSX 10.7, *) static func scrollerWidth(`for`: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGFloat

  // Own Static Properties

  /**
    - jsName: isCompatibleWithOverlayScrollers
    - name: compatibleWithOverlayScrollers
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isCompatibleWithOverlayScrollers
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var isCompatibleWithOverlayScrollers: Bool { @objc get }

  /**
    - jsName: preferredScrollerStyle
    - name: preferredScrollerStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var preferredScrollerStyle: NSScroller.Style { @objc get }

  // Instance Methods

  /**
    - jsName: checkSpaceForParts
    - name: checkSpaceForParts
    - argLabels: 
    - constructorTokens: 
  */
  @objc func checkSpaceForParts()

  /**
    - jsName: drawKnob
    - name: drawKnob
    - argLabels: 
    - constructorTokens: 
  */
  @objc func drawKnob()

  /**
    - jsName: drawKnobSlot
    - name: drawKnobSlotInRect:highlight:
    - argLabels: in, highlight
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawKnobSlot(in:highlight:)
  */
  @objc (drawKnobSlotInRect:highlight:) func drawKnobSlot(in: CGRect, highlight: Bool)

  /**
    - jsName: rect
    - name: rectForPart:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rect(for:)
  */
  @objc (rectForPart:) func rect(`for`: NSScroller.Part) -> CGRect

  /**
    - jsName: testPart
    - name: testPart:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func testPart(_: CGPoint) -> NSScroller.Part

  /**
    - jsName: trackKnob
    - name: trackKnob:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: trackKnob(with:)
  */
  @objc (trackKnob:) func trackKnob(with: NSEvent)

  // Own Instance Properties

  /**
    - jsName: hitPart
    - name: hitPart
    - argLabels: 
  */
  @objc var hitPart: NSScroller.Part { @objc get }

  /**
    - jsName: knobProportion
    - name: knobProportion
    - argLabels: 
  */
  @objc var knobProportion: CGFloat { @objc get @objc (setKnobProportion:) set }

  /**
    - jsName: knobStyle
    - name: knobStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var knobStyle: NSScroller.KnobStyle { @objc get @objc (setKnobStyle:) set }

  /**
    - jsName: scrollerStyle
    - name: scrollerStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var scrollerStyle: NSScroller.Style { @objc get @objc (setScrollerStyle:) set }

  /**
    - jsName: usableParts
    - name: usableParts
    - argLabels: 
  */
  @objc var usableParts: NSScroller.UsableParts { @objc get }
}

@objc protocol ScrollerExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(Scroller) public class Scroller: NSScroller, ScrollerExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScroller: NSScrollerExports {
}
