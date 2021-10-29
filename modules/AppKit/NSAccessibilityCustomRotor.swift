import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSAccessibilityCustomRotor
    - name: NSAccessibilityCustomRotor
    - argLabels: 
    - Introduced: 10.13
  */

@objc(NSAccessibilityCustomRotor) protocol NSAccessibilityCustomRotorExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithLabel
    - name: initWithLabel:itemSearchDelegate:
    - argLabels: itemSearchDelegate
    - constructorTokens: label, itemSearchDelegate
  */
  @objc static func createWithLabel(_: String, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate) -> Self

  /**
    - jsName: createWithRotorType
    - name: initWithRotorType:itemSearchDelegate:
    - argLabels: itemSearchDelegate
    - constructorTokens: rotorType, itemSearchDelegate
  */
  @objc static func createWithRotorType(_: NSAccessibilityCustomRotor.RotorType, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate) -> Self

  // Own Instance Properties

  /**
    - jsName: itemLoadingDelegate
    - name: itemLoadingDelegate
    - argLabels: 
  */
  @objc var itemLoadingDelegate: NSAccessibilityElementLoading? { @objc get @objc (setItemLoadingDelegate:) set }

  /**
    - jsName: itemSearchDelegate
    - name: itemSearchDelegate
    - argLabels: 
  */
  @objc var itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate? { @objc get @objc (setItemSearchDelegate:) set }

  /**
    - jsName: label
    - name: label
    - argLabels: 
  */
  @objc var label: String { @objc get @objc (setLabel:) set }

  /**
    - jsName: type
    - name: type
    - argLabels: 
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
