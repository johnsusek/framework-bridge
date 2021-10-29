import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStepperTouchBarItem
    - name: NSStepperTouchBarItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSStepperTouchBarItem) protocol NSStepperTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: stepperTouchBarItemWithIdentifier:drawingHandler:
    - argLabels: identifier, drawingHandler
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:drawingHandler:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, drawingHandler: JSValue) -> Self

  /**
    - jsName: create
    - name: stepperTouchBarItemWithIdentifier:formatter:
    - argLabels: identifier, formatter
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:formatter:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, formatter: Formatter) -> Self

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: customizationLabel
    - name: customizationLabel
    - argLabels: 
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

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
    - jsName: target
    - name: target
    - argLabels: 
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - jsName: value
    - name: value
    - argLabels: 
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
