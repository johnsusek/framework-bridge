import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSliderAccessoryBehavior
    - name: NSSliderAccessoryBehavior
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSSliderAccessoryBehavior) protocol NSSliderAccessoryBehaviorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: behaviorWithHandler:
    - argLabels: handler
    - constructorTokens: 
    - unavailable: true
    - renamed: init(handler:)
    - message: Not available in Swift
  */
  @objc static func create(handler: JSValue) -> NSSliderAccessoryBehavior

  // Own Static Properties

  /**
    - jsName: automatic
    - name: automaticBehavior
    - argLabels: 
    - obsoleted: 3
    - renamed: automatic
  */
  @objc static var automatic: NSSliderAccessoryBehavior { @objc (automaticBehavior) get }

  /**
    - jsName: valueReset
    - name: valueResetBehavior
    - argLabels: 
    - obsoleted: 3
    - renamed: valueReset
  */
  @objc static var valueReset: NSSliderAccessoryBehavior { @objc (valueResetBehavior) get }

  /**
    - jsName: valueStep
    - name: valueStepBehavior
    - argLabels: 
    - obsoleted: 3
    - renamed: valueStep
  */
  @objc static var valueStep: NSSliderAccessoryBehavior { @objc (valueStepBehavior) get }

  // Instance Methods

  /**
    - jsName: handleAction
    - name: handleAction:
    - argLabels: 
    - constructorTokens: 
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
