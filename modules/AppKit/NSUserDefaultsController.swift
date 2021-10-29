import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSUserDefaultsController
    - name: NSUserDefaultsController
    - argLabels: 
  */

@objc(NSUserDefaultsController) protocol NSUserDefaultsControllerExports: JSExport, NSControllerExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedUserDefaultsController
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSUserDefaultsController { @objc (sharedUserDefaultsController) get }

  // Instance Methods

  /**
    - jsName: createWithDefaults
    - name: initWithDefaults:initialValues:
    - argLabels: initialValues
    - constructorTokens: defaults, initialValues
  */
  @objc static func createWithDefaults(_: UserDefaults?, initialValues: [String: Any]?) -> Self

  /**
    - jsName: revert
    - name: revert:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func revert(_: Any?)

  /**
    - jsName: revertToInitialValues
    - name: revertToInitialValues:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func revertToInitialValues(_: Any?)

  /**
    - jsName: save
    - name: save:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func save(_: Any?)

  // Own Instance Properties

  /**
    - jsName: appliesImmediately
    - name: appliesImmediately
    - argLabels: 
  */
  @objc var appliesImmediately: Bool { @objc get @objc (setAppliesImmediately:) set }

  /**
    - jsName: defaults
    - name: defaults
    - argLabels: 
  */
  @objc var defaults: UserDefaults { @objc get }

  /**
    - jsName: hasUnappliedChanges
    - name: hasUnappliedChanges
    - argLabels: 
  */
  @objc var hasUnappliedChanges: Bool { @objc get }

  /**
    - jsName: initialValues
    - name: initialValues
    - argLabels: 
  */
  @objc var initialValues: [String: Any]? { @objc get @objc (setInitialValues:) set }

  /**
    - jsName: values
    - name: values
    - argLabels: 
  */
  @objc var values: Any { @objc get }
}

extension NSUserDefaultsController: NSUserDefaultsControllerExports {
  @objc public static func createWithDefaults(_ defaults: UserDefaults?, initialValues: [String: Any]?) -> Self {
    return self.init(defaults: defaults, initialValues: initialValues)
  }

}
