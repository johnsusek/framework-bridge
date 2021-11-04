import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSLevelIndicator
  */

@objc(NSLevelIndicator) protocol NSLevelIndicatorExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

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
    - Selector: criticalFillColor
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var criticalFillColor: NSColor! { @objc get @objc (setCriticalFillColor:) set }

  /**
    - Selector: criticalValue
  */
  @objc var criticalValue: Double { @objc get @objc (setCriticalValue:) set }

  /**
    - Selector: drawsTieredCapacityLevels
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var drawsTieredCapacityLevels: Bool { @objc get @objc (setDrawsTieredCapacityLevels:) set }

  /**
    - Selector: editable
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: fillColor
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var fillColor: NSColor! { @objc get @objc (setFillColor:) set }

  /**
    - Selector: levelIndicatorStyle
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var levelIndicatorStyle: NSLevelIndicator.Style { @objc get @objc (setLevelIndicatorStyle:) set }

  /**
    - Selector: maxValue
  */
  @objc var maxValue: Double { @objc get @objc (setMaxValue:) set }

  /**
    - Selector: minValue
  */
  @objc var minValue: Double { @objc get @objc (setMinValue:) set }

  /**
    - Selector: numberOfMajorTickMarks
  */
  @objc var numberOfMajorTickMarks: Int { @objc get @objc (setNumberOfMajorTickMarks:) set }

  /**
    - Selector: numberOfTickMarks
  */
  @objc var numberOfTickMarks: Int { @objc get @objc (setNumberOfTickMarks:) set }

  /**
    - Selector: placeholderVisibility
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var placeholderVisibility: NSLevelIndicator.PlaceholderVisibility { @objc get @objc (setPlaceholderVisibility:) set }

  /**
    - Selector: ratingImage
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var ratingImage: NSImage? { @objc get @objc (setRatingImage:) set }

  /**
    - Selector: ratingPlaceholderImage
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var ratingPlaceholderImage: NSImage? { @objc get @objc (setRatingPlaceholderImage:) set }

  /**
    - Selector: tickMarkPosition
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - Selector: warningFillColor
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var warningFillColor: NSColor! { @objc get @objc (setWarningFillColor:) set }

  /**
    - Selector: warningValue
  */
  @objc var warningValue: Double { @objc get @objc (setWarningValue:) set }
}

@objc protocol LevelIndicatorExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(LevelIndicator) public class LevelIndicator: NSLevelIndicator, LevelIndicatorExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSLevelIndicator: NSLevelIndicatorExports {
}
