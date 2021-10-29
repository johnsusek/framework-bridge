import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSliderCell
    - name: NSSliderCell
    - argLabels: 
  */

@objc(NSSliderCell) protocol NSSliderCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: barRect
    - name: barRectFlipped:
    - argLabels: flipped
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: barRect(flipped:)
    - Introduced: 10.9
  */
  @objc (barRectFlipped:) @available(OSX 10.9, *) func barRect(flipped: Bool) -> CGRect

  /**
    - jsName: closestTickMarkValue
    - name: closestTickMarkValueToValue:
    - argLabels: toValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: closestTickMarkValue(toValue:)
  */
  @objc (closestTickMarkValueToValue:) func closestTickMarkValue(toValue: Double) -> Double

  /**
    - jsName: drawBar
    - name: drawBarInside:flipped:
    - argLabels: inside, flipped
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawBar(inside:flipped:)
  */
  @objc (drawBarInside:flipped:) func drawBar(inside: CGRect, flipped: Bool)

  /**
    - jsName: drawKnob
    - name: drawKnob
    - argLabels: 
    - constructorTokens: 
  */
  @objc func drawKnob()

  /**
    - jsName: drawKnob
    - name: drawKnob:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func drawKnob(_: CGRect)

  /**
    - jsName: drawTickMarks
    - name: drawTickMarks
    - argLabels: 
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func drawTickMarks()

  /**
    - jsName: indexOfTickMark
    - name: indexOfTickMarkAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfTickMark(at:)
  */
  @objc (indexOfTickMarkAtPoint:) func indexOfTickMark(at: CGPoint) -> Int

  /**
    - jsName: knobRect
    - name: knobRectFlipped:
    - argLabels: flipped
    - constructorTokens: 
    - obsoleted: 3
    - renamed: knobRect(flipped:)
  */
  @objc (knobRectFlipped:) func knobRect(flipped: Bool) -> CGRect

  /**
    - jsName: rectOfTickMark
    - name: rectOfTickMarkAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectOfTickMark(at:)
  */
  @objc (rectOfTickMarkAtIndex:) func rectOfTickMark(at: Int) -> CGRect

  /**
    - jsName: tickMarkValue
    - name: tickMarkValueAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tickMarkValue(at:)
  */
  @objc (tickMarkValueAtIndex:) func tickMarkValue(at: Int) -> Double

  // Own Instance Properties

  /**
    - jsName: allowsTickMarkValuesOnly
    - name: allowsTickMarkValuesOnly
    - argLabels: 
  */
  @objc var allowsTickMarkValuesOnly: Bool { @objc get @objc (setAllowsTickMarkValuesOnly:) set }

  /**
    - jsName: altIncrementValue
    - name: altIncrementValue
    - argLabels: 
  */
  @objc var altIncrementValue: Double { @objc get @objc (setAltIncrementValue:) set }

  /**
    - jsName: knobThickness
    - name: knobThickness
    - argLabels: 
  */
  @objc var knobThickness: CGFloat { @objc get }

  /**
    - jsName: maxValue
    - name: maxValue
    - argLabels: 
  */
  @objc var maxValue: Double { @objc get @objc (setMaxValue:) set }

  /**
    - jsName: minValue
    - name: minValue
    - argLabels: 
  */
  @objc var minValue: Double { @objc get @objc (setMinValue:) set }

  /**
    - jsName: numberOfTickMarks
    - name: numberOfTickMarks
    - argLabels: 
  */
  @objc var numberOfTickMarks: Int { @objc get @objc (setNumberOfTickMarks:) set }

  /**
    - jsName: sliderType
    - name: sliderType
    - argLabels: 
  */
  @objc var sliderType: NSSlider.SliderType { @objc get @objc (setSliderType:) set }

  /**
    - jsName: tickMarkPosition
    - name: tickMarkPosition
    - argLabels: 
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - jsName: trackRect
    - name: trackRect
    - argLabels: 
  */
  @objc var trackRect: CGRect { @objc get }

  /**
    - jsName: isVertical
    - name: vertical
    - argLabels: 
    - available: 10.11
    - obsoleted: 3
    - renamed: isVertical
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var isVertical: Bool { @objc get }
}

extension NSSliderCell: NSSliderCellExports {
}
