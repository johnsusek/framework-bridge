import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSlider
    - name: NSSlider
    - argLabels: 
  */

@objc(NSSlider) protocol NSSliderExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: sliderWithValue:minValue:maxValue:target:action:
    - argLabels: value, minValue, maxValue, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(value:minValue:maxValue:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(value: Double, minValue: Double, maxValue: Double) -> Self

  // Instance Methods

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
    - jsName: indexOfTickMark
    - name: indexOfTickMarkAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: indexOfTickMark(at:)
  */
  @objc (indexOfTickMarkAtPoint:) func indexOfTickMark(at: CGPoint) -> Int

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
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sliderType: NSSlider.SliderType { @objc get @objc (setSliderType:) set }

  /**
    - jsName: tickMarkPosition
    - name: tickMarkPosition
    - argLabels: 
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - jsName: trackFillColor
    - name: trackFillColor
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var trackFillColor: NSColor? { @objc get @objc (setTrackFillColor:) set }

  /**
    - jsName: isVertical
    - name: vertical
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: isVertical
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var isVertical: Bool { @objc get }
}

@objc protocol SliderExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: sliderWithValue:minValue:maxValue:target:action:
    - argLabels: value, minValue, maxValue, target, action
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(value:minValue:maxValue:target:action:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(value: Double, minValue: Double, maxValue: Double) -> Self
}

@objc(Slider) public class Slider: NSSlider, SliderExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSSlider: NSSliderExports {
  @objc public static func create(value: Double, minValue: Double, maxValue: Double) -> Self {
    return self.init(value: value, minValue: minValue, maxValue: maxValue, target: nil, action: nil)
  }

}
