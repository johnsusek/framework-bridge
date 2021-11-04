import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSliderAccessoryBehavior
    - Introduced: 10.12
  */

@objc(NSSliderAccessoryBehavior) protocol NSSliderAccessoryBehaviorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: behaviorWithHandler:
  */
// jsvalue   @objc static func create(handler: JSValue) -> NSSliderAccessoryBehavior

  // Own Static Properties

  /**
    - Selector: automaticBehavior
  */
  @objc static var automatic: NSSliderAccessoryBehavior { @objc (automaticBehavior) get }

  /**
    - Selector: valueResetBehavior
  */
  @objc static var valueReset: NSSliderAccessoryBehavior { @objc (valueResetBehavior) get }

  /**
    - Selector: valueStepBehavior
  */
  @objc static var valueStep: NSSliderAccessoryBehavior { @objc (valueStepBehavior) get }

  // Instance Methods

  /**
    - Selector: handleAction:
  */
  @objc func handleAction(_: NSSliderAccessory)
}

extension NSSliderAccessoryBehavior: NSSliderAccessoryBehaviorExports {
  @objc public static func create(handler: JSValue) -> NSSliderAccessoryBehavior {
    return self.init(handler: { p1 in
      handler.call(withArguments: [p1 as AnyObject])!
    })
  }

}
