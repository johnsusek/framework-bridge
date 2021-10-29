import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLevelIndicator
    - name: NSLevelIndicator
    - argLabels: 
  */

@objc(NSLevelIndicator) protocol NSLevelIndicatorExports: JSExport, NSControlExports {
  // Static Methods

  // Instance Methods

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
    - jsName: criticalFillColor
    - name: criticalFillColor
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var criticalFillColor: NSColor! { @objc get @objc (setCriticalFillColor:) set }

  /**
    - jsName: criticalValue
    - name: criticalValue
    - argLabels: 
  */
  @objc var criticalValue: Double { @objc get @objc (setCriticalValue:) set }

  /**
    - jsName: drawsTieredCapacityLevels
    - name: drawsTieredCapacityLevels
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var drawsTieredCapacityLevels: Bool { @objc get @objc (setDrawsTieredCapacityLevels:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - available: 10.13
    - obsoleted: 3
    - renamed: isEditable
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: fillColor
    - name: fillColor
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var fillColor: NSColor! { @objc get @objc (setFillColor:) set }

  /**
    - jsName: levelIndicatorStyle
    - name: levelIndicatorStyle
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var levelIndicatorStyle: NSLevelIndicator.Style { @objc get @objc (setLevelIndicatorStyle:) set }

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
    - jsName: numberOfMajorTickMarks
    - name: numberOfMajorTickMarks
    - argLabels: 
  */
  @objc var numberOfMajorTickMarks: Int { @objc get @objc (setNumberOfMajorTickMarks:) set }

  /**
    - jsName: numberOfTickMarks
    - name: numberOfTickMarks
    - argLabels: 
  */
  @objc var numberOfTickMarks: Int { @objc get @objc (setNumberOfTickMarks:) set }

  /**
    - jsName: placeholderVisibility
    - name: placeholderVisibility
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var placeholderVisibility: NSLevelIndicator.PlaceholderVisibility { @objc get @objc (setPlaceholderVisibility:) set }

  /**
    - jsName: ratingImage
    - name: ratingImage
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var ratingImage: NSImage? { @objc get @objc (setRatingImage:) set }

  /**
    - jsName: ratingPlaceholderImage
    - name: ratingPlaceholderImage
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var ratingPlaceholderImage: NSImage? { @objc get @objc (setRatingPlaceholderImage:) set }

  /**
    - jsName: tickMarkPosition
    - name: tickMarkPosition
    - argLabels: 
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - jsName: warningFillColor
    - name: warningFillColor
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var warningFillColor: NSColor! { @objc get @objc (setWarningFillColor:) set }

  /**
    - jsName: warningValue
    - name: warningValue
    - argLabels: 
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
