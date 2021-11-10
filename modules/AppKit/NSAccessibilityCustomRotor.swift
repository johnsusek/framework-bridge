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
    - Selector: NSAccessibilityCustomRotor
    - Introduced: 10.13
  */

@objc(NSAccessibilityCustomRotor) protocol NSAccessibilityCustomRotorExports: JSExport, NSObjectExports {
  // Static Methods

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
}
