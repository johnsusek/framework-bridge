import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSStepperTouchBarItem
    - Introduced: 10.15
  */

@objc(NSStepperTouchBarItem) protocol NSStepperTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - Selector: stepperTouchBarItemWithIdentifier:drawingHandler:
  */
// jsvalue   @objc static func create(identifier: NSTouchBarItem.Identifier, drawingHandler: JSValue) -> Self

  /**
    - Selector: stepperTouchBarItemWithIdentifier:formatter:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, formatter: Formatter) -> Self

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

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
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - Selector: value
  */
  @objc var value: Double { @objc get @objc (setValue:) set }
}

extension NSStepperTouchBarItem: NSStepperTouchBarItemExports {
  @objc public static func create(identifier: NSTouchBarItem.Identifier, drawingHandler: JSValue) -> Self {
    return self.init(identifier: identifier, drawingHandler: { p1, p2 in
      drawingHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
    })
  }

  @objc public static func create(identifier: NSTouchBarItem.Identifier, formatter: Formatter) -> Self {
    return self.init(identifier: identifier, formatter: formatter)
  }

}
