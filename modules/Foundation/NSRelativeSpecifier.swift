import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSRelativeSpecifier
  */

@objc(NSRelativeSpecifier) protocol NSRelativeSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithContainerClassDescription:containerSpecifier:key:relativePosition:baseSpecifier:
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, relativePosition: NSRelativeSpecifier.RelativePosition, baseSpecifier: NSScriptObjectSpecifier?) -> Self

  // Own Instance Properties

  /**
    - Selector: baseSpecifier
  */
  @objc var baseSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setBaseSpecifier:) set }

  /**
    - Selector: relativePosition
  */
  @objc var relativePosition: NSRelativeSpecifier.RelativePosition { @objc get @objc (setRelativePosition:) set }
}

extension NSRelativeSpecifier: NSRelativeSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, relativePosition: NSRelativeSpecifier.RelativePosition, baseSpecifier: NSScriptObjectSpecifier?) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, relativePosition: relativePosition, baseSpecifier: baseSpecifier)
  }

}
