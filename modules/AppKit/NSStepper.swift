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
    - Selector: NSStepper
  */

@objc(NSStepper) protocol NSStepperExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: autorepeat
  */
  @objc var autorepeat: Bool { @objc get @objc (setAutorepeat:) set }

  /**
    - Selector: increment
  */
  @objc var increment: Double { @objc get @objc (setIncrement:) set }

  /**
    - Selector: maxValue
  */
  @objc var maxValue: Double { @objc get @objc (setMaxValue:) set }

  /**
    - Selector: minValue
  */
  @objc var minValue: Double { @objc get @objc (setMinValue:) set }

  /**
    - Selector: valueWraps
  */
  @objc var valueWraps: Bool { @objc get @objc (setValueWraps:) set }
}

extension NSStepper: NSStepperExports {
}
