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
    - Selector: NSSlider
  */

@objc(NSSlider) protocol NSSliderExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: sliderWithValue:minValue:maxValue:target:action:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithValue_MinValue_MaxValue(_ value: Double, _ minValue: Double, _ maxValue: Double) -> Self

  // Instance Methods

  /**
    - Selector: closestTickMarkValueToValue:
  */
  @objc (closestTickMarkValueToValue:) func closestTickMarkValue(toValue: Double) -> Double

  /**
    - Selector: indexOfTickMarkAtPoint:
  */
  @objc (indexOfTickMarkAtPoint:) func indexOfTickMark(at: CGPoint) -> Int

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
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sliderType: NSSlider.SliderType { @objc get @objc (setSliderType:) set }

  /**
    - Selector: tickMarkPosition
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - Selector: trackFillColor
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var trackFillColor: NSColor? { @objc get @objc (setTrackFillColor:) set }

  /**
    - Selector: vertical
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var isVertical: Bool { @objc get }
}

extension NSSlider: NSSliderExports {

  /**
    - Selector: sliderWithValue:minValue:maxValue:target:action:
    - Introduced: 10.12
  */
  @objc public static func createWithValue_MinValue_MaxValue(_ value: Double, _ minValue: Double, _ maxValue: Double) -> Self {
    return self.init(value: value, minValue: minValue, maxValue: maxValue, target: nil, action: nil)
  }

}
