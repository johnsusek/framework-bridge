import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUniqueIDSpecifier
  */

@objc(NSUniqueIDSpecifier) protocol NSUniqueIDSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithContainerClassDescription:containerSpecifier:key:uniqueID:
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, uniqueID: Any) -> Self

  // Own Instance Properties

  /**
    - Selector: uniqueID
  */
  @objc var uniqueID: Any { @objc get @objc (setUniqueID:) set }
}

extension NSUniqueIDSpecifier: NSUniqueIDSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, uniqueID: Any) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, uniqueID: uniqueID)
  }

}
