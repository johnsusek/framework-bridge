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
    - Selector: NSSliderCell
  */

@objc(NSSliderCell) protocol NSSliderCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: barRectFlipped:
    - Introduced: 10.9
  */
  @objc (barRectFlipped:) @available(OSX 10.9, *) func barRect(flipped: Bool) -> CGRect

  /**
    - Selector: closestTickMarkValueToValue:
  */
  @objc (closestTickMarkValueToValue:) func closestTickMarkValue(toValue: Double) -> Double

  /**
    - Selector: drawBarInside:flipped:
  */
  @objc (drawBarInside:flipped:) func drawBar(inside: CGRect, flipped: Bool)

  /**
    - Selector: drawKnob
  */
  @objc func drawKnob()

  /**
    - Selector: drawKnob:
  */
  @objc func drawKnob(_ p0: CGRect)

  /**
    - Selector: drawTickMarks
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func drawTickMarks()

  /**
    - Selector: indexOfTickMarkAtPoint:
  */
  @objc (indexOfTickMarkAtPoint:) func indexOfTickMark(at: CGPoint) -> Int

  /**
    - Selector: knobRectFlipped:
  */
  @objc (knobRectFlipped:) func knobRect(flipped: Bool) -> CGRect

  /**
    - Selector: rectOfTickMarkAtIndex:
  */
  @objc (rectOfTickMarkAtIndex:) func rectOfTickMark(at: Int) -> CGRect

  /**
    - Selector: tickMarkValueAtIndex:
  */
  @objc (tickMarkValueAtIndex:) func tickMarkValue(at: Int) -> Double

  // Own Instance Properties

  /**
    - Selector: allowsTickMarkValuesOnly
  */
  @objc var allowsTickMarkValuesOnly: Bool { @objc get @objc (setAllowsTickMarkValuesOnly:) set }

  /**
    - Selector: altIncrementValue
  */
  @objc var altIncrementValue: Double { @objc get @objc (setAltIncrementValue:) set }

  /**
    - Selector: knobThickness
  */
  @objc var knobThickness: CGFloat { @objc get }

  /**
    - Selector: maxValue
  */
  @objc var maxValue: Double { @objc get @objc (setMaxValue:) set }

  /**
    - Selector: minValue
  */
  @objc var minValue: Double { @objc get @objc (setMinValue:) set }

  /**
    - Selector: numberOfTickMarks
  */
  @objc var numberOfTickMarks: Int { @objc get @objc (setNumberOfTickMarks:) set }

  /**
    - Selector: sliderType
  */
  @objc var sliderType: NSSlider.SliderType { @objc get @objc (setSliderType:) set }

  /**
    - Selector: tickMarkPosition
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - Selector: trackRect
  */
  @objc var trackRect: CGRect { @objc get }

  /**
    - Selector: vertical
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var isVertical: Bool { @objc get }
}

extension NSSliderCell: NSSliderCellExports {
}
