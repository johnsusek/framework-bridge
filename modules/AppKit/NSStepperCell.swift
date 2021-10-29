import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStepperCell
    - name: NSStepperCell
    - argLabels: 
  */

@objc(NSStepperCell) protocol NSStepperCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: autorepeat
    - name: autorepeat
    - argLabels: 
  */
  @objc var autorepeat: Bool { @objc get @objc (setAutorepeat:) set }

  /**
    - jsName: increment
    - name: increment
    - argLabels: 
  */
  @objc var increment: Double { @objc get @objc (setIncrement:) set }

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
    - jsName: valueWraps
    - name: valueWraps
    - argLabels: 
  */
  @objc var valueWraps: Bool { @objc get @objc (setValueWraps:) set }
}

extension NSStepperCell: NSStepperCellExports {
}
