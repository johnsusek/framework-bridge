import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSLevelIndicatorCell
    - name: NSLevelIndicatorCell
    - argLabels: 
  */

@objc(NSLevelIndicatorCell) protocol NSLevelIndicatorCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithLevelIndicatorStyle
    - name: initWithLevelIndicatorStyle:
    - argLabels: 
    - constructorTokens: levelIndicatorStyle
  */
  @objc static func createWithLevelIndicatorStyle(_: NSLevelIndicator.Style) -> Self

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
    - jsName: criticalValue
    - name: criticalValue
    - argLabels: 
  */
  @objc var criticalValue: Double { @objc get @objc (setCriticalValue:) set }

  /**
    - jsName: levelIndicatorStyle
    - name: levelIndicatorStyle
    - argLabels: 
  */
  @objc var levelIndicatorStyle: NSLevelIndicator.Style { @objc get @objc (setLevelIndicatorStyle:) set }

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
    - jsName: tickMarkPosition
    - name: tickMarkPosition
    - argLabels: 
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - jsName: warningValue
    - name: warningValue
    - argLabels: 
  */
  @objc var warningValue: Double { @objc get @objc (setWarningValue:) set }
}

extension NSLevelIndicatorCell: NSLevelIndicatorCellExports {
  @objc public static func createWithLevelIndicatorStyle(_ levelIndicatorStyle: NSLevelIndicator.Style) -> Self {
    return self.init(levelIndicatorStyle: levelIndicatorStyle)
  }

}
