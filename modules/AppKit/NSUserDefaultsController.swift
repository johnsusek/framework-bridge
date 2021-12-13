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
    - Selector: NSUserDefaultsController
  */

@objc(NSUserDefaultsController) protocol NSUserDefaultsControllerExports: JSExport, NSControllerExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedUserDefaultsController
  */
  @objc static var shared: NSUserDefaultsController { @objc (sharedUserDefaultsController) get }

  // Instance Methods

  /**
    - Selector: revert:
  */
  @objc func revert(_ p0: Any?)

  /**
    - Selector: revertToInitialValues:
  */
  @objc func revertToInitialValues(_ p0: Any?)

  /**
    - Selector: save:
  */
  @objc func save(_ p0: Any?)

  // Own Instance Properties

  /**
    - Selector: appliesImmediately
  */
  @objc var appliesImmediately: Bool { @objc get @objc (setAppliesImmediately:) set }

  /**
    - Selector: defaults
  */
  @objc var defaults: UserDefaults { @objc get }

  /**
    - Selector: hasUnappliedChanges
  */
  @objc var hasUnappliedChanges: Bool { @objc get }

  /**
    - Selector: initialValues
  */
  @objc var initialValues: [String: Any]? { @objc get @objc (setInitialValues:) set }

  /**
    - Selector: values
  */
  @objc var values: Any { @objc get }
}

extension NSUserDefaultsController: NSUserDefaultsControllerExports {
}
