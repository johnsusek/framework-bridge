import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSAccessibilityCustomRotor
    - Introduced: 10.13
  */

@objc(NSAccessibilityCustomRotor) protocol NSAccessibilityCustomRotorExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithLabel:itemSearchDelegate:
  */
  @objc static func createWithLabel(_: String, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate) -> Self

  /**
    - Selector: initWithRotorType:itemSearchDelegate:
  */
  @objc static func createWithRotorType(_: NSAccessibilityCustomRotor.RotorType, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate) -> Self

  // Own Instance Properties

  /**
    - Selector: itemLoadingDelegate
  */
  @objc var itemLoadingDelegate: NSAccessibilityElementLoading? { @objc get @objc (setItemLoadingDelegate:) set }

  /**
    - Selector: itemSearchDelegate
  */
  @objc var itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate? { @objc get @objc (setItemSearchDelegate:) set }

  /**
    - Selector: label
  */
  @objc var label: String { @objc get @objc (setLabel:) set }

  /**
    - Selector: type
  */
  @objc var type: NSAccessibilityCustomRotor.RotorType { @objc get @objc (setType:) set }
}

extension NSAccessibilityCustomRotor: NSAccessibilityCustomRotorExports {
  @objc public static func createWithLabel(_ label: String, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate) -> Self {
    return self.init(label: label, itemSearchDelegate: itemSearchDelegate)
  }

  @objc public static func createWithRotorType(_ rotorType: NSAccessibilityCustomRotor.RotorType, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate) -> Self {
    return self.init(rotorType: rotorType, itemSearchDelegate: itemSearchDelegate)
  }

}
