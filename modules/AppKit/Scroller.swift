import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScroller
  */

@objc(NSScroller) protocol NSScrollerExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: scrollerWidthForControlSize:scrollerStyle:
    - Introduced: 10.7
  */
  @objc (scrollerWidthForControlSize:scrollerStyle:) @available(OSX 10.7, *) static func scrollerWidth(`for`: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGFloat

  // Own Static Properties

  /**
    - Selector: compatibleWithOverlayScrollers
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var isCompatibleWithOverlayScrollers: Bool { @objc get }

  /**
    - Selector: preferredScrollerStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var preferredScrollerStyle: NSScroller.Style { @objc get }

  // Instance Methods

  /**
    - Selector: checkSpaceForParts
  */
  @objc func checkSpaceForParts()

  /**
    - Selector: drawKnob
  */
  @objc func drawKnob()

  /**
    - Selector: drawKnobSlotInRect:highlight:
  */
  @objc (drawKnobSlotInRect:highlight:) func drawKnobSlot(in: CGRect, highlight: Bool)

  /**
    - Selector: rectForPart:
  */
  @objc (rectForPart:) func rect(`for`: NSScroller.Part) -> CGRect

  /**
    - Selector: testPart:
  */
  @objc func testPart(_: CGPoint) -> NSScroller.Part

  /**
    - Selector: trackKnob:
  */
  @objc (trackKnob:) func trackKnob(with: NSEvent)

  // Own Instance Properties

  /**
    - Selector: hitPart
  */
  @objc var hitPart: NSScroller.Part { @objc get }

  /**
    - Selector: knobProportion
  */
  @objc var knobProportion: CGFloat { @objc get @objc (setKnobProportion:) set }

  /**
    - Selector: knobStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var knobStyle: NSScroller.KnobStyle { @objc get @objc (setKnobStyle:) set }

  /**
    - Selector: scrollerStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var scrollerStyle: NSScroller.Style { @objc get @objc (setScrollerStyle:) set }

  /**
    - Selector: usableParts
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
