import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSIndexSpecifier
  */

@objc(NSIndexSpecifier) protocol NSIndexSpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithContainerClassDescription:containerSpecifier:key:index:
  */
  @objc static func createWithContainerClassDescription(_: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, index: Int) -> Self

  // Own Instance Properties

  /**
    - Selector: index
  */
  @objc var index: Int { @objc get @objc (setIndex:) set }
}

extension NSIndexSpecifier: NSIndexSpecifierExports {
  @objc public static func createWithContainerClassDescription(_ containerClassDescription: NSScriptClassDescription, containerSpecifier: NSScriptObjectSpecifier?, key: String, index: Int) -> Self {
    return self.init(containerClassDescription: containerClassDescription, containerSpecifier: containerSpecifier, key: key, index: index)
  }

}
