import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSRangeSpecifier
  */

@objc(NSRangeSpecifier) protocol NSRangeSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithContainerClassDescription:containerSpecifier:key:startSpecifier:endSpecifier:
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, start: NSScriptObjectSpecifier?, end: NSScriptObjectSpecifier?) -> Self

  // Own Instance Properties

  /**
    - Selector: endSpecifier
  */
  @objc var endSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setEndSpecifier:) set }

  /**
    - Selector: startSpecifier
  */
  @objc var startSpecifier: NSScriptObjectSpecifier? { @objc get @objc (setStartSpecifier:) set }
}

extension NSRangeSpecifier: NSRangeSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, start: NSScriptObjectSpecifier?, end: NSScriptObjectSpecifier?) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, start: start, end: end)
  }

}
