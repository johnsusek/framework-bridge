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
    - Selector: NSStepperTouchBarItem
    - Introduced: 10.15
  */

@objc(NSStepperTouchBarItem) protocol NSStepperTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - Selector: stepperTouchBarItemWithIdentifier:drawingHandler:
  */
// jsvalue   @objc static func createWithIdentifierWithDrawingHandler(_ identifier: NSTouchBarItem.Identifier, _ drawingHandler: JSValue) -> Self

  /**
    - Selector: stepperTouchBarItemWithIdentifier:formatter:
  */
  @objc static func createWithIdentifierWithFormatter(_ identifier: NSTouchBarItem.Identifier, _ formatter: Formatter) -> Self

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

  /**
    - Selector: stepperTouchBarItemWithIdentifier:drawingHandler:
  */
  @objc public static func createWithIdentifierWithDrawingHandler(_ identifier: NSTouchBarItem.Identifier, _ drawingHandler: JSValue) -> Self {
    return self.init(identifier: identifier, drawingHandler: { p1, p2 in
      drawingHandler.call(withArguments: [p1 as AnyObject, p2 as AnyObject])
    })
  }


  /**
    - Selector: stepperTouchBarItemWithIdentifier:formatter:
  */
  @objc public static func createWithIdentifierWithFormatter(_ identifier: NSTouchBarItem.Identifier, _ formatter: Formatter) -> Self {
    return self.init(identifier: identifier, formatter: formatter)
  }

}
