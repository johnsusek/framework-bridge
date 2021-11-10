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
    - Selector: NSLevelIndicatorCell
  */

@objc(NSLevelIndicatorCell) protocol NSLevelIndicatorCellExports: JSExport, NSActionCellExports {
  // Static Methods

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
    - Selector: criticalValue
  */
  @objc var criticalValue: Double { @objc get @objc (setCriticalValue:) set }

  /**
    - Selector: levelIndicatorStyle
  */
  @objc var levelIndicatorStyle: NSLevelIndicator.Style { @objc get @objc (setLevelIndicatorStyle:) set }

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
    - Selector: tickMarkPosition
  */
  @objc var tickMarkPosition: NSSlider.TickMarkPosition { @objc get @objc (setTickMarkPosition:) set }

  /**
    - Selector: warningValue
  */
  @objc var warningValue: Double { @objc get @objc (setWarningValue:) set }
}

extension NSLevelIndicatorCell: NSLevelIndicatorCellExports {
}
